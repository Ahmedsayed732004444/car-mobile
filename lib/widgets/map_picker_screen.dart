import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/core/utils/constants/colors_constants.dart';
import 'package:car_mediator_mobile/widgets/custom_button.dart';

class MapPickerScreen extends StatefulWidget {
  final LatLng? initialLocation;

  const MapPickerScreen({Key? key, this.initialLocation}) : super(key: key);

  @override
  State<MapPickerScreen> createState() => _MapPickerScreenState();
}

class _MapPickerScreenState extends State<MapPickerScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  final TextEditingController _searchController = TextEditingController();

  LatLng _currentPosition = const LatLng(24.7136, 46.6753); // Riyadh default
  String _currentAddress = "جاري تحديد الموقع...";
  bool _isLoading = true;
  bool _isSearching = false;
  List<Location> _searchResults = [];
  List<String> _searchResultNames = [];
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _setFallbackPosition();
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        _setFallbackPosition();
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      _setFallbackPosition();
      return;
    }

    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        _currentPosition = LatLng(position.latitude, position.longitude);
      });
      _updateAddress(_currentPosition);
    } catch (e) {
      _setFallbackPosition();
    }
  }

  void _setFallbackPosition() {
    setState(() {
      _currentPosition = widget.initialLocation ?? const LatLng(24.7136, 46.6753);
      _isLoading = false;
    });
    _updateAddress(_currentPosition);
  }

  Future<void> _updateAddress(LatLng position) async {
    setState(() => _isLoading = true);
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          position.latitude, position.longitude);
      if (placemarks.isNotEmpty) {
        Placemark place = placemarks.first;
        setState(() {
          _currentAddress =
              "${place.street ?? ''}, ${place.subLocality ?? ''}, ${place.locality ?? ''}, ${place.country ?? ''}"
                  .replaceAll(RegExp(r',\s*,'), ',')
                  .replaceAll(RegExp(r'^,\s*'), '')
                  .replaceAll(RegExp(r',\s*$'), '');
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _currentAddress = "موقع غير معروف";
        _isLoading = false;
      });
    }
  }

  // البحث عن مكان بالاسم
  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    if (query.trim().isEmpty) {
      setState(() {
        _searchResults = [];
        _searchResultNames = [];
        _isSearching = false;
      });
      return;
    }
    _debounce = Timer(const Duration(milliseconds: 700), () async {
      try {
        List<Location> locations = await locationFromAddress(query);
        List<Placemark> names = [];
        List<String> resultNames = [];
        for (var loc in locations.take(5)) {
          List<Placemark> pm = await placemarkFromCoordinates(loc.latitude, loc.longitude);
          if (pm.isNotEmpty) {
            Placemark p = pm.first;
            resultNames.add(
              "${p.street ?? ''}, ${p.locality ?? ''}, ${p.country ?? ''}"
                  .replaceAll(RegExp(r',\s*,'), ',')
                  .replaceAll(RegExp(r'^,\s*'), '')
                  .replaceAll(RegExp(r',\s*$'), ''),
            );
          } else {
            resultNames.add("${loc.latitude}, ${loc.longitude}");
          }
        }
        setState(() {
          _searchResults = locations.take(5).toList();
          _searchResultNames = resultNames;
          _isSearching = true;
        });
      } catch (e) {
        setState(() {
          _searchResults = [];
          _searchResultNames = [];
          _isSearching = false;
        });
      }
    });
  }

  // التنقل للمكان المختار من البحث
  Future<void> _goToLocation(Location loc, String name) async {
    final newPos = LatLng(loc.latitude, loc.longitude);
    final mapController = await _controller.future;
    await mapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: newPos, zoom: 15),
    ));
    setState(() {
      _currentPosition = newPos;
      _currentAddress = name;
      _searchResults = [];
      _searchResultNames = [];
      _isSearching = false;
      _searchController.clear();
    });
  }

  // الضغط على الخريطة لتحديد موقع
  Future<void> _onMapTap(LatLng position) async {
    final mapController = await _controller.future;
    await mapController.animateCamera(CameraUpdate.newLatLng(position));
    setState(() {
      _currentPosition = position;
      _searchResults = [];
      _searchResultNames = [];
      _isSearching = false;
    });
    _updateAddress(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('حدد موقع الاستلام', style: txtBold05),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          // الخريطة
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _currentPosition,
              zoom: 15,
            ),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            onCameraMove: (CameraPosition position) {
              _currentPosition = position.target;
            },
            onCameraIdle: () {
              if (!_isSearching) {
                _updateAddress(_currentPosition);
              }
            },
            onTap: _onMapTap,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),

          // أيقونة المنتصف
          const Padding(
            padding: EdgeInsets.only(bottom: 35.0),
            child: Icon(Icons.location_on, size: 50, color: AppColor.primaryColor),
          ),

          // حقل البحث في الأعلى
          Positioned(
            top: 12,
            left: 12,
            right: 12,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 3)),
                    ],
                  ),
                  child: TextField(
                    controller: _searchController,
                    onChanged: _onSearchChanged,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'ابحث عن مكان...',
                      hintStyle: const TextStyle(color: Colors.grey),
                      prefixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear, color: Colors.grey),
                              onPressed: () {
                                _searchController.clear();
                                setState(() {
                                  _searchResults = [];
                                  _searchResultNames = [];
                                  _isSearching = false;
                                });
                              },
                            )
                          : null,
                      suffixIcon: const Icon(Icons.search, color: AppColor.primaryColor),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    ),
                  ),
                ),

                // نتائج البحث
                if (_searchResults.isNotEmpty)
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 3)),
                      ],
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: _searchResults.length,
                      separatorBuilder: (_, __) => const Divider(height: 1),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(Icons.location_on_outlined, color: AppColor.primaryColor),
                          title: Text(
                            _searchResultNames[index],
                            textAlign: TextAlign.right,
                            style: const TextStyle(fontSize: 13),
                          ),
                          onTap: () => _goToLocation(_searchResults[index], _searchResultNames[index]),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),

          // كارد العنوان وزر التأكيد في الأسفل
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5)),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (_isLoading)
                        const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2, color: AppColor.primaryColor),
                        ),
                      if (_isLoading) const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          _isLoading ? "جاري تحديد الموقع..." : _currentAddress,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  CustomButton(
                    txtSize: 16.0,
                    label: 'تأكيد الموقع',
                    onTap: _isLoading
                        ? null
                        : () {
                            Navigator.pop(context, {
                              'lat': _currentPosition.latitude,
                              'lng': _currentPosition.longitude,
                              'address': _currentAddress,
                            });
                          },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

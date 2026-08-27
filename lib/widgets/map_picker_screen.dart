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
  LatLng _currentPosition = const LatLng(24.7136, 46.6753); // Default to Riyadh
  String _currentAddress = "جاري تحديد الموقع...";
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _setFallbackPosition();
      return;
    }

    permission = await Geolocator.checkPermission();
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
    setState(() {
      _isLoading = true;
    });
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          position.latitude, position.longitude);
      if (placemarks.isNotEmpty) {
        Placemark place = placemarks.first;
        setState(() {
          _currentAddress =
              "${place.street ?? ''}, ${place.subLocality ?? ''}, ${place.locality ?? ''}, ${place.country ?? ''}".replaceAll(RegExp(r',\s*,'), ',').replaceAll(RegExp(r'^,\s*'), '').replaceAll(RegExp(r',\s*$'), '');
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('حدد موقع الاستلام', style: txtBold05),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
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
              _updateAddress(_currentPosition);
            },
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
          // Center Marker
          const Padding(
            padding: EdgeInsets.only(bottom: 35.0),
            child: Icon(Icons.location_on, size: 50, color: AppColor.primaryColor),
          ),
          // Address Bottom Card
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
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    _isLoading ? "جاري تحديد الموقع..." : _currentAddress,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
          )
        ],
      ),
    );
  }
}

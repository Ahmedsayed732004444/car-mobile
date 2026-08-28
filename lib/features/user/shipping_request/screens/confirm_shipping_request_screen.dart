import 'package:car_mediator_mobile/core/helpers/helpers.dart';
import 'package:car_mediator_mobile/core/utils/connection_utils.dart';
import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/providers/orders/create_order_provider.dart';
import '../../../../../core/styles/styles.dart';
import '../../../../../core/utils/constants/colors_constants.dart';
import '../../../../../core/utils/constants/constants.dart';
import '../../../../../core/utils/dialogUtils.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../widgets/card_container_widget.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_loading.dart';
import '../../../../core/localization/app_language_provider.dart';
import '../../../../core/providers/cache_provider.dart';
import '../../../../core/providers/shipping_provider.dart';
import '../../../../core/utils/form_validator.dart';
import '../../../../models/city_model.dart';
import '../../../../widgets/components.dart';
import '../../../../widgets/custom_container_listtile_widget.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../orders/widgets/confirm_pledge_dialog.dart';
import '../../../../core/services/shared/customer_shipping_info_storage.dart';
import '../../../../../widgets/map_picker_screen.dart';

class ConfirmShippingRequestScreen extends StatefulWidget {
  const ConfirmShippingRequestScreen({super.key, required this.requestId, required this.responseId, required this.vendorId});
  final int requestId;
  final int responseId;
  final int vendorId;

  @override
  State<ConfirmShippingRequestScreen> createState() => _ConfirmShippingRequestScreenState();
}

class _ConfirmShippingRequestScreenState extends State<ConfirmShippingRequestScreen> {

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();
  
  double? _lat;
  double? _lng;

  @override
  void initState() {
    super.initState();
    _loadSavedInfo();
  }

  Future<void> _loadSavedInfo() async {
    final saved = await CustomerShippingInfoStorage.load();
    if (saved != null) {
      setState(() {
        _nameController.text = saved['name'] ?? '';
        _phoneController.text = saved['phone'] ?? '';
        _addressController.text = saved['address'] ?? '';
        _lat = (saved['lat'] as num?)?.toDouble();
        _lng = (saved['lng'] as num?)?.toDouble();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _addressController.dispose();
    _phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<CreateOrderProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: ArrowBackWidget(myContext: context),
        title: Text('شحن الطلب : ${widget.requestId}', style: txtBold04,),
      ),
        body: Form(
          key: _formKey,
            child: ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.all(paddingConst),
          children: [
            const SizedBox(height: 20),
            CardContainerWidget(
              children: [
                const SizedBox(height: 10),
                Text(
                  'بيانات الشحن',
                  textAlign: TextAlign.center,
                  style: txtBold04,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: 'اسم المستخدم',
                  hint: 'أدخل اسمك',
                  controller: _nameController,
                  validator: (value) => FormValidatorUtils.textValidator(value,
                      isRequired: true),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MapPickerScreen(),
                      ),
                    );
                    if (result != null) {
                      setState(() {
                        _lat = result['lat'];
                        _lng = result['lng'];
                        _addressController.text = result['address'];
                      });
                    }
                  },
                  child: AbsorbPointer(
                    child: CustomTextField(
                      label: 'الموقع على الخريطة',
                      hint: 'اختر موقعك',
                      controller: _addressController,
                      maxLines: null,
                      validator: (value) => FormValidatorUtils.textValidator(value,
                          isRequired: true, maxLength: 255),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label:'رقم الجوال',
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  validator: (value) => FormValidatorUtils.phoneValidator(value,
                    isRequired: true,),
                ),
                const SizedBox(height: 20),
              ],
            )
          ],
        )),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: CustomButton(
              label: 'تأكيد الشحن',
              txtSize: SizeConfig.widthResponsive(0.04),
              loading: _provider.isLoading,
              onTap: ()  {
                Helper.dismissKeyBoard();
                if (_formKey.currentState!.validate()){
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (dialogContext) => ConfirmPledgeDialog(
                      onConfirm: () async {
                        Helper.dismissKeyBoard();
                        if(!await ConnectionUtils.hasInternetConnection()){
                          DialogUtils().showNoInternetDialog(context);
                          return;
                        }

                        // حفظ البيانات
                        CustomerShippingInfoStorage.save(
                          name: _nameController.text.trim(),
                          phone: _phoneController.text.trim(),
                          address: _addressController.text.trim(),
                          lat: _lat,
                          lng: _lng,
                        );
                        
                        String mapUrl = _lat != null && _lng != null 
                            ? ' - https://www.google.com/maps/search/?api=1&query=$_lat,$_lng'
                            : '';

                        await _provider.ConfirmShippingRequest(context,body: {
                          'requestId' : widget.requestId,
                          'responseId': widget.responseId,
                          'vendorId' : widget.vendorId,
                          'idNumberUser' : '0000000000', // Dummy 
                          'cityOriginDimensions': _nameController.text.trim(), // Send name here to avoid modifying backend schema
                          'addressOriginDimensions' : _addressController.text.trim() + mapUrl, // Combine address and URL
                          'phoneOriginDimensions' : _phoneController.text.trim(),
                        });
                      },
                    ),
                  );
                }
              },
            ),
          ),
        ));
  }
}

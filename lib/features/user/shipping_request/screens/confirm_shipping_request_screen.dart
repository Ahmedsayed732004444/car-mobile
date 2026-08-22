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
  final idNumberController = TextEditingController();
  final addressController = TextEditingController();
  final _phoneController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    idNumberController.dispose();
    addressController.dispose();
    _phoneController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<CreateOrderProvider>(context);
    final _isArabic = context.read<AppLanguageProvider>().isArabic;
    final _cacheProvider = context.read<CacheProvider>();
    final _shippingProvider = Provider.of<ShippingProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: ArrowBackWidget(myContext: context),
        title: Text('شحن الطلب : ' + '${widget.requestId}', style: txtBold04,),
      ),
        body: Form(
          key: _formKey,
            child: ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.all(paddingConst),
          children: [

            SizedBox(
              height: 20,
            ),
            CardContainerWidget(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'بيانات الشحن',
                  textAlign: TextAlign.center,
                  style: txtBold04,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  label: 'رقم الهوية',
                  hint: 'أدخل رقم هويتك',
                  controller: idNumberController,
                  keyboardType: TextInputType.number,
                  validator: (value) => FormValidatorUtils.numberValidator(value,
                      isRequired: true),
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownSearch<CityModel>(
                  dropdownDecoratorProps: customDropdownDecoratorProps(
                      label: 'مدينتك', hint: 'إختر مدينتك'),
                  popupProps: popupPropsBottomSheet<CityModel>(
                    titleBottomSheet: 'مدينتك',
                    itemBuilder: (BuildContext context, CityModel item,
                        bool isSelected) {
                      return CustomContainerListTileWidget(
                        title:
                        _isArabic ? item.cityNameAr : item.cityNameEn,
                      );
                    },
                  ),
                  items: _cacheProvider.citiesList,
                  selectedItem: _shippingProvider.myCitySelectedModel,
                  itemAsString: (CityModel? u) =>
                  (_isArabic ? u?.cityNameAr : u?.cityNameEn) ?? '',
                  validator: FormValidatorUtils.objectValidator,
                  onChanged: (CityModel? selection) =>
                      _shippingProvider.selectedMyCity(selection),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  label: 'الحي - الشارع',
                  hint: 'الحي - الشارع',
                  controller: addressController,
                  validator: (value) => FormValidatorUtils.textValidator(value,
                      isRequired: true,maxLength: 255),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  label:'رقم الجوال',
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  validator: (value) => FormValidatorUtils.phoneValidator(value,
                    isRequired: true,),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        )),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0,
            ),
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
                        await _provider.ConfirmShippingRequest(context,body: {
                          'requestId' : widget.requestId,
                          'responseId': widget.responseId,
                          'vendorId' : widget.vendorId,
                          'idNumberUser' : idNumberController.text.trim().toString(),
                          'cityOriginDimensions': _shippingProvider.myCitySelectedModel?.cityNameEn ?? '',
                          'addressOriginDimensions' : addressController.text.trim().toString(),
                          'phoneOriginDimensions' : _phoneController.text.trim().toString(),
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


import 'dart:convert';

import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
import 'package:car_mediator_mobile/core/utils/connection_utils.dart';
import 'package:car_mediator_mobile/core/utils/dialogUtils.dart';
import 'package:car_mediator_mobile/widgets/dropdown_search/categories_dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/helpers/helpers.dart';
import '../../../../core/providers/vendors/register_vendor_provider.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/date_parser_utils.dart';
import '../../../../core/utils/form_validator.dart';
import '../../../../core/utils/image_picker_bottom_sheet_utils.dart';
import '../../../../core/utils/permissions_utils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../models/category_model.dart';
import '../../../../models/city_model.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/dropdown_search/cities_dropdown_search.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/dropdown_search/city_dropdown_search.dart';
import '../../../../widgets/icon_comp.dart';
import '../../../../widgets/images/add_image_widget.dart';
import '../widgets/app_bar_register_widget.dart';

class RegisterVendorScreen extends StatefulWidget {
  const RegisterVendorScreen({super.key,});

  @override
  State<RegisterVendorScreen> createState() => _RegisterVendorScreenState();
}

class _RegisterVendorScreenState extends State<RegisterVendorScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameCompanyArController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final commercialRecordController = TextEditingController();
  final dateExpireCommercialRecordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameCompanyArController.dispose();
    phoneNumberController.dispose();
    commercialRecordController.dispose();
    dateExpireCommercialRecordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final _provider = Provider.of<RegisterVendorProvider>(context);

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const AppBarRegisterWidget(),
        body: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                const SizedBox(height: 10,),
                 Row(
                  children: [
                    const IconComponent(icon: Icon(Icons.business_sharp, color: AppColor.primaryColor,),),
                    const SizedBox(width: 10,),
                    Expanded(child: CustomTextField(
                      label: 'إسم الشركة',
                      hint: 'إسم الشركة',
                      controller: nameCompanyArController,
                      validator: (value) => FormValidatorUtils.textValidator(value, isRequired: true),
                      fillColor: AppColor.secondaryColor,
                      filled: true,
                    ),)
                  ],
                ),
               
                const SizedBox(height: 15,),
                Row(
                  children: [
                    const IconComponent(icon: Icon(Icons.phone_android, color: AppColor.primaryColor,),),
                    const SizedBox(width: 10,),
                    Expanded(child: CustomTextField(
                      label: 'رقم الجوال',
                      hint: '512345678',
                      controller: phoneNumberController,
                      validator: (value) => FormValidatorUtils.phoneValidator(value, isRequired: true),
                      fillColor: AppColor.secondaryColor,
                      filled: true,
                    ),)
                  ],
                ),

                const SizedBox(height: 15,),
                Row(
                  children: [
                    const IconComponent(icon: Icon(Icons.assignment, color: AppColor.primaryColor,),),
                    const SizedBox(width: 10,),
                    Expanded(child: CustomTextField(
                      label: 'رقم السجل التجاري',
                      hint: 'رقم السجل التجاري',
                      controller: commercialRecordController,
                      validator: (value) => FormValidatorUtils.textValidator(value, isRequired: true),
                      fillColor: AppColor.secondaryColor,
                      filled: true,
                    ),)
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    const IconComponent(icon: Icon(Icons.date_range, color: AppColor.primaryColor,),),
                    const SizedBox(width: 10,),
                    Expanded(child: CustomTextField(
                      label: 'تاريخ إنتهاء السجل التجاري',
                      hint: 'تاريخ إنتهاء السجل التجاري',
                      readOnly: true,
                      controller: dateExpireCommercialRecordController,
                      fillColor: AppColor.secondaryColor,
                      filled: true,
                      validator: (value) => FormValidatorUtils.textValidator(
                        value,
                        isRequired: true,
                      ),
                      onTap: () async {
                        dateExpireCommercialRecordController.text = await DateParserUtils.getDatePicker(context);
                      },
                    ),)
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    const IconComponent(icon: Icon(Icons.location_on, color: AppColor.primaryColor,),),
                    const SizedBox(width: 10,),
                    Expanded(child: CityDropdownSearch(
                      filled: true,
                      fillColor: AppColor.secondaryColor,
                      selectedCityModel: _provider.selectedCity,
                      onChanged: (CityModel? selectedItem) {
                        _provider.changeCity(selectedItem);
                      },
                    ),)
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    const IconComponent(icon: Icon(Icons.miscellaneous_services, color: AppColor.primaryColor,),),
                    const SizedBox(width: 10,),
                    Expanded(child: CategoriesDropdownSearch(
                      filled: true,
                      fillColor: AppColor.secondaryColor,
                      selectedCategories: _provider.selectedCategoriesList,
                      onChanged: (List<CategoryModel>? selectedItems) {
                        _provider.changeCategories(selectedItems);
                      },
                    ),)
                  ],
                ),

                const SizedBox(height: 20,),
                Text('صورة السجل التجاري', style: TextStyle(color: AppColor.primaryColor, fontSize: SizeConfig.widthResponsive(0.04), fontWeight: FontWeight.w500),),
                const SizedBox(height: 10,),
                AddImageWidget(
                  height: SizeConfig.heightResponsive(0.20),
                  file: _provider.selectedCommercialRecordImage,
                  onTap: () async {
                    if(await PermissionsUtils.checkCameraAndGalleryPermission(context)){
                      ImagePickerBottomSheet.show(context, (picked) {
                        if (picked != null) {
                          _provider.changeSelectedCommercialRecordImage(picked);
                        }
                      });
                    }
                  },
                    deleteImage : () {
                      _provider.changeSelectedCommercialRecordImage(null);
                    }
                ),
                SizedBox(height: SizeConfig.heightResponsive(0.04),),
                CustomButton(
                  primaryColor:AppColor.primaryColor,
                  txtSize: SizeConfig.widthResponsive(0.05),
                  loading: _provider.isLoading,
                  onTap: () async {
                    await _execute(context, _provider);
                  },
                  label: 'تقديم الطلب',
                ),
              ],
            )),
        );
  }

  Future<void> _execute(BuildContext context, RegisterVendorProvider myProvider)async {
    Helper.dismissKeyBoard();

    bool myValid = _formKey.currentState!.validate();
    if (myValid) {

      if(myProvider.selectedCategoriesList == null || myProvider.selectedCategoriesList!.isEmpty){
        ToastHelper.showInfo('الرجاء إختيار الخدمات');
        return;
      }

      if(myProvider.selectedCommercialRecordImage == null || myProvider.selectedCommercialRecordImage!.path.isEmpty){
        ToastHelper.showInfo('الرجاء إختيار صورة السجل التجاري');
        return;
      }

      if(! await ConnectionUtils.hasInternetConnection()){
        DialogUtils().showNoInternetDialog(context);
        return;
      }

      String phone = phoneNumberController.text.trim();
      if (!phone.startsWith('0')) {
        phone = '0$phone';
      }

      await myProvider.registerVendor(context,{
        'companyNameAr' : nameCompanyArController.text,
        'phoneNumber' : phone,
        'commercialRecord' : commercialRecordController.text,
        'dateExpireCommercialRecord' : dateExpireCommercialRecordController.text,
        'categoriesIds' : jsonEncode(myProvider.selectedCategoriesList?.map((e) => e.id).toList()),
        'cityId' : myProvider.selectedCity?.id.toString() ?? '0',
      });
    }
  }
}

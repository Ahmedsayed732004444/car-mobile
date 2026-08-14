
import 'package:flutter/material.dart';

import '../../../../core/helpers/helpers.dart';
import '../../../../core/helpers/toast_helper.dart';
import '../../../../core/providers/vendors/profile_vendor_provider.dart';
import '../../../../core/utils/connection_utils.dart';
import '../../../../core/utils/constants/assets_path.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/date_parser_utils.dart';
import '../../../../core/utils/dialogUtils.dart';
import '../../../../core/utils/form_validator.dart';
import '../../../../core/utils/image_picker_bottom_sheet_utils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/container_fields_widget.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/icon_comp.dart';
import '../../../../widgets/images/custom_image.dart';

class BuildManageProfileWidget extends StatelessWidget {
  const BuildManageProfileWidget({super.key, required this.formKey , required this.provider, required this.nameCompanyArController, required this.phoneContactController, required this.commercialRecordController, required this.dateExpireCommercialRecordController, required this.descriptionController});
  final GlobalKey<FormState> formKey;
  final ProfileVendorProvider provider;
  final TextEditingController nameCompanyArController;
  final TextEditingController phoneContactController ;
  final TextEditingController commercialRecordController;
  final TextEditingController dateExpireCommercialRecordController;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerFieldsWidget(
            title: 'إدارة ملف الشركة',
            children: [
              CustomImageWidget(
                fileImage: provider.logo,
                urlImage: provider.profileVendorModel?.logo,
                width: SizeConfig.widthResponsive(0.25),
                height: SizeConfig.widthResponsive(0.25),
                radius: 60,
                assetDefaultPath: AssetsPath.user_image,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthResponsive(0.20),),
                child: TextButton(
                  onPressed: (){
                    ImagePickerBottomSheet.show(context, (picked) {
                      if (picked != null) {
                        provider.changeLogo(picked);
                      }
                    });
                  },
                  child:  Text('+  إضافة شعار الشركة', style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.w600),),
                ),
              ),
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
                    label: 'رقم التواصل (إختياري)',
                    hint: '05xxxxxxxx',
                    controller: phoneContactController,
                    validator: (value) => FormValidatorUtils.phoneValidator(value),
                    fillColor: AppColor.secondaryColor,
                    filled: true,
                  ),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: provider.isHidePhoneContact,
                    onChanged: (value) {
                      provider.changeIsHidePhoneContact(value ?? false);
                    },
                  ),
                  const SizedBox(width: 4),
                  const Text('إخفاء رقم التواصل عن العملاء'),
                ],
              ),

              const SizedBox(height: 10,),
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
                  const IconComponent(icon: Icon(Icons.description, color: AppColor.primaryColor,),),
                  const SizedBox(width: 10,),
                  Expanded(child: CustomTextField(
                    label: 'الوصف',
                    hint: 'نبذة مختصرة عن الشركة',
                    controller: descriptionController,
                    validator: (value) => FormValidatorUtils.textValidator(value),
                    fillColor: AppColor.secondaryColor,
                    filled: true,
                    maxLines: 5,
                    maxLength: 1000,
                  ),)
                ],
              ),
              // const SizedBox(height: 20,),
              // Text('صورة السجل التجاري', style: TextStyle(color: AppColor.primaryColor, fontSize: SizeConfig.widthResponsive(0.04), fontWeight: FontWeight.w500),),
              // const SizedBox(height: 10,),
              // AddImageWidget(
              //     height: SizeConfig.heightResponsive(0.20),
              //     file: _provider.selectedCommercialRecordImage,
              //     onTap: () async {
              //       ImagePickerBottomSheet.show(context, (picked) {
              //         if (picked != null) {
              //           _provider.changeSelectedCommercialRecordImage(picked);
              //         }
              //       });
              //     },
              //     deleteImage : () {
              //       _provider.changeSelectedCommercialRecordImage(null);
              //     }
              // ),
              SizedBox(height: SizeConfig.heightResponsive(0.01),),
              Padding(padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthResponsive(0.20),),
                child: CustomButton(
                  primaryColor:AppColor.primaryColor,
                  txtSize: SizeConfig.widthResponsive(0.04),
                  loading: provider.isLoading,
                  onTap: () async {
                    await _execute(context);
                  },
                  label: 'تعديل',
                ),)
            ]
        ),
      ],
    );
  }

Future<void> _execute(BuildContext context)async {
  Helper.dismissKeyBoard();

  bool myValid = formKey.currentState!.validate();
  if (myValid) {

    if(! await ConnectionUtils.hasInternetConnection()){
      DialogUtils().showNoInternetDialog(context);
      return;
    }

    await provider.updateVendorProfile(context,{
      'companyNameAr' : nameCompanyArController.text,
      'description' : descriptionController.text,
      'phoneContact' : phoneContactController.text,
      'isHidePhoneContact' : provider.isHidePhoneContact ? '1' : '0',
      'commercialRecord' : commercialRecordController.text,
      'dateExpireCommercialRecord' : dateExpireCommercialRecordController.text,
    });
  }
}
}


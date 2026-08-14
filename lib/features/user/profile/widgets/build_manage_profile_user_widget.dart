
import 'package:flutter/material.dart';

import '../../../../core/helpers/helpers.dart';
import '../../../../core/providers/users/profile_user_provider.dart';
import '../../../../core/utils/connection_utils.dart';
import '../../../../core/utils/constants/assets_path.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/dialogUtils.dart';
import '../../../../core/utils/form_validator.dart';
import '../../../../core/utils/image_picker_bottom_sheet_utils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/container_fields_widget.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/icon_comp.dart';
import '../../../../widgets/images/custom_image.dart';

class BuildManageProfileUserWidget extends StatelessWidget {
  const BuildManageProfileUserWidget({super.key, required this.formKey , required this.provider, required this.nameController});
  final GlobalKey<FormState> formKey;
  final ProfileUserProvider provider;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerFieldsWidget(
            title: 'إدارة الملف الشخصي',
            children: [
              CustomImageWidget(
                fileImage: provider.logo,
                urlImage: provider.profileUserModel?.logo,
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
                  child:  Text('+  إضافة الصورة الشخصية', style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.w600),),
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const IconComponent(icon: Icon(Icons.business_sharp, color: AppColor.primaryColor,),),
                  const SizedBox(width: 10,),
                  Expanded(child: CustomTextField(
                    label: 'الإسم',
                    hint: 'الإسم',
                    controller: nameController,
                    validator: (value) => FormValidatorUtils.textValidator(value, isRequired: true),
                    fillColor: AppColor.secondaryColor,
                    filled: true,
                  ),)
                ],
              ),
              const SizedBox(height: 15,),
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

    await provider.updateUserProfile(context,{
      'name' : nameController.text,
    });
  }
}
}


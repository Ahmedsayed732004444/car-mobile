
import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/helpers.dart';
import '../../../../core/providers/vendors/profile_vendor_provider.dart';
import '../../../../core/utils/connection_utils.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/dialogUtils.dart';
import '../../../../core/utils/image_picker_bottom_sheet_utils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/container_fields_widget.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/images/add_image_widget.dart';

class UpdateCommercialNumberImageWidget extends StatelessWidget {
  const UpdateCommercialNumberImageWidget({super.key, required this.provider});
  final ProfileVendorProvider provider;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ContainerFieldsWidget(
            title: 'رفع صورة السجل التجاري',
            children: [
              const SizedBox(height: 20,),
              Text('صورة السجل التجاري', style: TextStyle(color: AppColor.primaryColor, fontSize: SizeConfig.widthResponsive(0.04), fontWeight: FontWeight.w500),),
              const SizedBox(height: 10,),
              AddImageWidget(
                  height: SizeConfig.heightResponsive(0.20),
                  file: provider.commercialRecordFile,
                  onTap: () async {
                    ImagePickerBottomSheet.show(context, (picked) {
                      if (picked != null) {
                        provider.changeCommercialRecordFile(picked);
                      }
                    });
                  },
                  deleteImage : () {
                    provider.changeCommercialRecordFile(null);
                  }
              ),
              SizedBox(height: SizeConfig.heightResponsive(0.02),),
              Padding(padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthResponsive(0.20),),
                child: CustomButton(
                  primaryColor:AppColor.primaryColor,
                  txtSize: SizeConfig.widthResponsive(0.04),
                  loading: provider.isLoadingUploadCommercialRecord,
                  onTap: () async {
                    await _execute(context);
                  },
                  label: 'رفع',
                ),)
            ]
        ),
      ],
    );
  }

  Future<void> _execute(BuildContext context)async {
    Helper.dismissKeyBoard();

    if(! await ConnectionUtils.hasInternetConnection()){
      DialogUtils().showNoInternetDialog(context);
      return;
    }

    if(provider.commercialRecordFile == null) {
      ToastHelper.showWarning('الرجاء إختيار صورة السجل التجاري');
      return;
    }

    await provider.uploadCommercialRecordImage(context,{});

  }
}

import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/core/utils/constants/assets_path.dart';
import 'package:car_mediator_mobile/core/utils/size_config.dart';
import 'package:car_mediator_mobile/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/launcher_url_utils.dart';
import '../../../../models/response_request_model.dart';
import '../../../../widgets/container_fields_widget.dart';
import '../../../../widgets/images/custom_image.dart';

class BuildUserDetailsResponseWidget extends StatelessWidget {
  const BuildUserDetailsResponseWidget({super.key, required this.model});
  final ResponseRequestModel? model;

  @override
  Widget build(BuildContext context) {
    return ContainerFieldsWidget(title: 'بيانات العميل', children: [
      Row(
        children: [
          CustomImageWidget(
            urlImage: model?.userLogo,
            width: SizeConfig.widthResponsive(0.20),
            height: SizeConfig.widthResponsive(0.20),
            assetDefaultPath: AssetsPath.user_image,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '${model?.userName ?? ''}',
                style: txtBold04,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(flex:1, child: CustomButton(
                    label: 'إتصال',
                    onTap: () async {
                      await LauncherUrlUtils.makePhoneCall(model?.userPhone ?? '');
                    },
                    txtSize: SizeConfig.widthResponsive(0.04),
                    icon: const Icon(Icons.phone,color: Colors.white),
                  ),),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(flex:1, child: CustomButton(
                    label: 'دردشة',
                    onTap: (){

                    },
                    txtSize: SizeConfig.widthResponsive(0.04),
                    primaryColor: Colors.transparent,
                    borderColor: AppColor.primaryColor,
                    textColor: AppColor.primaryColor,
                    bgOverlayColor: AppColor.primaryColor.withOpacity(0.2),
                    icon: const Icon(Icons.chat_outlined,color: AppColor.primaryColor),
                  ),),
                ],
              )
            ],
          ))
        ],
      ),
    ]);
  }
}

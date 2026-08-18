import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/core/utils/constants/assets_path.dart';
import 'package:car_mediator_mobile/core/utils/date_parser_utils.dart';
import 'package:car_mediator_mobile/core/utils/size_config.dart';
import 'package:car_mediator_mobile/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/conversation_provider.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/launcher_url_utils.dart';
import '../../../../models/response_request_model.dart';
import '../../../../widgets/container_fields_widget.dart';
import '../../../../widgets/images/custom_image.dart';

class BuildVendorDetailsResponseWidget extends StatelessWidget {
  const BuildVendorDetailsResponseWidget({super.key, required this.model, required this.responseId});
  final ResponseRequestModel? model;
  final int responseId;

  @override
  Widget build(BuildContext context) {
    return ContainerFieldsWidget(title: 'بيانات الشركة', children: [
      Row(
        children: [
          CustomImageWidget(
            urlImage: model?.vendorLogo,
            width: SizeConfig.widthResponsive(0.20),
            height: SizeConfig.widthResponsive(0.20),
            radius: 60,
            assetDefaultPath: AssetsPath.logo,
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
                    '${model?.companyNameAr ?? ''}',
                    style: txtBold04,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('عضو منذ : ', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
                      const SizedBox(width: 5,),
                      Expanded(child: Text(DateParserUtils.getDateFromString(model?.vendorMemberSince ?? ''), style: txtMedium04,),)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      if(!(model?.isHidePhoneContact == true))
                      Expanded(flex:1, child: CustomButton(
                        label: 'إتصال',
                        onTap: () async {
                          await LauncherUrlUtils.makePhoneCall(model?.phoneContact ?? '');
                        },
                        txtSize: SizeConfig.widthResponsive(0.04),
                        icon: const Icon(Icons.phone,color: Colors.white),
                      ),),
                      if(!(model?.isHidePhoneContact == true))
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(flex:1, child: Consumer<ConversationProvider>(
                        builder: (context, provider, child) {
                          return CustomButton(
                            label: 'دردشة',
                            onTap: (){
                              provider.createConversation(context, body: {
                                'vendorId': model?.vendorId ?? 0,
                                'requestId': model?.requestId ?? 0,
                                'responseId': responseId ?? 0,
                              },
                                requestId: model?.requestId ?? 0,
                                responseId: responseId ?? 0,
                                vendorId: model?.vendorId ?? 0,
                                receiverName: model?.companyNameAr ?? '',
                                receiverLogo:  model?.vendorLogo ?? '',
                              );
                            },
                            loading: provider.isLoading,
                            txtSize: SizeConfig.widthResponsive(0.04),
                            primaryColor: Colors.transparent,
                            borderColor: AppColor.primaryColor,
                            textColor: AppColor.primaryColor,
                            bgOverlayColor: AppColor.primaryColor.withOpacity(0.2),
                            icon: const Icon(Icons.chat_outlined,color: AppColor.primaryColor),
                          );
                        }
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

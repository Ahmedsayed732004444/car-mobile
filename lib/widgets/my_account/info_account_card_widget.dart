import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/providers/auth_provider.dart';
import '../../core/helpers/helpers.dart';
import '../../core/utils/constants/assets_path.dart';
import '../../core/utils/constants/colors_constants.dart';
import '../../core/utils/dialogUtils.dart';
import '../../core/utils/size_config.dart';
import '../../features/user/profile/screens/profile_user_screen.dart';
import '../../models/user_model.dart';
import '../components.dart';
import '../custom_button.dart';
import '../images/custom_image.dart';


class InfoAccountCardWidget extends StatelessWidget {
  const InfoAccountCardWidget({Key? key, required this.width, required this.height, this.model,}) : super(key: key);
  final double width;
  final double height;
  final UserModel? model;

  @override
  Widget build(BuildContext context) {
    final _authProvider = Provider.of<AuthProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      decoration: whiteBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          // const SizedBox(height: 16,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // CircularImageComponent(size: width * 0.20, url: model?.logo,),
              CustomImageWidget(
                urlImage: _authProvider.currentUseModel?.logo,
                width: SizeConfig.widthResponsive(0.20),
                height: SizeConfig.widthResponsive(0.20),
                assetDefaultPath: AssetsPath.user_image,
              ),
              const SizedBox(width: 8,),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(Helper.formatUserName(_authProvider.currentUseModel?.name ?? 'مستخدم مجهول'), overflow:TextOverflow.ellipsis ,style: txtMedium04),
                  // if(model?.created_at != null && model?.created_at != '')
                  // Padding(padding: const EdgeInsets.only(top: 5),child: Text('${'عضو منذ'} ${DateParser.getDateFromString(model?.created_at ?? '')}',overflow:TextOverflow.ellipsis ,style: grey035W500(width)),),
                  CustomButton(
                    label: 'عرض وتعديل الملف الشخصي',
                    paddingHorizontal: 0,
                    alignmentText: Alignment.centerRight,
                    primaryColor: Colors.transparent,
                    bgOverlayColor: AppColor.secondaryColor,
                    isUnderLineText: true,
                    txtSize: width * 0.04,
                    textColor: Colors.blue,
                    onTap: (){
                      if(!_authProvider.isLoggedIn){
                        DialogUtils().showLoginDialog(context);
                      }else{
                        navigationPush(context, ProfileVendorScreen());
                      }
                    },
                  ),
                ],
              )),
            ],
          ),
          // if(_authProvider.isLogIn)
          // Padding(
          //   padding: const EdgeInsets.only(top: 10),
          // child: Row(
          //   children: [
          //     if(ValidationUtils.isNotNullOrEmpty(model?.accountNumber))
          //       Expanded(flex:1,child: CustomButton(
          //         label: '${'رقم الحساب'}: ${model?.accountNumber}',
          //         paddingHorizontal: 5,
          //         primaryColor: AppColor.secondaryColor,
          //         bgOverlayColor: AppColor.primaryColor.withOpacity(0.2),
          //         txtSize: width * 0.03,
          //         textColor: AppColor.blackColor,
          //         icon: const Icon(Icons.copy, color: AppColor.primaryColor, size: 16,),
          //         onTap: () async {
          //           await Utils.copyToClipboard(context, model?.accountNumber.toString() ?? '');
          //         },
          //       )),
          //     const SizedBox(width: 8,),
          //
          //
          //   ],
          // ),)

        ],
      ),);
  }

  bool _isVersionOlder(String current, String latest) {
    List<String> currentParts = current.split('.');
    List<String> latestParts = latest.split('.');

    for (int i = 0; i < latestParts.length; i++) {
      int currentPart = int.parse(currentParts[i]);
      int latestPart = int.parse(latestParts[i]);

      if (currentPart < latestPart) {
        return true;
      } else if (currentPart > latestPart) {
        return false;
      }
    }
    return false;
  }
}


import 'package:car_mediator_mobile/core/utils/constants/extensions.dart';
import 'package:flutter/material.dart';

import '../../features/shared/auth/login_screen.dart';
import '../../widgets/components.dart';
import '../../widgets/customButton2.dart';
import 'constants/assets_path.dart';
import 'constants/colors_constants.dart';

class DialogUtils{
  DialogUtils._();
  static final DialogUtils _instance = DialogUtils._();
  factory DialogUtils() => _instance;

  Future<void> showOptionsDialog( BuildContext context,{required String title,
    required String option1,required String option2,
    required GestureTapCallback onTap1,
    required GestureTapCallback onTap2}) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  GestureDetector(
                    onTap:onTap1,
                    child: Text(option1),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  GestureDetector(
                    child: Text(option2),
                    onTap:onTap2,
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  Future showAdvancedDialog(BuildContext context,{ String? title , description ='' ,
    String? iconPath, textCancel='خروج' ,String? textOk, Color? iconColor,
    required GestureTapCallback onTabCancel, final GestureTapCallback? onTabOk ,Color colorCancelButton = Colors.redAccent, }) async {
    return showDialog(context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.only(left: 16,top: 16, right: 16,bottom: 16),
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(iconPath ?? '',width: 70,height: 70,color: iconColor,),
                    const SizedBox(height: 10.0,),
                    title != null ? Text(title ,textAlign: TextAlign.center,style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w600),) : const SizedBox() ,
                    const SizedBox(height: 8.0,),
                    Text(description,style:  TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                    description !=null || description !='' ? const SizedBox(height: 5,) : const SizedBox(height: 5,),
                    const SizedBox(height: 8.0,),
                    textOk == null ? CustomButton2(
                      onPressed:onTabCancel ,
                      width: double.infinity,
                      margin:const EdgeInsets.only(left: 10.0 ,right: 10.0),
                      text: textCancel,
                    ) :Row(
                      children: [
                        Expanded(flex: 1,
                          child: CustomButton2(
                            onPressed:onTabOk ?? (){},
                            margin:const EdgeInsets.only(left: 5.0 ,right: 5.0),
                            text: textOk,
                          ),
                        ),
                        Expanded(flex: 1,
                          child: CustomButton2(
                            onPressed:onTabCancel ,
                            margin:const EdgeInsets.only(left: 5.0 ,right: 5.0),
                            bgColor: colorCancelButton,
                            borderColor: colorCancelButton,
                            text: textCancel,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );

        }
    );
  }

  // Future uploadDialog(BuildContext context ,{required VoidCallback getImageFromGallery ,required VoidCallback getImageFromCamera}){
  //   return showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return CustomAlertDialog(
  //         height: 200,
  //         widget: Padding(
  //           padding: const EdgeInsets.all(10.0),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               ListTile(
  //                 leading: const Icon(
  //                   Icons.add_photo_alternate_outlined,
  //                 ),
  //                 title: TextButton(
  //                   child:  Text(
  //                     myLocalizations(context,'gallery'),
  //                     style: TextStyle(
  //                       fontSize: 20,
  //                       color: AppColor.PrimaryColor,
  //                     ),
  //                   ),
  //                   onPressed: () {
  //                     getImageFromGallery();
  //                     Navigator.pop(context);
  //                   },
  //                 ),
  //               ),
  //               ListTile(
  //                 leading:
  //                 const Icon(Icons.add_a_photo_outlined),
  //                 title: TextButton(
  //                   child:  Text(
  //                     myLocalizations(context,'camera'),
  //                     style: TextStyle(
  //                       fontSize: 20,
  //                       color: AppColor.PrimaryColor,
  //                     ),
  //                   ),
  //                   onPressed: () {
  //                     getImageFromCamera();
  //                     Navigator.pop(context);
  //                   },
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  void showNoInternetDialog(BuildContext context){
    WidgetsBinding.instance.addPostFrameCallback((_){
      showAdvancedDialog(context,
          description: context.loc.noInternetConnection,
          textCancel: 'خروج',
          iconPath: AssetsPath.icon_error,
          onTabCancel: (){
            Navigator.of(context).pop();
          });
    });
  }

  void showLoginDialog(BuildContext context){
    DialogUtils().showAdvancedDialog(context,description: 'الرجاء تسجيل الدخول',
        iconPath: AssetsPath.login,
        iconColor: AppColor.primaryColor,
        textCancel: 'تسجيل الدخول',
        onTabCancel: (){
          Navigator.of(context).pop();
          navigationPush(context, LoginScreen());
        });
  }

  void showErrorDialog(BuildContext context,{String? title , String? description}){
    DialogUtils().showAdvancedDialog(context,title: 'خطاء' ?? '',
        description: description,
        iconPath: AssetsPath.icon_error,
        onTabCancel: (){
          Navigator.of(context).pop();
        });
  }

  void showSuccessDialog(BuildContext context,{String? title , String? description}){
    DialogUtils().showAdvancedDialog(context,title: title,
        description: description,
        iconPath: AssetsPath.icon_success,
        onTabCancel: (){
          Navigator.of(context).pop();
        });
  }

  void showConfirmDialog(BuildContext context,{required String? message, required final VoidCallback confirm}){
    DialogUtils().showAdvancedDialog(context,
      description: message,
      textCancel: 'خروج',
      textOk: 'موافق',
      iconPath: AssetsPath.icon_info,
      onTabCancel: (){
        Navigator.of(context).pop();
      },
      onTabOk: () async {
        Navigator.of(context).pop();
        confirm();
      },
    );
  }

// dynamic confirmAddAdsDialog({
//   required BuildContext context,
//   VoidCallback? onSave,
//   TextEditingController? textController,
// }) {
//   return showDialog(
//     context: context,
//     useSafeArea: false,
//     barrierDismissible: false,
//     builder: (context) {
//       return SafeArea(
//         child: StatefulBuilder(
//           builder: (BuildContext context,
//               void Function(void Function()) setState) {
//             return Dialog(
//               insetPadding:
//               const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               shape: RoundedRectangleBorder(
//                   borderRadius: AppTheme.defaultRadius),
//               backgroundColor: AppTheme.whiteColor,
//               child: Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const SizedBox(height: 10),
//                     Image.asset(
//                       'assets/images/logo1.png',
//                       fit: BoxFit.cover,
//                       width: 80,
//                     ),
//                     const SizedBox(height: 16),
//                     Text(
//                       "إستعادة كلمة السر",
//                       style: AppTheme.body1.copyWith(
//                         color: AppTheme.primaryColor,
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         // CircleAvatar(
//                         //   backgroundColor: Colors.white,
//                         //   child: SvgPicture.asset(
//                         //     'assets/icons/success.svg',
//                         //   ),
//                         // ),
//                         // const SizedBox(width: 16),
//                         Expanded(
//                           child: Center(
//                             child: Text(
//                               "تم ارسال كلمة سر مؤقتة للبريد الألكتروني الخاص بك. يرجى مراجعة ذلك.",
//                               style: AppTheme.body1,
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     Row(
//                       children: [
//                         Expanded(
//                             child: AppButton(
//                               text: "حسناً",
//                               onPressed: () {
//                                 Get.back();
//                               },
//                             )),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       );
//     },
//   );
// }

// void showLoginDialog(BuildContext context){
//   Navigator.of(context).push(new MaterialPageRoute<Null>(
//       builder: (BuildContext context) {
//         return LoginScreen();
//       },
//       fullscreenDialog: true,
//   ));
// }
}
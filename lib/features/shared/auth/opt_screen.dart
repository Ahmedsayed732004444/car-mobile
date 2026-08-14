
import 'package:car_mediator_mobile/core/utils/constants/extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/data_sources/remote/firebase/fcm_service.dart';
import '../../../core/helpers/helpers.dart';
import '../../../core/helpers/toast_helper.dart';
import '../../../core/providers/auth_provider.dart';
import '../../../core/utils/connection_utils.dart';
import '../../../core/utils/constants/assets_path.dart';
import '../../../core/utils/constants/colors_constants.dart';
import '../../../core/utils/form_validator.dart';
import '../../../core/utils/size_config.dart';
import '../../../core/utils/utils.dart';
import '../../../widgets/custom_button.dart';

class OptScreen extends StatefulWidget {
  const OptScreen({Key? key, required this.phoneNumber}) : super(key: key);
  final String phoneNumber;

  @override
  State<OptScreen> createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {

  final _keyForm = GlobalKey<FormState>();
  final codeController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    codeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Form(
          key: _keyForm,
          child: Stack(
            children: [
              Image.asset('assets/images/background-top.png',color: AppColor.primaryColor),
              Positioned(child: Image.asset('assets/images/background-bottom.png',color: AppColor.primaryColor),),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        padding: EdgeInsets.only(top: SizeConfig.heightResponsive(0.05),right: 20,),
                        onPressed: (){
                          Navigator.of(context).pop();
                        },icon: const Icon(Icons.arrow_back ,color: AppColor.primaryColor,)),
                  ),

                  SizedBox(height: SizeConfig.heightResponsive(0.10),),
                  Image.asset(AssetsPath.logo,height: SizeConfig.heightResponsive(0.20), width: SizeConfig.heightResponsive(0.20),fit: BoxFit.fill),
                  SizedBox(height: SizeConfig.heightResponsive(0.05),),
                  Text(context.loc.appName,style: TextStyle(color:AppColor.primaryColor ,fontSize:SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600,)),
                  const SizedBox(height: 20,),
                  Directionality(textDirection: TextDirection.ltr,
                    child: Padding(
                      padding : const EdgeInsets.symmetric(horizontal: 50,),
                      child: TextFormField(
                        controller: codeController,
                        validator: (value) => FormValidatorUtils.numberValidator(value, isRequired: true),
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                          fontSize: SizeConfig.widthResponsive(0.05),
                          fontWeight: FontWeight.w600,
                        ),
                        onChanged: (value){
                          if(value.toString().trim().length == 5){
                            Helper.dismissKeyBoard();
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          counterText: '',
                          hintText: '- - - - -',
                          hintStyle: TextStyle(fontSize: SizeConfig.widthResponsive(0.05),fontWeight: FontWeight.bold,color: AppColor.greyShade3),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(12)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color:AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    ),),

                  Padding(padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 16,),
                    child: CustomButton(
                      txtSize: SizeConfig.widthResponsive(0.05),
                      loading: _authProvider.isLoading,
                      onTap: ()  async {
                        await _execute(context, _authProvider);
                      },
                      label: "تحقق"
                    ),
                  ),
                  Text("ألم يصلك الرمز ؟"),
                  const SizedBox(height: 10,),
                  SizedBox(
                    width: SizeConfig.widthResponsive(0.40) ,
                    child: TextButton(onPressed: () async {
                      await _resend(context, _authProvider);
                    },
                      child: Text("إعادة الإرسال",style: TextStyle(color:AppColor.primaryColor, decoration: TextDecoration.underline ,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w500,),),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future _execute(BuildContext context, AuthProvider myProvider) async {
    Helper.dismissKeyBoard();
    bool myValid = _keyForm.currentState!.validate();
    if (myValid) {
      if (!await ConnectionUtils.hasInternetConnection()) {
        ToastHelper.showError(context.loc.noInternetConnection);
        return;
      }

      await myProvider.loginWithOtp(context, body: {
        'otp': int.parse(codeController.text.toString().trim()).toString(),
        'phoneNumber': widget.phoneNumber,
        'fcmToken': await FcmService.getDeviceTokenFCM() ?? '',
        'apiKey': await Utils.getApiKey(),
      });
    }
  }

  Future<void> _resend(BuildContext context, AuthProvider myProvider) async {
    Helper.dismissKeyBoard();

      if (!await ConnectionUtils.hasInternetConnection()) {
        ToastHelper.showError(context.loc.noInternetConnection);
        return;
      }

      await myProvider.register(context, body: {
        'phoneNumber': widget.phoneNumber,
      });
  }

}



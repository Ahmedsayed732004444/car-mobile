import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/core/utils/constants/extensions.dart';
import 'package:car_mediator_mobile/core/utils/form_validator.dart';
import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/helpers/helpers.dart';
import '../../../core/helpers/toast_helper.dart';
import '../../../core/providers/auth_provider.dart';
import '../../../core/utils/connection_utils.dart';
import '../../../core/utils/constants/assets_path.dart';
import '../../../core/utils/constants/colors_constants.dart';
import '../../../core/utils/size_config.dart';
import '../../../widgets/custom_button.dart';
import '../../vendor/register/screens/register_vendor_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _keyForm = GlobalKey<FormState>();
  final phoneNumberController = TextEditingController();

  @override
  void initState() {
    // FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final _authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Form(
          key: _keyForm,
          child: Stack(
            children: [
              Image.asset('assets/images/background-top.png',
                  color: AppColor.primaryColor),
              Positioned(
                child: Image.asset('assets/images/background-bottom.png',
                    color: AppColor.primaryColor),
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        padding:  EdgeInsets.only(
                          top: SizeConfig.heightResponsive(0.05),
                          right: 20,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: AppColor.primaryColor,
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(context.loc.welcomeToApp, style: txtBold04),
                  SizedBox(
                    height: SizeConfig.heightResponsive(0.06),
                  ),
                  Image.asset(AssetsPath.logo,
                      height: SizeConfig.heightResponsive(0.20),
                      width: SizeConfig.heightResponsive(0.20),
                      fit: BoxFit.fill),
                  SizedBox(
                    height: SizeConfig.heightResponsive(0.06),
                  ),
                  Text('رقم الجوال',
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: SizeConfig.widthResponsive(0.04),
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("سيتم إرسال كود التفعيل عبر رسالة نصية",
                      style: TextStyle(
                        color: AppColor.textColor,
                        fontSize: SizeConfig.widthResponsive(0.04),
                        fontWeight: FontWeight.w500,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: AppColor.primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Text(
                            '+966',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              color: AppColor.blackColor,
                              fontSize: SizeConfig.widthResponsive(0.04),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Image.asset(
                            AssetsPath.saudia_flag,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 0.5,
                            height: SizeConfig.heightResponsive(0.05),
                            color: AppColor.primaryColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: TextFormField(
                            controller: phoneNumberController,
                            validator: (value) =>
                                FormValidatorUtils.phoneValidator(value, isRequired: true),
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.phone,
                            style: TextStyle(
                              fontSize: SizeConfig.widthResponsive(0.05),
                              fontWeight: FontWeight.w600,
                            ),
                                onChanged: (value){
                                  final val = value.toString().trim();
                                  if(val.length == 10 || (val.startsWith('5') && val.length == 9)){
                                    Helper.dismissKeyBoard();
                                  }
                                },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(5),
                              counterText: '',
                              hintText: '512345678',
                              hintStyle: TextStyle(
                                  fontSize: 15, color: AppColor.greyShade3),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 16,
                    ),
                    child: CustomButton(
                      primaryColor:AppColor.primaryColor,
                      txtSize: SizeConfig.widthResponsive(0.05),
                      loading: _authProvider.isLoading,
                      onTap: () async {
                         await _execute(context, _authProvider);
                      },
                      label: 'إرسال',
                    ),
                  ),

                  SizedBox(height: SizeConfig.heightResponsive(0.10),),
                  TextButton(onPressed: () async {
                    navigationPush(context, const RegisterVendorScreen());
                  },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      backgroundColor: AppColor.primaryColor.withOpacity(0.05),
                      side: const BorderSide(
                        color: AppColor.primaryColor,
                        width: 0.5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text('طلب الإنظمام كشركة',
                      style: TextStyle(color:AppColor.primaryColor ,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600,),),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _execute(BuildContext context, AuthProvider myProvider) async {
    Helper.dismissKeyBoard();
    bool myValid = _keyForm.currentState!.validate();
    if (myValid) {
      if (!await ConnectionUtils.hasInternetConnection()) {
        ToastHelper.showError(context.loc.noInternetConnection);
        return;
      }

      String phone = phoneNumberController.text.toString().trim();
      if (!phone.startsWith('0')) {
        phone = '0$phone';
      }

      await myProvider.register(context, body: {
        'phoneNumber': phone,
      });
    }
  }
}

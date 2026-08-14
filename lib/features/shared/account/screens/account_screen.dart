
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/auth_provider.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/dialogUtils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/utils/utils.dart';
import '../../../../widgets/components.dart';
import '../../../../widgets/item_settings_comp.dart';
import '../../../../widgets/my_account/info_account_card_widget.dart';
import '../../auth/login_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {


  @override
  Widget build(BuildContext context) {
    final _authProvider = context.read<AuthProvider>();
    return  ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      children: [
        const SizedBox(height: 15,),
        InfoAccountCardWidget(width: SizeConfig.width,height:SizeConfig.height,),
        const SizedBox(height: 5,),
        // InfoListingsCardWidget(width: _myWidth, height: _myHeight,),
        // const SizedBox(height: 5,),
        // InfoWalletCardWidget(width: _myWidth,),
        const SizedBox(height: 20,),

         if(!_authProvider.isLoggedIn)
          ItemSettingsComponent(
            marginTop: 10,
            width: SizeConfig.width,
            label:  'تسجيل الدخول',
            icon: Icon(Icons.login, color: AppColor.primaryColor,),
            onTap: (){
              navigationPush(context, LoginScreen());
            },
          ),

        // ItemSettingsComponent(
        //     marginTop: 10,
        //     width: _myWidth,
        //     label: 'تغيير اللغة',
        //     subtitle: 'العربية',
        //     icon: const Icon(Icons.language, color: AppColor.primaryColor,),
        //     onTap: (){
        //
        //     },
        //   ),
        ItemSettingsComponent(
          marginTop: 10,
          width: SizeConfig.width,
          label: 'تواصل معنا',
          icon: const Icon(Icons.add_ic_call, color: AppColor.primaryColor,),
          onTap: () async {
            // await Provider.of<GeneralProvider>(context,listen: false).getContactUsTypes();
            // navigationPush(context, ContactUsScreen());
          },
        ),
        // ItemSettingsComponent(
        //     marginTop: 10,
        //     width: _myWidth,
        //     label: 'المساعدة',
        //     icon: const Icon(Icons.help, color: AppColor.primaryColor,),
        //     onTap: (){
        //
        //     },
        //   ),
        ItemSettingsComponent(
          marginTop: 10,
          width: SizeConfig.width,
          label: 'سياسة الخصوصية',
          icon: const Icon(Icons.privacy_tip, color: AppColor.primaryColor,),
          onTap: () async {
            // if(await Helper.checkInternetConnection()){
            //   final _controller = WebViewController()
            //     ..setJavaScriptMode(JavaScriptMode.unrestricted)
            //     ..setNavigationDelegate(
            //       NavigationDelegate(
            //         onProgress: (int progress) {
            //           // print the loading progress to the console
            //           // you can use this value to show a progress bar if you want
            //           debugPrint("Loading: $progress%");
            //         },
            //         onPageStarted: (String url) {},
            //         onPageFinished: (String url) {},
            //         onWebResourceError: (WebResourceError error) {},
            //         onNavigationRequest: (NavigationRequest request) {
            //           return NavigationDecision.navigate;
            //         },
            //       ),
            //     )
            //     ..loadRequest(Uri.parse(ApiPath.privacy_policy));
            //   navigationPush(context, WebViewScreen(title: 'عن التطبيق', controller: _controller,));
            // }else{
            //   DialogUtils().showNoInternetDialog(context);
            // }
          },
        ),
        // ItemSettingsComponent(
        //   marginTop: 10,
        //   width: _myWidth,
        //   label: 'إتفاقية الإستخدام',
        //   icon: const Icon(Icons.sticky_note_2_outlined, color: AppColor.primaryColor,),
        //   onTap: (){
        //
        //   },
        // ),
        ItemSettingsComponent(
          marginTop: 10,
          width: SizeConfig.width,
          label: 'عن التطبيق',
          icon: const Icon(Icons.info, color: AppColor.primaryColor,),
          onTap: () async {
            // if(await Helper.checkInternetConnection()){
            //   final _controller = WebViewController()
            //     ..setJavaScriptMode(JavaScriptMode.unrestricted)
            //     ..setNavigationDelegate(
            //       NavigationDelegate(
            //         onProgress: (int progress) {
            //           // print the loading progress to the console
            //           // you can use this value to show a progress bar if you want
            //           debugPrint("Loading: $progress%");
            //         },
            //         onPageStarted: (String url) {},
            //         onPageFinished: (String url) {},
            //         onWebResourceError: (WebResourceError error) {},
            //         onNavigationRequest: (NavigationRequest request) {
            //           return NavigationDecision.navigate;
            //         },
            //       ),
            //     )
            //     ..loadRequest(Uri.parse(ApiPath.about_us));
            //   navigationPush(context, WebViewScreen(title: 'عن التطبيق', controller: _controller,));
            // }else{
            //   DialogUtils().showNoInternetDialog(context);
            // }
          },
        ),
        ItemSettingsComponent(
          marginTop: 10,
          width: SizeConfig.width,
          label: 'شارك التطبيق',
          icon: const Icon(Icons.share, color: AppColor.primaryColor,),
          onTap: () async {
            await Utils.shareAppLink(context);
          },
        ),
        ItemSettingsComponent(
          marginTop: 10,
          width: SizeConfig.width,
          label: 'تقييم التطبيق',
          icon: const Icon(Icons.star_rate, color: AppColor.primaryColor,),
          onTap: () async {
            // await LauncherUrlUtils.rateApp(context);
          },
        ),
        // if(_authProvider.isLogIn)
        //   ItemSettingsComponent(
        //     marginTop: 10,
        //     width: _myWidth,
        //     label: 'إلغاء حسابي',
        //     icon: const Icon(Icons.no_accounts_outlined, color: AppColor.primaryColor,),
        //     onTap: (){
        //       navigationPush(context, DeleteMyAccountScreen());
        //     },
        //   ),
        if(_authProvider.isLoggedIn)
          ItemSettingsComponent(
            marginTop: 10,
            width: SizeConfig.width,
            label: 'تسجيل الخروج',
            icon: const Icon(Icons.logout, color: AppColor.primaryColor,),
            onTap: (){
              DialogUtils().showConfirmDialog(context, message: 'هل تريد تسجيل الخروج', confirm: () async => await _authProvider.logout(context));
            },
          ),
        const SizedBox(height: 20,),
      ],
    );
  }


}



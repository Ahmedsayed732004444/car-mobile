
import 'dart:async';

import 'package:car_mediator_mobile/core/data_sources/remote/api_service.dart';
import 'package:car_mediator_mobile/core/providers/auth_provider.dart';
import 'package:car_mediator_mobile/core/services/shared/auth_service.dart';
import 'package:car_mediator_mobile/core/services/shared/common_service.dart';
import 'package:car_mediator_mobile/features/shared/chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'core/data_sources/local/cache_helper.dart';
import 'core/data_sources/local/secure_storage.dart';
import 'core/data_sources/remote/firebase/fcm_service.dart';
import 'core/localization/app_language_provider.dart';
import 'core/providers/bottom_navigation_bar_provider.dart';
import 'core/providers/cache_provider.dart';
import 'core/providers/common_provider.dart';
import 'core/providers/conversation_provider.dart';
import 'core/providers/dynamic_form_provider.dart';
import 'core/providers/home/home_user_provider.dart';
import 'core/providers/notification_badge_provider.dart';
import 'core/providers/notification_provider.dart';
import 'core/providers/orders/create_order_provider.dart';
import 'core/providers/shipping_provider.dart';
import 'core/providers/users/my_request_user_provider.dart';
import 'core/providers/users/profile_user_provider.dart';
import 'core/providers/users/responses_my_request_provider.dart';
import 'core/providers/vendors/app_commission_provider.dart';
import 'core/providers/vendors/new_request_vendor_provider.dart';
import 'core/providers/vendors/profile_vendor_provider.dart';
import 'core/providers/vendors/register_vendor_provider.dart';
import 'core/providers/vendors/response_request_provider.dart';
import 'core/providers/vendors/specialty_vendor_provider.dart';
import 'core/services/shared/cache_service.dart';
import 'core/services/shared/conversation_service.dart';
import 'core/services/shared/notification_service.dart';
import 'core/services/shared/shipping_service.dart';
import 'core/services/user/my_requests/my_request_user_service.dart';
import 'core/services/user/profile_user_service.dart';
import 'core/services/user/requests/request_service.dart';
import 'core/services/vendor/new_request_service.dart';
import 'core/services/vendor/profile_vendor_service.dart';
import 'core/services/vendor/response_request_service.dart';
import 'core/services/vendor/specialty_vendor_service.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/custom_time_ago.dart';
import 'features/shared/cache/init_cache.dart';
import 'l10n/app_localizations.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

// Use GlobalKey to access BuildContext safely outside the widget tree
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    await CacheHelper.init();
    AppLanguageProvider _appLanguage = AppLanguageProvider();

    await Firebase.initializeApp();
    await Future.wait([
      _appLanguage.fetchLocale(),
      initializeDateFormatting(),
    ]);

    // final String? token = await SecureStorage.getToken();
    // print(token);
    final apiService = ApiService();
    await FcmService.initializeFirebase();
    timeago.setLocaleMessages('ar', CustomTimeAgo());

    // final channel = WebSocketChannel.connect(
    //   Uri.parse('ws://192.168.1.34:8080/app/abc123xyz'),
    // );
    //
    // channel.sink.add(
    //     jsonEncode({
    //       "event": "pusher:subscribe",
    //       "data": {
    //         "channel": "chat"
    //       }
    //     })
    // );
    //
    // channel.stream.listen((data) {
    //   final decoded = jsonDecode(data);
    //   print("New message channel.stream.listen ----------------");
    //
    //   if (decoded["event"] == "message.sent") {
    //     print("New message: ${decoded['data']}");
    //   }
    // });

    // إرسال رسالة عبر API Laravel
    // Future sendMessage(String user, String message) async {
    // await http.post(
    // Uri.parse('http://127.0.0.1:8000/api/message'),
    // body: {
    // 'user': user,
    // 'message': message,
    // },
    // );
    // }

    String? userRole = await SecureStorage.getUserRole();
    runApp( MyApp(appLanguage: _appLanguage, apiService: apiService, userRole: userRole,));

  }, (error, stack) {
    // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    print('-------Error  From Inside Framework---runZonedGuarded-----');
    print('---Error----${error}');
    print('---StackTrack----${stack}');
    print('-------------------------------------------');
  }
  );
}

class MyApp extends StatelessWidget {
  final AppLanguageProvider appLanguage;
  final ApiService apiService;
  final String? userRole;
  const MyApp({super.key, required this.appLanguage, required this.apiService, this.userRole});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppLanguageProvider>(
      create: (_) => appLanguage,
      child: Consumer<AppLanguageProvider>(builder: (context, model, child) {
        return MultiProvider(providers:[
           ChangeNotifierProvider<BottomNavigationBarProvider>(create: (_) => BottomNavigationBarProvider(),),
           ChangeNotifierProvider<CacheProvider>(create: (_) => CacheProvider(CacheService(apiService)),),
           ChangeNotifierProvider<HomeUserProvider>(create: (_) => HomeUserProvider(),),
           ChangeNotifierProvider<CreateOrderProvider>(create: (_) => CreateOrderProvider(RequestService(apiService)),),
           ChangeNotifierProvider<DynamicFormProvider>(create: (_) => DynamicFormProvider(),),
          ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider(AuthService(apiService)),),
          ChangeNotifierProvider<RegisterVendorProvider>(create: (_) => RegisterVendorProvider(apiService),),
          ChangeNotifierProvider<NewRequestVendorProvider>(create: (_) => NewRequestVendorProvider(NewRequestService(apiService)),),
          ChangeNotifierProvider<ResponseRequestProvider>(create: (_) => ResponseRequestProvider(ResponseRequestService(apiService)),),
          ChangeNotifierProvider<SpecialtyVendorProvider>(create: (_) => SpecialtyVendorProvider(SpecialtyVendorService(apiService)),),
          ChangeNotifierProvider<ProfileVendorProvider>(create: (_) => ProfileVendorProvider(ProfileVendorService(apiService)),),
          ChangeNotifierProvider<MyRequestUserProvider>(create: (_) => MyRequestUserProvider(MyRequestsUserService(apiService)),),
          ChangeNotifierProvider<ResponsesMyRequestProvider>(create: (_) => ResponsesMyRequestProvider(MyRequestsUserService(apiService)),),
          ChangeNotifierProvider<CommonProvider>(create: (_) => CommonProvider(CommonService(apiService)),),
          ChangeNotifierProvider<ConversationProvider>(create: (_) => ConversationProvider(ConversationService(apiService)),),
          ChangeNotifierProvider<NotificationProvider>(create: (_) => NotificationProvider(NotificationService(apiService)),),
          ChangeNotifierProvider<NotificationBadgeProvider>(create: (_) => NotificationBadgeProvider(NotificationService(apiService)),),
          ChangeNotifierProvider<ProfileUserProvider>(create: (_) => ProfileUserProvider(ProfileUserService(apiService)),),
          ChangeNotifierProvider<AppCommissionProvider>(create: (_) => AppCommissionProvider(apiService),),
          ChangeNotifierProvider<ShippingProvider>(create: (_) => ShippingProvider(ShippingService(apiService)),),
        ] ,
          child:GestureDetector(
            onTap: (){
              // FocusManager.instance.primaryFocus?.unfocus();
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child:MaterialApp(
              navigatorKey: navigatorKey,
              title: 'وسيط سيارات',
              debugShowCheckedModeBanner: false,
              locale: model.appLocal,
              supportedLocales: const [
                Locale('ar', ''),
                Locale('en', 'US'),
              ],
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              builder: (context, child) {
                return Directionality(
                  textDirection: model.textDirection,
                  child: MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: child!,
                  ),
                );
              },
              theme: AppTheme.lightTheme,
              home:  InitCache(userRole: userRole,),
              //home:  ChatScreen(conversationId: 1, token: '7|28H5dtm3zAchciFPbjwJNzSTg9ofG8REAuC8Fghl2980be1d', myUserId: 2),
            ) ,
          ) ,);
      }),
    );
  }
}

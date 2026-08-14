import 'dart:async';
import 'dart:developer';

import 'package:car_mediator_mobile/core/helpers/helpers.dart';
import 'package:car_mediator_mobile/core/utils/connection_utils.dart';
import 'package:car_mediator_mobile/core/utils/context_utils.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../../../features/shared/notifications/screens/notifications_screen.dart';
import '../../../../widgets/components.dart';
import '../../local/secure_storage.dart';


class FcmService {
  static FirebaseMessaging? _firebaseMessaging;
  static FirebaseMessaging get firebaseMessaging => FcmService._firebaseMessaging ?? FirebaseMessaging.instance;

  static Future<void> initializeFirebase() async {

    try{
      FcmService._firebaseMessaging = FirebaseMessaging.instance;
      await FcmService.initializeLocalNotifications();
      await FcmService.onBackgroundMsg();
      FcmService.subscribeToTopic('all');
    }catch(e){
      print(e);
    }
  }

  static Future<String?> getDeviceTokenFCM() async {
    try {
      String? _token = await FcmService.firebaseMessaging.getToken();
      Helper.logDebug('FCMServices------token----- $_token ');
      return _token;
    } catch (e) {
      Helper.logDebug("❌ Error getting FCM token: $e");
      return null;
    }
  }


  static void subscribeToTopic(String topic) async {
    if(await ConnectionUtils.hasInternetConnection())
      await FcmService.firebaseMessaging.subscribeToTopic(topic);
  }

  static FlutterLocalNotificationsPlugin localNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static Future<void> initializeLocalNotifications() async {
    final InitializationSettings _initSettings = InitializationSettings(
        android: AndroidInitializationSettings("@mipmap/ic_launcher"),
        iOS: DarwinInitializationSettings()
    );
    /// on did receive notification response = for when app is opened via notification while in foreground on android
    await FcmService.localNotificationsPlugin.initialize(_initSettings, onDidReceiveNotificationResponse: FcmService.onTapNotification);
    /// need this for ios foregournd notification
    ///Configure notification permissions
    ///IOS
    await FcmService.firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
    /// for android
    NotificationSettings settings = await FcmService.firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }
  }

  static NotificationDetails platformChannelSpecifics = NotificationDetails(
    android: AndroidNotificationDetails(
      "high_importance_channel", "High Importance Notifications", priority: Priority.max, importance: Importance.max,
    ),

  );

  static Future<void> backgroundHandler(RemoteMessage message) async {
    if (message.notification != null){
      log("--------FirebaseMessaging.onBackgroundMessage.listen----------");
      log('title---- ${message.notification?.title}');
      log('body---- ${message.notification?.body}');
      SecureStorage.addNotificationCount();
    }

    // if(message.data != null){
    //   if(message.data['type_notification'] == 'all'){
    //     print('type_notification---- ${message.data['type_notification']}');
    //     print('title---- ${message.notification?.title}');
    //     print('body---- ${message.notification?.body}');
    //     GlobalNavigator.dialogAdvancedGlobal(title: message.notification?.title ?? '',
    //         description: message.notification?.body ?? 'مرحباً',
    //         iconPath: AssetsPath.notification,
    //         onTabCancel: (){
    //         });
    //   }
    //
    // }

  }

  static Future<void> onTapNotification(NotificationResponse? response) async {
    if (response?.payload == null) return;
    print('---onTapNotification--payload-------${response?.payload }---------');
    final _cxt = ContextUtils.globalContext;
    if(_cxt != null)
      navigationPush(_cxt, NotificationsScreen());
  }

  static Future<void> initialMessage() async {
    //When App is Terminated
    // when you click on notification app open from terminated state and
    // you can get notification data in this method
    var message =   await FirebaseMessaging.instance.getInitialMessage() ;
    if (message != null){
      print("----FirebaseMessaging----initalMessage------${message.toString}----");
      final _cxt = ContextUtils.globalContext;
      if(_cxt != null)
        navigationPush(_cxt, NotificationsScreen());
    }
  }

  static Future<void> onMessage_OpenedApp() async {
    FirebaseMessaging.onMessageOpenedApp.listen((message) async {
      print("--------FirebaseMessaging.onMessageOpenedApp.listen----------");
    });
  }

  static Future<void> onBackgroundMsg() async {
    //background message listener
    FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  }

  // for receiving message when app is in foreground : for android
  static Future<void> onMessage() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      // if this is available when Platform.isIOS, you'll receive the notification twice
      print("message recieved----onMessage--foreground messages-----");
      if(message.notification != null){
        print('title---- ${message.notification?.title}');
        print('body---- ${message.notification?.body}');

        SecureStorage.addNotificationCount();

        await FcmService.localNotificationsPlugin.show(
          0, message.notification!.title, message.notification!.body, FcmService.platformChannelSpecifics,
          payload: message.data.toString(),
        );
      }
    });
  }

}


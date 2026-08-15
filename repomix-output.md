This file is a merged representation of a subset of the codebase, containing specifically included files and files not matching ignore patterns, combined into a single document by Repomix.
The content has been processed where line numbers have been added.

# File Summary

## Purpose
This file contains a packed representation of a subset of the repository's contents that is considered the most important context.
It is designed to be easily consumable by AI systems for analysis, code review,
or other automated processes.

## File Format
The content is organized as follows:
1. This summary section
2. Repository information
3. Directory structure
4. Repository files (if enabled)
5. Multiple file entries, each consisting of:
  a. A header with the file path (## File: path/to/file)
  b. The full contents of the file in a code block

## Usage Guidelines
- This file should be treated as read-only. Any changes should be made to the
  original repository files, not this packed version.
- When processing this file, use the file path to distinguish
  between different files in the repository.
- Be aware that this file may contain sensitive information. Handle it with
  the same level of security as you would the original repository.
- Pay special attention to the Repository Description. These contain important context and guidelines specific to this project.

## Notes
- Some files may have been excluded based on .gitignore rules and Repomix's configuration
- Binary files are not included in this packed representation. Please refer to the Repository Structure section for a complete list of file paths, including binary files
- Only files matching these patterns are included: **/*notification*, **/*badge*, **/*fcm*, **/home*.dart
- Files matching these patterns are excluded: .dart_tool/**, .idea/**, .vscode/**, build/**, android/**, ios/**, web/**, linux/**, windows/**, macos/**, *.lock, *.log, .git/**
- Files matching patterns in .gitignore are excluded
- Files matching default ignore patterns are excluded
- Line numbers have been added to the beginning of each line
- Files are sorted by Git change count (files with more changes are at the bottom)

# User Provided Header
Car Mediator Mobile App Codebase Summary

# Directory Structure
```
assets/images/notification.png
lib/core/data_sources/remote/firebase/fcm_service.dart
lib/core/providers/home/home_user_provider.dart
lib/core/providers/notification_badge_provider.dart
lib/core/providers/notification_provider.dart
lib/core/services/shared/notification_service.dart
lib/features/shared/notifications/screens/notifications_screen.dart
lib/features/user/home/screens/home_user_page.dart
lib/features/user/home/screens/home_user_screen.dart
lib/features/user/home/widgets/home_app_bar_widget.dart
lib/features/vendor/home/screens/home_vendor_page.dart
lib/models/notification_model.dart
lib/widgets/section_badge_widget.dart
```

# Files

## File: lib/core/providers/home/home_user_provider.dart
```dart
 1: import 'package:flutter/material.dart';
 2: 
 3: class HomeUserProvider extends ChangeNotifier {
 4: 
 5:   int indicatorAdsBannerIndex = 0;
 6:   int expandedIndexFAQItem = -1;
 7: 
 8:   void changeBannerIndex(int i){
 9:     indicatorAdsBannerIndex = i;
10:     notifyListeners();
11:   }
12: 
13:   void changeFAQItemIndex(int i){
14:     expandedIndexFAQItem = i;
15:     notifyListeners();
16:   }
17: }
```

## File: lib/core/providers/notification_provider.dart
```dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../../models/notification_model.dart';
 4: import '../helpers/helpers.dart';
 5: import '../helpers/toast_helper.dart';
 6: import '../services/shared/notification_service.dart';
 7: 
 8: class NotificationProvider extends ChangeNotifier {
 9:   final NotificationService _service;
10: 
11:   List<NotificationModel> notificationModelList = [];
12: 
13:   int lastMessageId = 0;
14: 
15:   NotificationProvider(this._service);
16: 
17:   bool _isLoading = false;
18:   bool get isLoading => _isLoading;
19: 
20:   void _toggleLoading() {
21:     _isLoading = !_isLoading;
22:     notifyListeners();
23:   }
24: 
25:   int currentPage = 1;
26:   int lastPage = 1;
27: 
28:   bool get hasMore => currentPage <= lastPage;
29: 
30:   void resetPagination(){
31:     notificationModelList.clear();
32:     currentPage = 1;
33:     lastPage = 1;
34:   }
35: 
36:   Future<void> getNotifications({  bool loadMore = false}) async {
37:     _toggleLoading();
38:     try {
39:       final response = await _service.getNotifications(page: currentPage);
40:       if (response != null) {
41: 
42:         if (loadMore) {
43:           notificationModelList.addAll(response.result?.notificationModelList ?? []);
44:         } else {
45:           notificationModelList = response.result?.notificationModelList ?? [];
46:         }
47: 
48:         currentPage = (response.result?.currentPage ?? 1) + 1;
49:         lastPage = (response.result?.lastPage ?? 1);
50:       }
51:     } catch (e) {
52:       Helper.logDebug('$runtimeType ---> Failed getNotifications: ${e}');
53:       ToastHelper.showError(e.toString());
54:     } finally {
55:       _toggleLoading();
56:     }
57:   }
58: 
59:   Future<void> refreshGetNotifications() async {
60:     resetPagination();
61:     await getNotifications();
62:   }
63: 
64: }
```

## File: lib/features/shared/notifications/screens/notifications_screen.dart
```dart
  1: import 'package:flutter/material.dart';
  2: import 'package:provider/provider.dart';
  3: 
  4: import '../../../../core/providers/notification_provider.dart';
  5: import '../../../../core/styles/styles.dart';
  6: import '../../../../core/utils/constants/colors_constants.dart';
  7: import '../../../../core/utils/size_config.dart';
  8: import '../../../../widgets/arrow_back_widget.dart';
  9: import '../../../../widgets/custom_empty_widget.dart';
 10: import '../../../../widgets/custom_loading.dart';
 11: 
 12: 
 13: class NotificationsScreen extends StatefulWidget {
 14:   const NotificationsScreen({super.key});
 15: 
 16:   @override
 17:   _NotificationsScreenState createState() => _NotificationsScreenState();
 18: }
 19: 
 20: class _NotificationsScreenState extends State<NotificationsScreen> {
 21: 
 22:   final ScrollController _scrollController = ScrollController();
 23: 
 24:   @override
 25:   void initState() {
 26:     super.initState();
 27: 
 28:     WidgetsBinding.instance.addPostFrameCallback((_) async {
 29:       final provider = Provider.of<NotificationProvider>(context, listen: false);
 30:       provider.resetPagination();
 31:       await provider.getNotifications();
 32:     });
 33: 
 34:     _scrollController.addListener(() {
 35:       final p = Provider.of<NotificationProvider>(context, listen: false);
 36:       if (_scrollController.position.pixels ==
 37:           _scrollController.position.maxScrollExtent &&
 38:           !p.isLoading &&
 39:           p.hasMore) {
 40:         p.getNotifications(loadMore: true);
 41:       }
 42:     });
 43:   }
 44: 
 45:   @override
 46:   void dispose() {
 47:     super.dispose();
 48:     _scrollController.dispose();
 49:   }
 50: 
 51:   @override
 52:   Widget build(BuildContext context) {
 53:     SizeConfig.init(context);
 54: 
 55:     return Scaffold(
 56:       appBar: AppBar(
 57:         backgroundColor: Colors.white,
 58:         title: Text("الإشعارات", style: txtMedium05,),
 59:         leading: ArrowBackWidget(myContext: context),
 60:         centerTitle: true,
 61:         elevation: 0,
 62:       ),
 63:       body: Consumer<NotificationProvider>(
 64:         builder: (context, provider, child) {
 65: 
 66:           if ( provider.notificationModelList.isEmpty && provider.isLoading) {
 67:             return const CustomLoading();
 68:           }
 69: 
 70:           return RefreshIndicator(
 71:             onRefresh: () => provider.refreshGetNotifications(),
 72:             child: provider.notificationModelList.isNotEmpty ? ListView.builder(
 73:               controller: _scrollController,
 74:               physics: const AlwaysScrollableScrollPhysics(),
 75:               itemCount: provider.notificationModelList.length + (provider.isLoading ? 1 : 0),
 76:               shrinkWrap: true,
 77:               padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
 78:               itemBuilder: (context, index) {
 79:                 if (index < provider.notificationModelList.length) {
 80:                   final notif = provider.notificationModelList[index];
 81:                   return Padding(
 82:                     padding: const EdgeInsets.only(bottom: 10),
 83:                     child: AnimatedContainer(
 84:                       duration: Duration(milliseconds: 300),
 85:                       curve: Curves.easeOut,
 86:                       child: Card(
 87:                         elevation: 3,
 88:                         shadowColor: Colors.black26,
 89:                         color: Colors.white,
 90:                         shape: RoundedRectangleBorder(
 91:                           borderRadius: BorderRadius.circular(16),
 92:                         ),
 93:                         child: Column(
 94:                           mainAxisSize: MainAxisSize.min,
 95:                           children: [
 96:                             ListTile(
 97:                               contentPadding: EdgeInsets.all(16),
 98:                               leading: Container(
 99:                                 padding: EdgeInsets.all(10),
100:                                 decoration: BoxDecoration(
101:                                   color: AppColor.primaryColor.withOpacity(0.1),
102:                                   shape: BoxShape.circle,
103:                                 ),
104:                                 child: Icon(Icons.notifications, color: AppColor.primaryColor, size: 28),
105:                               ),
106:                               title: Text(
107:                                 notif.title,
108:                                 style: TextStyle(
109:                                   fontSize: 16,
110:                                   fontWeight: FontWeight.bold,
111:                                 ),
112:                               ),
113:                               subtitle: Padding(
114:                                 padding: const EdgeInsets.only(top: 6),
115:                                 child: Text(
116:                                   notif.body,
117:                                   style: TextStyle(fontSize: 14),
118:                                 ),
119:                               ),
120: 
121:                             ),
122:                             const SizedBox(height: 10,),
123:                            Divider(color: Colors.grey.withOpacity(0.3),),
124:                            Padding(padding: EdgeInsets.only(left: 16, right: 16,bottom: 10,top: 10),
125:                            child:  Align(
126:                              alignment: Alignment.centerLeft,
127:                              child: Text(
128:                                notif.createdAt,
129:                                textDirection: TextDirection.ltr,
130:                                style: TextStyle(fontSize: 12, color: Colors.grey),
131:                              ),
132:                            ),)
133:                           ],
134:                         ),
135:                       ),
136:                     ),
137:                   );
138:                 } else {
139:                   return const Padding(padding: EdgeInsets.only(bottom: 10),
140:                     child: CustomLoading(radius: 18,),
141:                   );
142:                 }
143:               },
144:             ) : const CustomEmptyWidget(label: 'لا توجد إشعارات للعرض حالياً',),);
145:         },
146:       ),
147:     );
148:   }
149: }
```

## File: lib/features/user/home/screens/home_user_screen.dart
```dart
 1: import 'package:flutter/material.dart';
 2: import '../../../../models/faq_item_model.dart';
 3: import '../../../../widgets/banners/banner_widget.dart';
 4: import '../../../../widgets/faq_item_widget.dart';
 5: import '../../../../widgets/section_label_widget.dart';
 6: import '../widgets/categories_gridview_widget.dart';
 7: 
 8: class HomeUserScreen extends StatefulWidget {
 9:   const HomeUserScreen({super.key});
10: 
11:   @override
12:   State<HomeUserScreen> createState() => _HomeUserScreenState();
13: }
14: 
15: class _HomeUserScreenState extends State<HomeUserScreen> {
16: 
17:   final List<FAQItemModel> _allFAQs = [
18:     FAQItemModel(
19:       question: 'هل يمكنني التسجيل كشركة؟',
20:       answer: 'نعم، يمكن للشركات التسجيل عبر اختيار نوع الحساب "شركة"، وإدخال بيانات السجل التجاري ورقم الهوية، بالإضافة إلى رفع الوثائق المطلوبة للتوثيق.',
21:     ),
22:     FAQItemModel(
23:       question: 'كيف يمكنني تقديم طلب جديد؟',
24:       answer: 'لإنشاء طلب جديد، اختر القسم المناسب (مثل قطع غيار، سيارات جديدة، عقارات...) ثم أدخل التفاصيل المطلوبة مثل المواصفات، الصور، ونطاق السعر. بعد ذلك يمكنك إرسال الطلب للشركات المؤهلة.',
25:     ),
26:     FAQItemModel(
27:       question: 'كيف يتم اختيار الشركات التي تستقبل الطلب؟',
28:       answer: 'يتم تحديد الشركات المؤهلة حسب القسم المطلوب، الماركات المختصة بها الشركة، والموقع الجغرافي الذي تختاره. هذا يضمن وصول الطلب فقط للشركات المناسبة.',
29:     ),
30:     FAQItemModel(
31:       question: 'كيف يمكنني متابعة ردود الشركات على طلبي؟',
32:       answer: 'بعد إرسال الطلب ستظهر لك جميع الردود من الشركات في صفحة "طلباتي"، حيث يمكنك مشاهدة الأسعار، الصور، مدة الضمان، وتفاصيل التوصيل لكل رد.',
33:     ),
34:     FAQItemModel(
35:       question: 'هل الردود مضمونة من شركات حقيقية؟',
36:       answer: 'نعم، جميع الشركات المشاركة في المنصة موثقة في السعودية، وتم التحقق من سجلاتها التجارية ووثائقها الرسمية لتجنب الاحتيال.',
37:     ),
38:     FAQItemModel(
39:       question: 'هل يوجد ضمان على القطع أو المنتجات؟',
40:       answer: 'نعم، يمكن للشركات إضافة تفاصيل الضمان في الردود (مثل ضمان 6 أشهر). سيظهر الضمان بوضوح عند استعراض الرد.',
41:     ),
42:     FAQItemModel(
43:       question: 'كيف يمكنني تقديم شكوى؟',
44:       answer: 'إذا واجهت مشكلة في الطلب أو مع شركة معينة، يمكنك الدخول إلى قسم "الدعم والشكاوى"، وفتح شكوى جديدة مع تحديد نوع المشكلة. سيتم مراجعتها من قبل الإدارة.',
45:     ),
46:   ];
47: 
48:   @override
49:   Widget build(BuildContext context) {
50: 
51:     return Material(
52:       color: Colors.white,
53:       child: ListView(
54:         shrinkWrap: true,
55:         physics: const ScrollPhysics(),
56:         padding: const EdgeInsets.symmetric(vertical: 20),
57:         children: [
58:           const SizedBox(height: 2,),
59:           BannerWidget(),
60:           const SectionLabelWidget(label: 'الأقسام',),
61:           const SizedBox(height: 8,),
62:           CategoriesGridviewWidget(),
63:           const SizedBox(height: 8,),
64:           const SectionLabelWidget(label: 'أسئلة شائعة (FAQ)',),
65:           const SizedBox(height: 8,),
66:           FAQItemWidget(faqsList: _allFAQs,),
67:         ],
68:       ),
69:     );
70:   }
71: }
```

## File: lib/models/notification_model.dart
```dart
 1: class NotificationResponseModel {
 2:   final bool success;
 3:   final String message;
 4:   final Result? result;
 5: 
 6:   const NotificationResponseModel({
 7:     this.success = false,
 8:     this.message = '',
 9:     this.result ,
10:   });
11: 
12:   factory NotificationResponseModel.fromJson(Map<String, dynamic>? json) {
13:     return NotificationResponseModel(
14:       success: json?['success'] ?? false,
15:       message: json?['message'] ?? '',
16:       result: json?['result'] == null ? null : Result.fromJson(json?['result']),
17:     );
18:   }
19: }
20: 
21: class Result {
22:   final List<NotificationModel> notificationModelList;
23:   final int currentPage ;
24:   final int lastPage ;
25: 
26:   Result({
27:     this.notificationModelList = const [],
28:     this.currentPage = 1,
29:     this.lastPage = 1,
30:   });
31: 
32:   factory Result.fromJson(Map<String, dynamic>? json) {
33:     return Result(
34:       currentPage: json?['current_page'] ?? 1,
35:       lastPage: json?['last_page'] ?? 1,
36:       notificationModelList: _parseNotificationResult(json?['data']),
37:     );
38:   }
39: 
40:   static List<NotificationModel> _parseNotificationResult(dynamic result) {
41:     if(result == null || result is! List) return [];
42:     return List<NotificationModel>.from((result).map((e) => NotificationModel.fromJson(e)).toList());
43:   }
44: }
45: 
46: class NotificationModel{
47: 
48:   final String title;
49:   final String body;
50:   final String createdAt;
51: 
52:   const NotificationModel({
53:     this.title = '',
54:     this.body = '',
55:     this.createdAt = '',
56:   });
57: 
58:   factory NotificationModel.fromJson(Map<String, dynamic>? json) {
59:     return NotificationModel(
60:       title: json?['title'] ?? '',
61:       body: json?['body'] ?? '',
62:       createdAt: json?['created_at'] ?? '',
63:     );
64:   }
65: }
```

## File: lib/widgets/section_badge_widget.dart
```dart
 1: import 'package:flutter/material.dart';
 2: import 'package:provider/provider.dart';
 3: import '../core/providers/notification_badge_provider.dart';
 4: 
 5: class SectionBadgeWidget extends StatelessWidget {
 6:   final String categoryKey;
 7:   final Widget child;
 8:   final AlignmentGeometry alignment;
 9:   final Offset? offset;
10: 
11:   const SectionBadgeWidget({
12:     super.key,
13:     required this.categoryKey,
14:     required this.child,
15:     this.alignment = Alignment.topRight,
16:     this.offset,
17:   });
18: 
19:   @override
20:   Widget build(BuildContext context) {
21:     return Consumer<NotificationBadgeProvider>(
22:       builder: (context, provider, _) {
23:         final count = provider.getCount(categoryKey);
24: 
25:         if (count <= 0) {
26:           return child;
27:         }
28: 
29:         return Stack(
30:           clipBehavior: Clip.none,
31:           children: [
32:             child,
33:             Positioned(
34:               top: offset?.dy ?? -4,
35:               right: offset?.dx ?? -4,
36:               child: Container(
37:                 padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
38:                 decoration: BoxDecoration(
39:                   color: Colors.red,
40:                   borderRadius: BorderRadius.circular(12),
41:                   boxShadow: [
42:                     BoxShadow(
43:                       color: Colors.red.withOpacity(0.4),
44:                       blurRadius: 4,
45:                       offset: const Offset(0, 2),
46:                     ),
47:                   ],
48:                 ),
49:                 constraints: const BoxConstraints(
50:                   minWidth: 20,
51:                   minHeight: 20,
52:                 ),
53:                 child: Center(
54:                   child: Text(
55:                     '$count',
56:                     style: const TextStyle(
57:                       color: Colors.white,
58:                       fontSize: 11,
59:                       fontWeight: FontWeight.bold,
60:                     ),
61:                     textAlign: TextAlign.center,
62:                   ),
63:                 ),
64:               ),
65:             ),
66:           ],
67:         );
68:       },
69:     );
70:   }
71: }
```

## File: lib/core/data_sources/remote/firebase/fcm_service.dart
```dart
  1: import 'dart:async';
  2: import 'dart:developer';
  3: 
  4: import 'package:car_mediator_mobile/core/helpers/helpers.dart';
  5: import 'package:car_mediator_mobile/core/utils/connection_utils.dart';
  6: import 'package:car_mediator_mobile/core/utils/context_utils.dart';
  7: import 'package:firebase_messaging/firebase_messaging.dart';
  8: import 'package:flutter_local_notifications/flutter_local_notifications.dart';
  9: import 'package:provider/provider.dart';
 10: 
 11: import '../../../../features/shared/notifications/screens/notifications_screen.dart';
 12: import '../../../../widgets/components.dart';
 13: import '../../../providers/notification_badge_provider.dart';
 14: import '../../local/secure_storage.dart';
 15: 
 16: 
 17: class FcmService {
 18:   static FirebaseMessaging? _firebaseMessaging;
 19:   static FirebaseMessaging get firebaseMessaging => FcmService._firebaseMessaging ?? FirebaseMessaging.instance;
 20: 
 21:   static Future<void> initializeFirebase() async {
 22: 
 23:     try{
 24:       FcmService._firebaseMessaging = FirebaseMessaging.instance;
 25:       await FcmService.initializeLocalNotifications();
 26:       await FcmService.onBackgroundMsg();
 27:       FcmService.subscribeToTopic('all');
 28:     }catch(e){
 29:       print(e);
 30:     }
 31:   }
 32: 
 33:   static Future<String?> getDeviceTokenFCM() async {
 34:     try {
 35:       String? _token = await FcmService.firebaseMessaging.getToken();
 36:       Helper.logDebug('FCMServices------token----- $_token ');
 37:       return _token;
 38:     } catch (e) {
 39:       Helper.logDebug("❌ Error getting FCM token: $e");
 40:       return null;
 41:     }
 42:   }
 43: 
 44: 
 45:   static void subscribeToTopic(String topic) async {
 46:     if(await ConnectionUtils.hasInternetConnection())
 47:       await FcmService.firebaseMessaging.subscribeToTopic(topic);
 48:   }
 49: 
 50:   static FlutterLocalNotificationsPlugin localNotificationsPlugin = FlutterLocalNotificationsPlugin();
 51: 
 52:   static Future<void> initializeLocalNotifications() async {
 53:     final InitializationSettings _initSettings = InitializationSettings(
 54:         android: AndroidInitializationSettings("@mipmap/ic_launcher"),
 55:         iOS: DarwinInitializationSettings()
 56:     );
 57:     /// on did receive notification response = for when app is opened via notification while in foreground on android
 58:     await FcmService.localNotificationsPlugin.initialize(_initSettings, onDidReceiveNotificationResponse: FcmService.onTapNotification);
 59:     /// need this for ios foregournd notification
 60:     ///Configure notification permissions
 61:     ///IOS
 62:     await FcmService.firebaseMessaging.setForegroundNotificationPresentationOptions(
 63:       alert: true, // Required to display a heads up notification
 64:       badge: true,
 65:       sound: true,
 66:     );
 67:     /// for android
 68:     NotificationSettings settings = await FcmService.firebaseMessaging.requestPermission(
 69:       alert: true,
 70:       announcement: false,
 71:       badge: true,
 72:       carPlay: false,
 73:       criticalAlert: false,
 74:       provisional: false,
 75:       sound: true,
 76:     );
 77: 
 78:     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
 79:       print('User granted permission');
 80:     } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
 81:       print('User granted provisional permission');
 82:     } else {
 83:       print('User declined or has not accepted permission');
 84:     }
 85:   }
 86: 
 87:   static NotificationDetails platformChannelSpecifics = NotificationDetails(
 88:     android: AndroidNotificationDetails(
 89:       "high_importance_channel", "High Importance Notifications", priority: Priority.max, importance: Importance.max,
 90:     ),
 91: 
 92:   );
 93: 
 94:   static Future<void> backgroundHandler(RemoteMessage message) async {
 95:     if (message.notification != null){
 96:       log("--------FirebaseMessaging.onBackgroundMessage.listen----------");
 97:       log('title---- ${message.notification?.title}');
 98:       log('body---- ${message.notification?.body}');
 99:       SecureStorage.addNotificationCount();
100:     }
101: 
102:     // if(message.data != null){
103:     //   if(message.data['type_notification'] == 'all'){
104:     //     print('type_notification---- ${message.data['type_notification']}');
105:     //     print('title---- ${message.notification?.title}');
106:     //     print('body---- ${message.notification?.body}');
107:     //     GlobalNavigator.dialogAdvancedGlobal(title: message.notification?.title ?? '',
108:     //         description: message.notification?.body ?? 'مرحباً',
109:     //         iconPath: AssetsPath.notification,
110:     //         onTabCancel: (){
111:     //         });
112:     //   }
113:     //
114:     // }
115: 
116:   }
117: 
118:   static Future<void> onTapNotification(NotificationResponse? response) async {
119:     if (response?.payload == null) return;
120:     print('---onTapNotification--payload-------${response?.payload }---------');
121:     final _cxt = ContextUtils.globalContext;
122:     if(_cxt != null)
123:       navigationPush(_cxt, NotificationsScreen());
124:   }
125: 
126:   static Future<void> initialMessage() async {
127:     //When App is Terminated
128:     // when you click on notification app open from terminated state and
129:     // you can get notification data in this method
130:     var message =   await FirebaseMessaging.instance.getInitialMessage() ;
131:     if (message != null){
132:       print("----FirebaseMessaging----initalMessage------${message.toString}----");
133:       final _cxt = ContextUtils.globalContext;
134:       if(_cxt != null)
135:         navigationPush(_cxt, NotificationsScreen());
136:     }
137:   }
138: 
139:   static Future<void> onMessage_OpenedApp() async {
140:     FirebaseMessaging.onMessageOpenedApp.listen((message) async {
141:       print("--------FirebaseMessaging.onMessageOpenedApp.listen----------");
142:     });
143:   }
144: 
145:   static Future<void> onBackgroundMsg() async {
146:     //background message listener
147:     FirebaseMessaging.onBackgroundMessage(backgroundHandler);
148:   }
149: 
150:   // for receiving message when app is in foreground : for android
151:   static Future<void> onMessage() async {
152:     FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
153:       // if this is available when Platform.isIOS, you'll receive the notification twice
154:       print("message recieved----onMessage--foreground messages-----");
155:       final cxt = ContextUtils.globalContext;
156:       if (cxt != null) {
157:         try {
158:           cxt.read<NotificationBadgeProvider>().fetchUnreadCounts();
159:         } catch (e) {
160:           log('Error updating NotificationBadgeProvider on FCM: $e');
161:         }
162:       }
163: 
164:       if(message.notification != null){
165:         print('title---- ${message.notification?.title}');
166:         print('body---- ${message.notification?.body}');
167: 
168:         SecureStorage.addNotificationCount();
169: 
170:         await FcmService.localNotificationsPlugin.show(
171:           0, message.notification!.title, message.notification!.body, FcmService.platformChannelSpecifics,
172:           payload: message.data.toString(),
173:         );
174:       }
175:     });
176:   }
177: 
178: }
```

## File: lib/core/providers/notification_badge_provider.dart
```dart
 1: import 'package:flutter/material.dart';
 2: import '../services/shared/notification_service.dart';
 3: 
 4: class NotificationBadgeProvider extends ChangeNotifier {
 5:   final NotificationService _service;
 6: 
 7:   Map<String, int> unreadCounts = {
 8:     'customer_requests': 0,
 9:     'company_responses': 0,
10:     'conversations': 0,
11:   };
12: 
13:   NotificationBadgeProvider(this._service);
14: 
15:   int getCount(String category) {
16:     return unreadCounts[category] ?? 0;
17:   }
18: 
19:   Future<void> fetchUnreadCounts() async {
20:     debugPrint('🔔 Fetching notification unread counts from backend...');
21:     final counts = await _service.getUnreadCounts();
22:     debugPrint('🔔 Received unread counts: $counts');
23:     if (counts != null) {
24:       unreadCounts = counts;
25:       notifyListeners();
26:     }
27:   }
28: 
29:   Future<void> markCategoryRead(String category) async {
30:     unreadCounts[category] = 0;
31:     notifyListeners();
32: 
33:     final updated = await _service.markCategoryRead(category);
34:     if (updated != null) {
35:       unreadCounts = updated;
36:       notifyListeners();
37:     }
38:   }
39: 
40:   void updateCountFromRealtime(String category, int count) {
41:     unreadCounts[category] = count;
42:     notifyListeners();
43:   }
44: 
45:   void incrementCategory(String category) {
46:     unreadCounts[category] = (unreadCounts[category] ?? 0) + 1;
47:     notifyListeners();
48:   }
49: }
```

## File: lib/features/user/home/screens/home_user_page.dart
```dart
  1: import 'package:car_mediator_mobile/core/data_sources/remote/firebase/fcm_service.dart';
  2: import 'package:car_mediator_mobile/core/ui_models/nav_bar_item.dart';
  3: import 'package:flutter/material.dart';
  4: import 'package:provider/provider.dart';
  5: 
  6: import '../../../../core/providers/bottom_navigation_bar_provider.dart';
  7: import '../../../../core/providers/notification_badge_provider.dart';
  8: import '../../../../core/utils/constants/assets_path.dart';
  9: import '../../../../core/utils/constants/colors_constants.dart';
 10: import '../../../../core/utils/size_config.dart';
 11: import '../../../../widgets/section_badge_widget.dart';
 12: import '../../../shared/account/screens/account_screen.dart';
 13: import '../../my_conversations/screens/user_conversations_screen.dart';
 14: import '../../my_requests/screens/my_requests_user_screen.dart';
 15: import '../widgets/home_app_bar_widget.dart';
 16: import 'home_user_screen.dart';
 17: 
 18: 
 19: class HomeUserPage extends StatefulWidget {
 20:   const HomeUserPage({super.key});
 21: 
 22:   @override
 23:   State<HomeUserPage> createState() => _HomeUserPageState();
 24: }
 25: 
 26: class _HomeUserPageState extends State<HomeUserPage> {
 27: 
 28:   final PageController _pageController = PageController();
 29: 
 30:   final List<Widget> _pages = const [
 31:     HomeUserScreen(),
 32:     MyRequestUserScreen(),
 33:     UserConversationScreen(),
 34:     AccountScreen(),
 35:   ];
 36: 
 37:   final List<NavBarItem> _navItems = const [
 38:     NavBarItem(icon: AssetsPath.home_icon, label: 'الرئيسية'),
 39:     NavBarItem(icon: AssetsPath.my_orders_icon, label: 'طلباتي'),
 40:     NavBarItem(icon: AssetsPath.chat_bubble, label: 'محادثاتي'),
 41:     NavBarItem(icon: AssetsPath.user_icon, label: 'حسابي'),
 42:   ];
 43: 
 44:   @override
 45:   void initState() {
 46:     super.initState();
 47:     FcmService.onMessage();
 48:     WidgetsBinding.instance.addPostFrameCallback((_) {
 49:       context.read<NotificationBadgeProvider>().fetchUnreadCounts();
 50:     });
 51:   }
 52: 
 53:   @override
 54:   Widget build(BuildContext context) {
 55:     SizeConfig.init(context);
 56:     final navProvider = context.watch<BottomNavigationBarProvider>();
 57: 
 58:     return Scaffold(
 59:       appBar: const HomeAppBarWidget(),
 60:       body: PageView(
 61:         controller: _pageController,
 62:         physics: const NeverScrollableScrollPhysics(),
 63:         onPageChanged: (index) => navProvider.setCurrentIndex(context, index),
 64:         children: _pages,
 65:       ),
 66:       bottomNavigationBar: BottomNavigationBar(
 67:         currentIndex: navProvider.currentIndex,
 68:         onTap: (index) {
 69:           if (index == 1) {
 70:             context.read<NotificationBadgeProvider>().markCategoryRead('company_responses');
 71:           } else if (index == 2) {
 72:             context.read<NotificationBadgeProvider>().markCategoryRead('conversations');
 73:           }
 74:           navProvider.setCurrentIndex(context, index, controller: _pageController);
 75:         },
 76:         items: List.generate(_navItems.length, (index) {
 77:           final item = _navItems[index];
 78:           final isActive = index == navProvider.currentIndex;
 79:           final String? categoryKey = index == 1 ? 'company_responses' : (index == 2 ? 'conversations' : null);
 80: 
 81:           Widget iconWidget = Image.asset(
 82:             item.icon,
 83:             color: isActive ? AppColor.primaryColor : AppColor.greyColor,
 84:           );
 85: 
 86:           if (categoryKey != null) {
 87:             iconWidget = SectionBadgeWidget(
 88:               categoryKey: categoryKey,
 89:               child: iconWidget,
 90:             );
 91:           }
 92: 
 93:           return BottomNavigationBarItem(
 94:             icon: iconWidget,
 95:             label: item.label,
 96:           );
 97:         }),
 98:         backgroundColor: AppColor.secondaryColor,
 99:         selectedItemColor: AppColor.primaryColor,
100:         unselectedItemColor: AppColor.greyColor,
101:         showUnselectedLabels: true,
102:         type: BottomNavigationBarType.fixed,
103:         elevation: 8,
104:       ),
105:     );
106:   }
107: }
```

## File: lib/features/user/home/widgets/home_app_bar_widget.dart
```dart
 1: import 'package:badges/badges.dart' as badges;
 2: import 'package:car_mediator_mobile/core/styles/styles.dart';
 3: import 'package:car_mediator_mobile/core/utils/constants/extensions.dart';
 4: import 'package:car_mediator_mobile/widgets/images/custom_image.dart';
 5: import 'package:flutter/material.dart';
 6: 
 7: import '../../../../core/utils/constants/assets_path.dart';
 8: import '../../../../core/utils/constants/colors_constants.dart';
 9: import '../../../../core/utils/size_config.dart';
10: import '../../../../widgets/components.dart';
11: import '../../../shared/notifications/screens/notifications_screen.dart';
12: 
13: class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
14:   const HomeAppBarWidget({super.key});
15: 
16:   @override
17:   Widget build(BuildContext context) {
18: 
19:     return AppBar(
20:       backgroundColor: Colors.white,
21:       title: Row(
22:         children: [
23:            const SizedBox(width: 5),
24:           Column(
25:             crossAxisAlignment: CrossAxisAlignment.start,
26:             children: [
27:               Text('مـرحبـاً', style: txtLightSemiBold035,),
28:                Text(
29:                 context.loc.appName,
30:                 style: txtSemiBold033,
31:               ),
32:             ],
33:           ),
34:         ],
35:       ),
36:       elevation: 0,
37:       actions: const [],
38:       leadingWidth: SizeConfig.widthResponsive(0.18),
39:       titleSpacing: 0,
40:       leading: const Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
41:       child: CustomImageWidget(assetImage: AssetsPath.logo, bgColor: AppColor.secondaryColor, color: AppColor.primaryColor,),
42:     ));
43:   }
44: 
45:   // height of appbar
46:   @override
47:   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
48: }
```

## File: lib/features/vendor/home/screens/home_vendor_page.dart
```dart
  1: import 'package:car_mediator_mobile/core/styles/styles.dart';
  2: import 'package:car_mediator_mobile/core/utils/constants/colors_constants.dart';
  3: import 'package:car_mediator_mobile/features/vendor/new_requests/screens/new_request_screen.dart';
  4: import 'package:car_mediator_mobile/widgets/components.dart';
  5: import 'package:flutter/material.dart';
  6: import 'package:provider/provider.dart';
  7: 
  8: import '../../../../core/data_sources/remote/firebase/fcm_service.dart';
  9: import '../../../../core/providers/auth_provider.dart';
 10: import '../../../../core/providers/notification_badge_provider.dart';
 11: import '../../../../core/utils/dialogUtils.dart';
 12: import '../../../../core/utils/size_config.dart';
 13: import '../../../../widgets/banners/banner_widget.dart';
 14: import '../../../../widgets/section_badge_widget.dart';
 15: import '../../../../widgets/vendor/dashboard_item_home.dart';
 16: import '../../app_commission/screens/app_commission_screen.dart';
 17: import '../../my_conversations/screens/vendor_conversations_screen.dart';
 18: import '../../profile/screens/profile_vendor_screen.dart';
 19: import '../../responses/screens/my_response_request_screen.dart';
 20: import '../../specialties/screens/specialties_screen.dart';
 21: import '../widgets/app_bar_home_vendor_page.dart';
 22: 
 23: class HomeVendorPage extends StatefulWidget {
 24:   const HomeVendorPage({super.key});
 25: 
 26:   @override
 27:   State<HomeVendorPage> createState() => _HomeVendorPageState();
 28: }
 29: 
 30: class _HomeVendorPageState extends State<HomeVendorPage> {
 31: 
 32:   @override
 33:   void initState() {
 34:     super.initState();
 35:     FcmService.onMessage();
 36:     WidgetsBinding.instance.addPostFrameCallback((_) {
 37:       context.read<NotificationBadgeProvider>().fetchUnreadCounts();
 38:     });
 39:   }
 40: 
 41:   @override
 42:   Widget build(BuildContext context) {
 43:     SizeConfig.init(context);
 44: 
 45:     return Scaffold(
 46:       backgroundColor: Colors.white,
 47:       appBar: const AppBarHomeVendorPage(),
 48:       body: ListView(
 49:         shrinkWrap: true,
 50:         physics: const ScrollPhysics(),
 51:         padding: const EdgeInsets.symmetric(vertical: 20),
 52:         children: [
 53:           const SizedBox(
 54:             height: 20,
 55:           ),
 56:           const BannerWidget(),
 57:            SizedBox(
 58:             height: SizeConfig.heightResponsive(0.08),
 59:           ),
 60:            Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
 61:           child: Row(
 62:             mainAxisSize: MainAxisSize.min,
 63:             children: [
 64:               Expanded(
 65:                 flex: 1,
 66:                 child: SectionBadgeWidget(
 67:                   categoryKey: 'customer_requests',
 68:                   child: DashboardItemHome(
 69:                     title: 'طلبات العملاء',
 70:                     icon: const Icon(Icons.sticky_note_2, color: AppColor.primaryColor, size: 32,),
 71:                     subTitle: 'الطلبات الجديدة',
 72:                     onTap: (){
 73:                       context.read<NotificationBadgeProvider>().markCategoryRead('customer_requests');
 74:                       navigationPush(context, const NewRequestScreen());
 75:                     },
 76:                   ),
 77:                 ),
 78:               ),
 79:               const SizedBox(
 80:                 width: 10,
 81:               ),
 82:               Expanded(
 83:                 flex: 1,
 84:                 child: SectionBadgeWidget(
 85:                   categoryKey: 'company_responses',
 86:                   child: DashboardItemHome(
 87:                     title: 'ردود الشركة',
 88:                     subTitle: 'ردود الطلبات',
 89:                     icon: const Icon(Icons.reply_all_outlined, color: AppColor.primaryColor, size: 32),
 90:                     onTap: (){
 91:                       context.read<NotificationBadgeProvider>().markCategoryRead('company_responses');
 92:                       navigationPush(context, const MyResponseRequestScreen());
 93:                     },
 94:                   ),
 95:                 ),
 96:               ),
 97:             ],
 98:           ),),
 99:           const SizedBox(
100:             height: 10,
101:           ),
102:            Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
103:             child: Row(
104:               mainAxisSize: MainAxisSize.min,
105:               children: [
106:                 Expanded(
107:                   flex: 1,
108:                   child: DashboardItemHome(
109:                     title: 'التخصصات',
110:                     icon: const Icon(Icons.settings, color: AppColor.primaryColor, size: 32),
111:                     subTitle: 'الخدمات , المدن',
112:                     onTap: (){
113:                       navigationPush(context, const SpecialtiesScreen());
114:                     },
115:                   ),
116:                 ),
117:                 const SizedBox(
118:                   width: 10,
119:                 ),
120:                 Expanded(
121:                   flex: 1,
122:                   child: SectionBadgeWidget(
123:                     categoryKey: 'conversations',
124:                     child: DashboardItemHome(
125:                       title: 'المحادثات',
126:                       subTitle: 'محادثاتي',
127:                       icon: const Icon(Icons.chat, color: AppColor.primaryColor, size: 32),
128:                       onTap: (){
129:                         context.read<NotificationBadgeProvider>().markCategoryRead('conversations');
130:                         navigationPush(context, const VendorConversationScreen());
131:                       },
132:                     ),
133:                   ),
134:                 ),
135:               ],
136:             ),),
137:           const SizedBox(height: 10,),
138:           Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
139:             child: Row(
140:               mainAxisSize: MainAxisSize.min,
141:               children: [
142:                 Expanded(
143:                   flex: 1,
144:                   child: DashboardItemHome(
145:                     title: 'إدارة الحساب',
146:                     icon: const Icon(Icons.business, color: AppColor.primaryColor, size: 32),
147:                     subTitle: 'حسابي',
148:                     onTap: (){
149:                       navigationPush(context, const ProfileVendorScreen());
150:                     },
151:                   ),
152:                 ),
153:                 const SizedBox(
154:                   width: 10,
155:                 ),
156:                 Expanded(
157:                   flex: 1,
158:                   child: DashboardItemHome(
159:                     title: 'سداد العمولة',
160:                     subTitle: 'عمولة التطبيق',
161:                     icon: const Icon(Icons.monetization_on, color: AppColor.primaryColor, size: 32),
162:                     onTap: (){
163:                       navigationPush(context, const AppCommissionScreen());
164:                     },
165:                   ),
166:                 ),
167:               ],
168:             ),),
169:           const SizedBox(height: 10,),
170:           Padding(padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthResponsive(0.15)),
171:           child: DashboardItemHome(
172:             title: 'تسجيل الخروج',
173:             subTitle: 'تسجيل الخروج من الحساب',
174:             icon: const Icon(Icons.logout, color: AppColor.primaryColor, size: 32),
175:             onTap: (){
176:               DialogUtils().showConfirmDialog(context, message: 'هل تريد تسجيل الخروج', confirm: () async => await context.read<AuthProvider>().logout(context));
177:             },
178:           ),),
179:           const SizedBox(height: 10,),
180: 
181:         ],
182:       ),
183:     );
184:   }
185: }
```

## File: lib/core/services/shared/notification_service.dart
```dart
 1: import 'package:car_mediator_mobile/core/services/base_service.dart';
 2: import 'package:flutter/cupertino.dart';
 3: 
 4: import '../../../models/notification_model.dart';
 5: import '../../data_sources/remote/api_service.dart';
 6: import '../../errors/api_exceptions.dart';
 7: import '../../helpers/toast_helper.dart';
 8: 
 9: class NotificationService extends BaseService  {
10:   final ApiService _apiService;
11: 
12:   NotificationService(this._apiService);
13: 
14:   Future<NotificationResponseModel?> getNotifications({ required int page}) async {
15:     try {
16:       final response = await _apiService.getData('notifications', queryParams: {'page': page.toString()});
17:       return NotificationResponseModel.fromJson(response);
18:     } on ApiException catch (e) {
19:       ToastHelper.showError(e.message);
20:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
21:       return null;
22:     } catch (e) {
23:       debugPrint('Unexpected Error: $e');
24:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
25:       return null;
26:     }
27:   }
28: 
29:   Future<Map<String, int>?> getUnreadCounts() async {
30:     try {
31:       final response = await _apiService.getData('notifications/unread-counts');
32:       if (response != null && response['success'] == true && response['data'] != null) {
33:         final Map<String, dynamic> data = response['data'];
34:         return data.map((key, value) => MapEntry(key, (value as num).toInt()));
35:       }
36:       return null;
37:     } catch (e) {
38:       debugPrint('Error fetching unread counts: $e');
39:       return null;
40:     }
41:   }
42: 
43:   Future<Map<String, int>?> markCategoryRead(String category) async {
44:     try {
45:       final response = await _apiService.postData('notifications/mark-category-read', body: {'category': category});
46:       if (response != null && response['success'] == true && response['data'] != null) {
47:         final Map<String, dynamic> data = response['data'];
48:         return data.map((key, value) => MapEntry(key, (value as num).toInt()));
49:       }
50:       return null;
51:     } catch (e) {
52:       debugPrint('Error marking category read: $e');
53:       return null;
54:     }
55:   }
56: }
```

This file is a merged representation of a subset of the codebase, containing files not matching ignore patterns, combined into a single document by Repomix.
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
- Files matching these patterns are excluded: .dart_tool/**, .idea/**, .vscode/**, build/**, android/**, ios/**, web/**, linux/**, windows/**, macos/**, *.lock, *.log, .git/**
- Files matching patterns in .gitignore are excluded
- Files matching default ignore patterns are excluded
- Line numbers have been added to the beginning of each line
- Files are sorted by Git change count (files with more changes are at the bottom)

# User Provided Header
Car Mediator Mobile App Codebase Summary

# Directory Structure
```
.gitignore
.metadata
.repomixignore
analysis_options.yaml
assets/fonts/Tajawal-Bold.ttf
assets/fonts/Tajawal-Light.ttf
assets/fonts/Tajawal-Medium.ttf
assets/fonts/Tajawal-Regular.ttf
assets/images/add_image.png
assets/images/add.png
assets/images/background-bottom.png
assets/images/background-top.png
assets/images/chat-bubble.png
assets/images/close.png
assets/images/down-left-arrow.png
assets/images/empty_image.png
assets/images/empty_page.png
assets/images/icon_error.png
assets/images/icon_home.png
assets/images/icon_info.png
assets/images/icon_riyal.png
assets/images/icon_success.png
assets/images/icon_user.png
assets/images/icon_warning.png
assets/images/login.png
assets/images/logo.png
assets/images/money.png
assets/images/my-orders.png
assets/images/notification.png
assets/images/phone_square.png
assets/images/price-tag.png
assets/images/promocode.png
assets/images/saudia-flag.png
assets/images/tips_icon.png
assets/images/up-right-arrow.png
assets/images/user-image.png
assets/images/visa.png
assets/images/wallet.png
assets/images/whatsapp_square.png
assets/images/whatsapp.png
devtools_options.yaml
lib/chatttt.dart
lib/core/adapters/ads_banner_entity.dart
lib/core/adapters/ads_banner_entity.g.dart
lib/core/adapters/brand_car_entity.dart
lib/core/adapters/brand_car_entity.g.dart
lib/core/adapters/category_entity.dart
lib/core/adapters/category_entity.g.dart
lib/core/adapters/category_has_brand_field_entity.dart
lib/core/adapters/category_has_brand_field_entity.g.dart
lib/core/adapters/city_entity.dart
lib/core/adapters/city_entity.g.dart
lib/core/adapters/custom_field_entity.dart
lib/core/adapters/custom_field_entity.g.dart
lib/core/data_sources/local/cache_helper.dart
lib/core/data_sources/local/secure_storage.dart
lib/core/data_sources/remote/api_client.dart
lib/core/data_sources/remote/api_endpoints.dart
lib/core/data_sources/remote/api_path.dart
lib/core/data_sources/remote/api_service.dart
lib/core/data_sources/remote/firebase/fcm_service.dart
lib/core/data_sources/remote/websocket_service.dart
lib/core/errors/api_exceptions.dart
lib/core/errors/empty_response_exception.dart
lib/core/helpers/helpers.dart
lib/core/helpers/toast_helper.dart
lib/core/localization/app_language_provider.dart
lib/core/providers/auth_provider.dart
lib/core/providers/bottom_navigation_bar_provider.dart
lib/core/providers/cache_provider.dart
lib/core/providers/common_provider.dart
lib/core/providers/conversation_provider.dart
lib/core/providers/dynamic_form_provider.dart
lib/core/providers/home/home_user_provider.dart
lib/core/providers/notification_badge_provider.dart
lib/core/providers/notification_provider.dart
lib/core/providers/orders/create_order_provider.dart
lib/core/providers/shipping_provider.dart
lib/core/providers/users/my_request_user_provider.dart
lib/core/providers/users/profile_user_provider.dart
lib/core/providers/users/responses_my_request_provider.dart
lib/core/providers/vendors/app_commission_provider.dart
lib/core/providers/vendors/new_request_vendor_provider.dart
lib/core/providers/vendors/profile_vendor_provider.dart
lib/core/providers/vendors/register_vendor_provider.dart
lib/core/providers/vendors/response_request_provider.dart
lib/core/providers/vendors/specialty_vendor_provider.dart
lib/core/services/base_service.dart
lib/core/services/shared/auth_service.dart
lib/core/services/shared/cache_service.dart
lib/core/services/shared/common_service.dart
lib/core/services/shared/conversation_service.dart
lib/core/services/shared/notification_service.dart
lib/core/services/shared/shipping_service.dart
lib/core/services/user/my_requests/my_request_user_service.dart
lib/core/services/user/profile_user_service.dart
lib/core/services/user/requests/request_service.dart
lib/core/services/vendor/app_commission_service.dart
lib/core/services/vendor/new_request_service.dart
lib/core/services/vendor/profile_vendor_service.dart
lib/core/services/vendor/response_request_service.dart
lib/core/services/vendor/specialty_vendor_service.dart
lib/core/styles/styles.dart
lib/core/theme/app_theme.dart
lib/core/ui_models/nav_bar_item.dart
lib/core/utils/connection_utils.dart
lib/core/utils/constants/assets_path.dart
lib/core/utils/constants/colors_constants.dart
lib/core/utils/constants/constants.dart
lib/core/utils/constants/enumeration.dart
lib/core/utils/constants/extensions.dart
lib/core/utils/context_utils.dart
lib/core/utils/custom_time_ago.dart
lib/core/utils/date_parser_utils.dart
lib/core/utils/deviceInfoUtilse.dart
lib/core/utils/dialogUtils.dart
lib/core/utils/form_validator.dart
lib/core/utils/image_picker_bottom_sheet_utils.dart
lib/core/utils/launcher_url_utils.dart
lib/core/utils/permissions_utils.dart
lib/core/utils/size_config.dart
lib/core/utils/utils.dart
lib/features/shared/account/screens/account_screen.dart
lib/features/shared/auth/login_screen.dart
lib/features/shared/auth/opt_screen.dart
lib/features/shared/cache/init_cache.dart
lib/features/shared/chat/screens/chat_screen.dart
lib/features/shared/notifications/screens/notifications_screen.dart
lib/features/user/home/screens/home_user_page.dart
lib/features/user/home/screens/home_user_screen.dart
lib/features/user/home/widgets/categories_gridview_widget.dart
lib/features/user/home/widgets/home_app_bar_widget.dart
lib/features/user/my_conversations/screens/user_conversations_screen.dart
lib/features/user/my_requests/screens/details_my_request_screen.dart
lib/features/user/my_requests/screens/details_response_my_request_screen.dart
lib/features/user/my_requests/screens/my_requests_user_screen.dart
lib/features/user/my_requests/screens/responses_my_request_screen.dart
lib/features/user/my_requests/widgets/build_vendor_details_response_widget.dart
lib/features/user/my_requests/widgets/my_request_user_card.dart
lib/features/user/my_requests/widgets/status_my_request_widget.dart
lib/features/user/orders/screens/create_order/create_order_screen.dart
lib/features/user/orders/screens/create_order/send_order_screen.dart
lib/features/user/orders/widgets/app_bar_create_order_widget.dart
lib/features/user/orders/widgets/build_bottom_app_bar_create_order.dart
lib/features/user/orders/widgets/build_bottom_app_bar_send_order.dart
lib/features/user/orders/widgets/details_order_widget.dart
lib/features/user/orders/widgets/form_create_order.dart
lib/features/user/orders/widgets/send_range_card.dart
lib/features/user/profile/screens/profile_user_screen.dart
lib/features/user/profile/widgets/build_manage_profile_user_widget.dart
lib/features/user/shipping_request/screens/confirm_shipping_request_screen.dart
lib/features/vendor/app_commission/screens/app_commission_screen.dart
lib/features/vendor/app_commission/screens/payment_transfer_bank_screen.dart
lib/features/vendor/home/screens/home_vendor_page.dart
lib/features/vendor/home/widgets/app_bar_home_vendor_page.dart
lib/features/vendor/my_conversations/screens/vendor_conversations_screen.dart
lib/features/vendor/new_requests/screens/details_new_request_screen.dart
lib/features/vendor/new_requests/screens/new_request_screen.dart
lib/features/vendor/new_requests/widgets/availability_request_card_selector_widget.dart
lib/features/vendor/new_requests/widgets/build_response_request_bottom_heet.dart
lib/features/vendor/profile/screens/profile_vendor_screen.dart
lib/features/vendor/profile/screens/update_commercial_number_image_widget.dart
lib/features/vendor/profile/widgets/build_manage_profile_widget.dart
lib/features/vendor/register/screens/register_vendor_screen.dart
lib/features/vendor/register/widgets/app_bar_register_widget.dart
lib/features/vendor/responses/screens/details_response_request_screen.dart
lib/features/vendor/responses/screens/my_response_request_screen.dart
lib/features/vendor/responses/widgets/build_request_details_response_widget.dart
lib/features/vendor/responses/widgets/build_response_details_widget.dart
lib/features/vendor/responses/widgets/build_user_details_response_widget.dart
lib/features/vendor/specialties/screens/category_specialties_screen.dart
lib/features/vendor/specialties/screens/specialties_screen.dart
lib/features/vendor/specialties/screens/vendor_brand_car_screen.dart
lib/features/vendor/specialties/screens/vendor_cities_screen.dart
lib/l10n/app_ar.arb
lib/l10n/app_en.arb
lib/l10n/app_localizations_ar.dart
lib/l10n/app_localizations_en.dart
lib/l10n/app_localizations.dart
lib/main.dart
lib/models/ads_banner_model.dart
lib/models/brand_car_model.dart
lib/models/category_has_brand_field_model.dart
lib/models/category_model.dart
lib/models/city_model.dart
lib/models/conversation_model.dart
lib/models/custom_field_model.dart
lib/models/faq_item_model.dart
lib/models/key_value_model.dart
lib/models/message_model.dart
lib/models/notification_model.dart
lib/models/request_eligible_vendor_model.dart
lib/models/request_model.dart
lib/models/response_request_model.dart
lib/models/specialty_vendor_model.dart
lib/models/user_model.dart
lib/models/vendor_brand_car_model.dart
lib/temp.dart
lib/widgets/arrow_back_widget.dart
lib/widgets/banners/banner_widget.dart
lib/widgets/card_container_widget.dart
lib/widgets/components.dart
lib/widgets/container_fields_widget.dart
lib/widgets/custom_button.dart
lib/widgets/custom_container_listtile_widget.dart
lib/widgets/custom_empty_widget.dart
lib/widgets/custom_fields/build_dynamic_fields_widget.dart
lib/widgets/custom_loading.dart
lib/widgets/custom_textfield.dart
lib/widgets/customButton2.dart
lib/widgets/dropdown_search/categories_dropdown_search.dart
lib/widgets/dropdown_search/category_dropdown_builder_multiselection_widget.dart
lib/widgets/dropdown_search/cities_dropdown_search.dart
lib/widgets/dropdown_search/city_dropdown_builder_multiselection_widget.dart
lib/widgets/dropdown_search/city_dropdown_search.dart
lib/widgets/faq_item_widget.dart
lib/widgets/icon_comp.dart
lib/widgets/images/add_image_widget.dart
lib/widgets/images/custom_image.dart
lib/widgets/info_widget.dart
lib/widgets/item_settings_comp.dart
lib/widgets/item_table_widget.dart
lib/widgets/my_account/info_account_card_widget.dart
lib/widgets/ontap_container_widget.dart
lib/widgets/request_status_widget.dart
lib/widgets/section_badge_widget.dart
lib/widgets/section_label_widget.dart
lib/widgets/shared/complaint_vendor_service_widget.dart
lib/widgets/vendor/dashboard_item_home.dart
lib/widgets/vendor/request_vendor_card.dart
lib/widgets/vendor/response_vendor_card.dart
lib/widgets/vertical_divider_widget.dart
pubspec.yaml
README.md
repomix.config.json
test/widget_test.dart
```

# Files

## File: .repomixignore
````
 1: .dart_tool/
 2: .idea/
 3: .vscode/
 4: build/
 5: android/
 6: ios/
 7: web/
 8: linux/
 9: windows/
10: macos/
11: *.lock
12: *.log
13: .git/
````

## File: repomix.config.json
````json
 1: {
 2:   "output": {
 3:     "filePath": "repomix-output.md",
 4:     "style": "markdown",
 5:     "headerText": "Car Mediator Mobile App Codebase Summary",
 6:     "showLineNumbers": true
 7:   },
 8:   "ignore": {
 9:     "useGitignore": true,
10:     "useDefaultPatterns": true,
11:     "customPatterns": [
12:       ".dart_tool/**",
13:       ".idea/**",
14:       ".vscode/**",
15:       "build/**",
16:       "android/**",
17:       "ios/**",
18:       "web/**",
19:       "linux/**",
20:       "windows/**",
21:       "macos/**",
22:       "*.lock",
23:       "*.log",
24:       ".git/**"
25:     ]
26:   }
27: }
````

## File: .gitignore
````
 1: # Miscellaneous
 2: *.class
 3: *.log
 4: *.pyc
 5: *.swp
 6: .DS_Store
 7: .atom/
 8: .buildlog/
 9: .history
10: .svn/
11: migrate_working_dir/
12: 
13: # IntelliJ related
14: *.iml
15: *.ipr
16: *.iws
17: .idea/
18: 
19: # The .vscode folder contains launch configuration and tasks you configure in
20: # VS Code which you may wish to be included in version control, so this line
21: # is commented out by default.
22: #.vscode/
23: 
24: # Flutter/Dart/Pub related
25: **/doc/api/
26: **/ios/Flutter/.last_build_id
27: .dart_tool/
28: .flutter-plugins
29: .flutter-plugins-dependencies
30: .pub-cache/
31: .pub/
32: /build/
33: 
34: # Symbolication related
35: app.*.symbols
36: 
37: # Obfuscation related
38: app.*.map.json
39: 
40: # Android Studio will place build artifacts here
41: /android/app/debug
42: /android/app/profile
43: /android/app/release
````

## File: .metadata
````
 1: # This file tracks properties of this Flutter project.
 2: # Used by Flutter tool to assess capabilities and perform upgrades etc.
 3: #
 4: # This file should be version controlled and should not be manually edited.
 5: 
 6: version:
 7:   revision: "db50e20168db8fee486b9abf32fc912de3bc5b6a"
 8:   channel: "stable"
 9: 
10: project_type: app
11: 
12: # Tracks metadata for the flutter migrate command
13: migration:
14:   platforms:
15:     - platform: root
16:       create_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
17:       base_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
18:     - platform: windows
19:       create_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
20:       base_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
21: 
22:   # User provided section
23: 
24:   # List of Local paths (relative to this file) that should be
25:   # ignored by the migrate tool.
26:   #
27:   # Files that are not part of the templates will be ignored by default.
28:   unmanaged_files:
29:     - 'lib/main.dart'
30:     - 'ios/Runner.xcodeproj/project.pbxproj'
````

## File: analysis_options.yaml
````yaml
 1: # This file configures the analyzer, which statically analyzes Dart code to
 2: # check for errors, warnings, and lints.
 3: #
 4: # The issues identified by the analyzer are surfaced in the UI of Dart-enabled
 5: # IDEs (https://dart.dev/tools#ides-and-editors). The analyzer can also be
 6: # invoked from the command line by running `flutter analyze`.
 7: 
 8: # The following line activates a set of recommended lints for Flutter apps,
 9: # packages, and plugins designed to encourage good coding practices.
10: include: package:flutter_lints/flutter.yaml
11: 
12: linter:
13:   # The lint rules applied to this project can be customized in the
14:   # section below to disable rules from the `package:flutter_lints/flutter.yaml`
15:   # included above or to enable additional rules. A list of all available lints
16:   # and their documentation is published at https://dart.dev/lints.
17:   #
18:   # Instead of disabling a lint rule for the entire project in the
19:   # section below, it can also be suppressed for a single line of code
20:   # or a specific dart file by using the `// ignore: name_of_lint` and
21:   # `// ignore_for_file: name_of_lint` syntax on the line or in the file
22:   # producing the lint.
23:   rules:
24:     # avoid_print: false  # Uncomment to disable the `avoid_print` rule
25:     # prefer_single_quotes: true  # Uncomment to enable the `prefer_single_quotes` rule
26: 
27: # Additional information about this file can be found at
28: # https://dart.dev/guides/language/analysis-options
````

## File: devtools_options.yaml
````yaml
1: description: This file stores settings for Dart & Flutter DevTools.
2: documentation: https://docs.flutter.dev/tools/devtools/extensions#configure-extension-enablement-states
3: extensions:
4:   - provider: true
````

## File: lib/chatttt.dart
````dart
  1: import 'dart:convert';
  2: import 'package:car_mediator_mobile/core/data_sources/local/secure_storage.dart';
  3: import 'package:flutter/material.dart';
  4: import 'package:web_socket_channel/web_socket_channel.dart';
  5: import 'package:http/http.dart' as http;
  6: 
  7: class ChatScreen2 extends StatefulWidget {
  8:   @override
  9:   State<ChatScreen2> createState() => _ChatScreen2State();
 10: }
 11: 
 12: class _ChatScreen2State extends State<ChatScreen2> {
 13:   final TextEditingController _controller = TextEditingController();
 14:   final List<String> messages = [];
 15:   late WebSocketChannel channel;
 16: 
 17:   final String laravelIp = '192.168.1.34'; // استبدل بـ IP الكمبيوتر
 18:   final String reverbAppKey = '0z58lxjbuvh5gyymgd0n'; // من .env
 19: 
 20:   @override
 21:   void initState() {
 22:     super.initState();
 23:     connectWebSocket();
 24:   }
 25: 
 26:   Future<void> connectWebSocket() async {
 27:     channel = WebSocketChannel.connect(
 28:       Uri.parse(
 29:         'ws://$laravelIp:8080/app/$reverbAppKey',
 30:       ),
 31:     );
 32: 
 33:     // الاشتراك في القناة العامة
 34:     // channel.sink.add(jsonEncode({
 35:     //   "event": "pusher:subscribe",
 36:     //   "data": {"channel": "chat"}
 37:     // }));
 38:     final String? token = await SecureStorage.getToken();
 39:     print(token);
 40:     channel.sink.add(jsonEncode({
 41:       "event": "pusher:subscribe",
 42:       "data": {
 43:         "auth": token,
 44:         "channel": "private-chat.2.3"
 45:       }
 46:     }));
 47: 
 48:     // الاستماع للرسائل
 49:     // channel.stream.listen((event) {
 50:     //   final decoded = jsonDecode(event);
 51:     //   print("New message channel.stream.listen ----------------"+ decoded["event"]);
 52:     //   if (decoded["event"] == "message.sent") {
 53:     //     print("message.sent----------------");
 54:     //     final data = jsonDecode(decoded['data']);
 55:     //     setState(() {
 56:     //       print("${data['user']}: ${data['message']}");
 57:     //       messages.add("${data['user']}: ${data['message']}");
 58:     //     });
 59:     //   }
 60:    // });
 61:     channel.stream.listen((event) {
 62:       final decoded = jsonDecode(event);
 63:       print("New message channel.stream.listen ----------------"+ decoded["event"]);
 64:       switch (decoded['event']) {
 65:         case 'pusher:ping':
 66:           channel.sink.add(jsonEncode({"event": "pusher:pong"}));
 67:           break;
 68:         case 'message.sent':
 69:           final data = jsonDecode(decoded['data'] );;
 70:           print("New message from ${data['user']}: ${data['message']}");
 71:           break;
 72:         default:
 73:           print("Other event: ${decoded['event']}");
 74:       }
 75:     });
 76: 
 77:   }
 78: 
 79:   // void sendMessage(String text) async {
 80:   //   if (text.trim().isEmpty) return;
 81:   //
 82:   //   // إرسال POST إلى Laravel API
 83:   //   final response = await http.post(
 84:   //     Uri.parse('http://$laravelIp/api/message'),
 85:   //     body: {
 86:   //       'user': 'UserFlutter', // يمكنك تغيير اسم المستخدم
 87:   //       'message': text,
 88:   //     },
 89:   //   );
 90:   //
 91:   //   if (response.statusCode == 200) {
 92:   //     print('--------------------------statusCodee 200');
 93:   //     _controller.clear();
 94:   //   } else {
 95:   //     print('Failed to send message');
 96:   //   }
 97:   // }
 98:   Future<void> sendMessage(String msg) async {
 99:     final String? token = await SecureStorage.getToken();
100:     await http.post(
101:       Uri.parse('http://192.168.1.34/api/message'),
102:       headers: {'Authorization': 'Bearer $token'},
103:       body: {
104:         'from_user_id': '2',
105:         'to_user_id': '3',
106:         'message': msg,
107:       },
108:     );
109:   }
110: 
111: 
112:   @override
113:   void dispose() {
114:     channel.sink.close();
115:     _controller.dispose();
116:     super.dispose();
117:   }
118: 
119:   @override
120:   Widget build(BuildContext context) {
121:     return Scaffold(
122:       appBar: AppBar(title: Text('Public Chat')),
123:       body: Column(
124:         children: [
125:           Expanded(
126:             child: ListView.builder(
127:               itemCount: messages.length,
128:               itemBuilder: (context, index) => ListTile(
129:                 title: Text(messages[index]),
130:               ),
131:             ),
132:           ),
133:           Padding(
134:             padding: EdgeInsets.all(8.0),
135:             child: Row(
136:               children: [
137:                 Expanded(
138:                   child: TextField(
139:                     controller: _controller,
140:                     decoration: InputDecoration(
141:                       hintText: 'Type a message',
142:                       border: OutlineInputBorder(),
143:                     ),
144:                   ),
145:                 ),
146:                 SizedBox(width: 8),
147:                 ElevatedButton(
148:                   onPressed: () => sendMessage(_controller.text),
149:                   child: Text('Send'),
150:                 ),
151:               ],
152:             ),
153:           ),
154:         ],
155:       ),
156:     );
157:   }
158: }
````

## File: lib/core/adapters/ads_banner_entity.dart
````dart
 1: import 'package:hive/hive.dart';
 2: 
 3: import '../utils/constants/constants.dart';
 4: 
 5: part 'ads_banner_entity.g.dart';
 6: 
 7: @HiveType(typeId: AdapterTypeId.AdsBanners)
 8: class AdsBannerEntity extends HiveObject {
 9:   @HiveField(0)
10:   final int id;
11:   @HiveField(1)
12:   final String adsImage;
13:   @HiveField(2)
14:   final bool isActive;
15: 
16:   AdsBannerEntity({
17:     required this.id,
18:     required this.adsImage,
19:     required this.isActive
20:   });
21: 
22:   factory AdsBannerEntity.fromJson(Map<String, dynamic> json) => AdsBannerEntity(
23:     id: json['id'] as int ?? 0,
24:     adsImage: json['ads_image'] as String ?? '',
25:     isActive: json['is_active'] as bool ?? false,
26:   );
27: 
28:   Map<String, dynamic> toJson() {
29:     return {
30:       'id': id,
31:       'ads_image': adsImage,
32:       'is_active': isActive
33:     };
34:   }
35: }
````

## File: lib/core/adapters/ads_banner_entity.g.dart
````dart
 1: // GENERATED CODE - DO NOT MODIFY BY HAND
 2: 
 3: part of 'ads_banner_entity.dart';
 4: 
 5: // **************************************************************************
 6: // TypeAdapterGenerator
 7: // **************************************************************************
 8: 
 9: class AdsBannerEntityAdapter extends TypeAdapter<AdsBannerEntity> {
10:   @override
11:   final int typeId = 5;
12: 
13:   @override
14:   AdsBannerEntity read(BinaryReader reader) {
15:     final numOfFields = reader.readByte();
16:     final fields = <int, dynamic>{
17:       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
18:     };
19:     return AdsBannerEntity(
20:       id: fields[0] as int,
21:       adsImage: fields[1] as String,
22:       isActive: fields[2] as bool,
23:     );
24:   }
25: 
26:   @override
27:   void write(BinaryWriter writer, AdsBannerEntity obj) {
28:     writer
29:       ..writeByte(3)
30:       ..writeByte(0)
31:       ..write(obj.id)
32:       ..writeByte(1)
33:       ..write(obj.adsImage)
34:       ..writeByte(2)
35:       ..write(obj.isActive);
36:   }
37: 
38:   @override
39:   int get hashCode => typeId.hashCode;
40: 
41:   @override
42:   bool operator ==(Object other) =>
43:       identical(this, other) ||
44:       other is AdsBannerEntityAdapter &&
45:           runtimeType == other.runtimeType &&
46:           typeId == other.typeId;
47: }
````

## File: lib/core/adapters/brand_car_entity.dart
````dart
 1: import 'package:hive/hive.dart';
 2: 
 3: import '../utils/constants/constants.dart';
 4: 
 5: part 'brand_car_entity.g.dart';
 6: 
 7: @HiveType(typeId: AdapterTypeId.brandsCars)
 8: class BrandCarEntity extends HiveObject {
 9:   @HiveField(0)
10:   final int id;
11:   @HiveField(1)
12:   final String brandCarNameAr;
13:   @HiveField(2)
14:   final String brandCarNameEn;
15: 
16:   BrandCarEntity({
17:     required this.id,
18:     required this.brandCarNameAr,
19:     required this.brandCarNameEn,
20:   });
21: 
22:   factory BrandCarEntity.fromJson(Map<String, dynamic> json) => BrandCarEntity(
23:         id: json['id'] as int ?? 0,
24:         brandCarNameAr: json['brand_name_ar'] as String ?? '',
25:         brandCarNameEn: json['brand_name_en'] as String ?? '',
26:       );
27: 
28:   Map<String, dynamic> toJson() {
29:     return {
30:       'id': id,
31:       'brand_name_ar': brandCarNameAr,
32:       'brand_name_en': brandCarNameEn
33:     };
34:   }
35: }
````

## File: lib/core/adapters/brand_car_entity.g.dart
````dart
 1: // GENERATED CODE - DO NOT MODIFY BY HAND
 2: 
 3: part of 'brand_car_entity.dart';
 4: 
 5: // **************************************************************************
 6: // TypeAdapterGenerator
 7: // **************************************************************************
 8: 
 9: class BrandCarEntityAdapter extends TypeAdapter<BrandCarEntity> {
10:   @override
11:   final int typeId = 1;
12: 
13:   @override
14:   BrandCarEntity read(BinaryReader reader) {
15:     final numOfFields = reader.readByte();
16:     final fields = <int, dynamic>{
17:       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
18:     };
19:     return BrandCarEntity(
20:       id: fields[0] as int,
21:       brandCarNameAr: fields[1] as String,
22:       brandCarNameEn: fields[2] as String,
23:     );
24:   }
25: 
26:   @override
27:   void write(BinaryWriter writer, BrandCarEntity obj) {
28:     writer
29:       ..writeByte(3)
30:       ..writeByte(0)
31:       ..write(obj.id)
32:       ..writeByte(1)
33:       ..write(obj.brandCarNameAr)
34:       ..writeByte(2)
35:       ..write(obj.brandCarNameEn);
36:   }
37: 
38:   @override
39:   int get hashCode => typeId.hashCode;
40: 
41:   @override
42:   bool operator ==(Object other) =>
43:       identical(this, other) ||
44:       other is BrandCarEntityAdapter &&
45:           runtimeType == other.runtimeType &&
46:           typeId == other.typeId;
47: }
````

## File: lib/core/adapters/category_entity.dart
````dart
 1: import 'package:hive/hive.dart';
 2: 
 3: import '../utils/constants/constants.dart';
 4: 
 5: part 'category_entity.g.dart';
 6: 
 7: @HiveType(typeId: AdapterTypeId.categories)
 8: class CategoryEntity extends HiveObject {
 9:   @HiveField(0)
10:   final int id;
11:   @HiveField(1)
12:   final String catNameAr;
13:   @HiveField(2)
14:   final String catNameEn;
15:   @HiveField(3)
16:   final String catIconPath;
17:   @HiveField(4)
18:   final String commissionType;
19:   @HiveField(5)
20:   final double commission;
21:   @HiveField(6)
22:   final String active;
23: 
24:   CategoryEntity({
25:     required this.id,
26:     required this.catNameAr,
27:     required this.catNameEn,
28:     required this.catIconPath,
29:     required this.commissionType,
30:     required this.commission,
31:     required this.active
32:   });
33: 
34:   factory CategoryEntity.fromJson(Map<String, dynamic> json) => CategoryEntity(
35:     id: json['id'] as int ?? 0,
36:     catNameAr: json['cat_name_ar'] as String ?? '',
37:     catNameEn: json['cat_name_en'] as String ?? '',
38:     catIconPath: json['cat_icon_path'] as String ?? '',
39:     commissionType: json['commission_type'] as String ?? '',
40:     commission: (json['commission'] is double) ? json['commission'] : double.parse(json['commission'] ?? '0.0'),
41:     active: json['active'] as String ?? '',
42:   );
43: 
44:   Map<String, dynamic> toJson() {
45:     return {
46:       'id': id,
47:       'cat_name_ar': catNameAr,
48:       'cat_name_en': catNameEn,
49:       'cat_icon_path': catIconPath,
50:       'commission_type': commissionType,
51:       'commission': commission,
52:       'active': active
53:     };
54:   }
55: }
````

## File: lib/core/adapters/category_entity.g.dart
````dart
 1: // GENERATED CODE - DO NOT MODIFY BY HAND
 2: 
 3: part of 'category_entity.dart';
 4: 
 5: // **************************************************************************
 6: // TypeAdapterGenerator
 7: // **************************************************************************
 8: 
 9: class CategoryEntityAdapter extends TypeAdapter<CategoryEntity> {
10:   @override
11:   final int typeId = 2;
12: 
13:   @override
14:   CategoryEntity read(BinaryReader reader) {
15:     final numOfFields = reader.readByte();
16:     final fields = <int, dynamic>{
17:       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
18:     };
19:     return CategoryEntity(
20:       id: fields[0] as int,
21:       catNameAr: fields[1] as String,
22:       catNameEn: fields[2] as String,
23:       catIconPath: fields[3] as String,
24:       commissionType: fields[4] as String,
25:       commission: fields[5] as double,
26:       active: fields[6] as String,
27:     );
28:   }
29: 
30:   @override
31:   void write(BinaryWriter writer, CategoryEntity obj) {
32:     writer
33:       ..writeByte(7)
34:       ..writeByte(0)
35:       ..write(obj.id)
36:       ..writeByte(1)
37:       ..write(obj.catNameAr)
38:       ..writeByte(2)
39:       ..write(obj.catNameEn)
40:       ..writeByte(3)
41:       ..write(obj.catIconPath)
42:       ..writeByte(4)
43:       ..write(obj.commissionType)
44:       ..writeByte(5)
45:       ..write(obj.commission)
46:       ..writeByte(6)
47:       ..write(obj.active);
48:   }
49: 
50:   @override
51:   int get hashCode => typeId.hashCode;
52: 
53:   @override
54:   bool operator ==(Object other) =>
55:       identical(this, other) ||
56:       other is CategoryEntityAdapter &&
57:           runtimeType == other.runtimeType &&
58:           typeId == other.typeId;
59: }
````

## File: lib/core/adapters/category_has_brand_field_entity.dart
````dart
 1: import 'package:hive/hive.dart';
 2: 
 3: import '../utils/constants/constants.dart';
 4: 
 5: part 'category_has_brand_field_entity.g.dart';
 6: 
 7: @HiveType(typeId: AdapterTypeId.categoryHasBrandField)
 8: class CategoryHasBrandFieldEntity extends HiveObject {
 9:   @HiveField(0)
10:   final int id;
11:   @HiveField(1)
12:   final int categoryId;
13: 
14:   CategoryHasBrandFieldEntity({
15:     required this.id,
16:      required this.categoryId
17:   });
18: 
19:   factory CategoryHasBrandFieldEntity.fromJson(Map<String, dynamic> json) => CategoryHasBrandFieldEntity(
20:       id: json['id'] as int ?? 0,
21:       categoryId: json['category_id'] as int ?? 0,
22:   );
23: 
24:   Map<String, dynamic> toJson() {
25:     return {
26:       'id': id,
27:       'category_id': categoryId
28:     };
29:   }
30: }
````

## File: lib/core/adapters/category_has_brand_field_entity.g.dart
````dart
 1: // GENERATED CODE - DO NOT MODIFY BY HAND
 2: 
 3: part of 'category_has_brand_field_entity.dart';
 4: 
 5: // **************************************************************************
 6: // TypeAdapterGenerator
 7: // **************************************************************************
 8: 
 9: class CategoryHasBrandFieldEntityAdapter
10:     extends TypeAdapter<CategoryHasBrandFieldEntity> {
11:   @override
12:   final int typeId = 3;
13: 
14:   @override
15:   CategoryHasBrandFieldEntity read(BinaryReader reader) {
16:     final numOfFields = reader.readByte();
17:     final fields = <int, dynamic>{
18:       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
19:     };
20:     return CategoryHasBrandFieldEntity(
21:       id: fields[0] as int,
22:       categoryId: fields[1] as int,
23:     );
24:   }
25: 
26:   @override
27:   void write(BinaryWriter writer, CategoryHasBrandFieldEntity obj) {
28:     writer
29:       ..writeByte(2)
30:       ..writeByte(0)
31:       ..write(obj.id)
32:       ..writeByte(1)
33:       ..write(obj.categoryId);
34:   }
35: 
36:   @override
37:   int get hashCode => typeId.hashCode;
38: 
39:   @override
40:   bool operator ==(Object other) =>
41:       identical(this, other) ||
42:       other is CategoryHasBrandFieldEntityAdapter &&
43:           runtimeType == other.runtimeType &&
44:           typeId == other.typeId;
45: }
````

## File: lib/core/adapters/city_entity.dart
````dart
 1: import 'package:hive/hive.dart';
 2: 
 3: import '../utils/constants/constants.dart';
 4: 
 5: part 'city_entity.g.dart';
 6: 
 7: @HiveType(typeId: AdapterTypeId.cities)
 8: class CityEntity extends HiveObject {
 9:   @HiveField(0)
10:   final int id;
11:   @HiveField(1)
12:   final String cityNameAr;
13:   @HiveField(2)
14:   final String cityNameEn;
15:   @HiveField(3)
16:   final bool isActive;
17: 
18:   CityEntity({
19:     required this.id,
20:     required this.cityNameAr,
21:     required this.cityNameEn,
22:     required this.isActive,
23:   });
24: 
25:   factory CityEntity.fromJson(Map<String, dynamic> json) => CityEntity(
26:     id: json['id'] as int ?? 0,
27:     cityNameAr: json['city_name_ar'] as String ?? '',
28:     cityNameEn: json['city_name_en'] as String ?? '',
29:     isActive: json['is_active'] as bool ?? false,
30:   );
31: 
32:   Map<String, dynamic> toJson() {
33:     return {
34:       'id': id,
35:       'city_name_ar': cityNameAr,
36:       'city_name_en': cityNameEn,
37:       'is_active': isActive
38:     };
39:   }
40: 
41: }
````

## File: lib/core/adapters/city_entity.g.dart
````dart
 1: // GENERATED CODE - DO NOT MODIFY BY HAND
 2: 
 3: part of 'city_entity.dart';
 4: 
 5: // **************************************************************************
 6: // TypeAdapterGenerator
 7: // **************************************************************************
 8: 
 9: class CityEntityAdapter extends TypeAdapter<CityEntity> {
10:   @override
11:   final int typeId = 0;
12: 
13:   @override
14:   CityEntity read(BinaryReader reader) {
15:     final numOfFields = reader.readByte();
16:     final fields = <int, dynamic>{
17:       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
18:     };
19:     return CityEntity(
20:       id: fields[0] as int,
21:       cityNameAr: fields[1] as String,
22:       cityNameEn: fields[2] as String,
23:       isActive: fields[3] as bool,
24:     );
25:   }
26: 
27:   @override
28:   void write(BinaryWriter writer, CityEntity obj) {
29:     writer
30:       ..writeByte(4)
31:       ..writeByte(0)
32:       ..write(obj.id)
33:       ..writeByte(1)
34:       ..write(obj.cityNameAr)
35:       ..writeByte(2)
36:       ..write(obj.cityNameEn)
37:       ..writeByte(3)
38:       ..write(obj.isActive);
39:   }
40: 
41:   @override
42:   int get hashCode => typeId.hashCode;
43: 
44:   @override
45:   bool operator ==(Object other) =>
46:       identical(this, other) ||
47:       other is CityEntityAdapter &&
48:           runtimeType == other.runtimeType &&
49:           typeId == other.typeId;
50: }
````

## File: lib/core/adapters/custom_field_entity.dart
````dart
 1: import 'package:hive/hive.dart';
 2: 
 3: import '../utils/constants/constants.dart';
 4: 
 5: part 'custom_field_entity.g.dart';
 6: 
 7: @HiveType(typeId: AdapterTypeId.customFields)
 8: class CustomFieldEntity extends HiveObject {
 9:   @HiveField(0)
10:   final int id;
11:   @HiveField(1)
12:   final int categoryId;
13:   @HiveField(2)
14:   final String labelAr;
15:   @HiveField(3)
16:   final String labelEn;
17:   @HiveField(4)
18:   final String fieldName;
19:   @HiveField(5)
20:   final String fieldType;
21:   @HiveField(6)
22:   final bool isRequired;
23:   @HiveField(7)
24:   final List<String>? options;
25:   @HiveField(8)
26:   final int? minLength;
27:   @HiveField(9)
28:   final int? maxLength;
29: 
30:   CustomFieldEntity({
31:     required this.id,
32:     required this.categoryId,
33:     required this.labelAr,
34:     required this.labelEn,
35:     required this.fieldName,
36:     required this.fieldType,
37:     required this.isRequired,
38:      this.options,
39:      this.minLength,
40:      this.maxLength,
41:   });
42: 
43:   factory CustomFieldEntity.fromJson(Map<String, dynamic> json) => CustomFieldEntity(
44:     id: json['id'] as int ?? 0,
45:     categoryId: json['category_id'] as int ?? 0,
46:     labelAr: json['label_ar'] as String ?? '',
47:     labelEn: json['label_en'] as String ?? '',
48:     fieldName: json['field_name'] as String ?? '',
49:     fieldType: json['field_type'] as String ?? '',
50:     isRequired: json['is_required'] as bool ?? false,
51:     options: json['options'] != null
52:         ? List<String>.from(json['options'])
53:         : null,
54:     minLength: json['min_length'] as int?,
55:     maxLength: json['max_length'] as int?,
56:   );
57: 
58:   Map<String, dynamic>? toJson() {
59:     return {
60:       'id': id,
61:       'category_id': categoryId,
62:       'label_ar': labelAr,
63:       'label_en': labelEn,
64:       'field_name': fieldName,
65:       'field_type': fieldType,
66:       'is_required': isRequired,
67:       'options': options,
68:       'min_length': minLength,
69:       'max_length': maxLength
70:     };
71:   }
72: }
````

## File: lib/core/adapters/custom_field_entity.g.dart
````dart
 1: // GENERATED CODE - DO NOT MODIFY BY HAND
 2: 
 3: part of 'custom_field_entity.dart';
 4: 
 5: // **************************************************************************
 6: // TypeAdapterGenerator
 7: // **************************************************************************
 8: 
 9: class CustomFieldEntityAdapter extends TypeAdapter<CustomFieldEntity> {
10:   @override
11:   final int typeId = 4;
12: 
13:   @override
14:   CustomFieldEntity read(BinaryReader reader) {
15:     final numOfFields = reader.readByte();
16:     final fields = <int, dynamic>{
17:       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
18:     };
19:     return CustomFieldEntity(
20:       id: fields[0] as int,
21:       categoryId: fields[1] as int,
22:       labelAr: fields[2] as String,
23:       labelEn: fields[3] as String,
24:       fieldName: fields[4] as String,
25:       fieldType: fields[5] as String,
26:       isRequired: fields[6] as bool,
27:       options: (fields[7] as List?)?.cast<String>(),
28:       minLength: fields[8] as int?,
29:       maxLength: fields[9] as int?,
30:     );
31:   }
32: 
33:   @override
34:   void write(BinaryWriter writer, CustomFieldEntity obj) {
35:     writer
36:       ..writeByte(10)
37:       ..writeByte(0)
38:       ..write(obj.id)
39:       ..writeByte(1)
40:       ..write(obj.categoryId)
41:       ..writeByte(2)
42:       ..write(obj.labelAr)
43:       ..writeByte(3)
44:       ..write(obj.labelEn)
45:       ..writeByte(4)
46:       ..write(obj.fieldName)
47:       ..writeByte(5)
48:       ..write(obj.fieldType)
49:       ..writeByte(6)
50:       ..write(obj.isRequired)
51:       ..writeByte(7)
52:       ..write(obj.options)
53:       ..writeByte(8)
54:       ..write(obj.minLength)
55:       ..writeByte(9)
56:       ..write(obj.maxLength);
57:   }
58: 
59:   @override
60:   int get hashCode => typeId.hashCode;
61: 
62:   @override
63:   bool operator ==(Object other) =>
64:       identical(this, other) ||
65:       other is CustomFieldEntityAdapter &&
66:           runtimeType == other.runtimeType &&
67:           typeId == other.typeId;
68: }
````

## File: lib/core/data_sources/local/cache_helper.dart
````dart
  1: import 'package:car_mediator_mobile/core/adapters/brand_car_entity.dart';
  2: import 'package:car_mediator_mobile/core/adapters/category_has_brand_field_entity.dart';
  3: import 'package:car_mediator_mobile/core/adapters/city_entity.dart';
  4: import 'package:car_mediator_mobile/core/adapters/custom_field_entity.dart';
  5: import 'package:hive_flutter/hive_flutter.dart';
  6: import '../../adapters/ads_banner_entity.dart';
  7: import '../../adapters/category_entity.dart';
  8: 
  9: class CacheHelper {
 10:   // Box names
 11:   static const String _citiesBox = 'cities_box';
 12:   static const String _brandsBox = 'brand_car_box';
 13:   static const String _categoriesBox = 'category_box';
 14:   static const String _categoryBrandFieldsBox = 'category_has_brand_field_box';
 15:   static const String _customFieldsBox = 'custom_field_box';
 16:   static const String _adsBannersBox = 'ads_banners_box';
 17:   static const String _generalAppBox = 'general_app_box';
 18: 
 19:   static const String _current_user_model_key = 'current_user_model_key';
 20: 
 21:   static const String _suffixLastUpdateKey = '_last_update_at';
 22: 
 23:   static const String lastUpdateTimestampsMapKey = 'last_update_timestamps_map_key';
 24: 
 25:   // initialize hive in main
 26:   static Future<void> init() async {
 27:     await Hive.initFlutter();
 28:     // Register all adapters
 29:     Hive.registerAdapter(CityEntityAdapter());
 30:     Hive.registerAdapter(BrandCarEntityAdapter());
 31:     Hive.registerAdapter(CategoryEntityAdapter());
 32:     Hive.registerAdapter(CategoryHasBrandFieldEntityAdapter());
 33:     Hive.registerAdapter(CustomFieldEntityAdapter());
 34:     Hive.registerAdapter(AdsBannerEntityAdapter());
 35:     // Open all boxes
 36:     await Future.wait([
 37:       Hive.openBox(_generalAppBox),
 38:       Hive.openBox<CityEntity>(_citiesBox),
 39:       Hive.openBox<BrandCarEntity>(_brandsBox),
 40:       Hive.openBox<CategoryEntity>(_categoriesBox),
 41:       Hive.openBox<CategoryHasBrandFieldEntity>(_categoryBrandFieldsBox),
 42:       Hive.openBox<CustomFieldEntity>(_customFieldsBox),
 43:       Hive.openBox<AdsBannerEntity>(_adsBannersBox),
 44:     ]);
 45:   }
 46:  /// save data to a general app box
 47:   static Future<void> _saveDataToAppBox<T>(String key, T value) async {
 48:     try {
 49:       await Hive.box(_generalAppBox).put(key, value);
 50:     } catch (e) {
 51:       print('saveDataToAppBox ---> Error saving data: $e');
 52:     }
 53:   }
 54:   /// get data from a general app box
 55:   static T? _getDataFromAppBox<T>(String key) {
 56:     try {
 57:       return Hive.box(_generalAppBox).get(key) as T?;
 58:     } catch (e) {
 59:       print('getDataFromAppBox ---> Error getting data: $e');
 60:       return null;
 61:     }
 62:   }
 63:   /// delete from a general app box
 64:   static Future<void> _deleteDataFromAppBox(String key) async {
 65:     try {
 66:       await Hive.box(_generalAppBox).delete(key);
 67:     } catch (e) {
 68:       print('deleteDataFromAppBox ---> Error deleting data: $e');
 69:     }
 70:   }
 71: 
 72:   /// Generic method to save a list of items to a box
 73:   static Future<void> _saveItemsByAdapter<T>(String boxName, List<T> items) async {
 74:     final box = Hive.box<T>(boxName);
 75:     await box.clear();
 76:     await box.addAll(items);
 77:   }
 78: 
 79:   /// Generic method to get all items from a box
 80:   static List<T> _getAllItemsByAdapter<T>(String boxName) {
 81:     return Hive.box<T>(boxName).values.toList();
 82:   }
 83: 
 84:   //------------- cache last update times map ------------------
 85:   static Future<void> cacheLastUpdateTimestamps(Map<String, dynamic> timestamps) async {
 86:     for (var entry in timestamps.entries) {
 87:       await _saveDataToAppBox<String>(entry.key + _suffixLastUpdateKey, entry.value);
 88:     }
 89:   }
 90:   static String? getCacheLastUpdateTime(String key) {
 91:       return _getDataFromAppBox<String>(key);
 92:   }
 93: 
 94:  //------------- cache static data ------------------
 95:   // Cities
 96:   static Future<void> cacheCities(List<CityEntity> cities) async {
 97:     await _saveItemsByAdapter<CityEntity>(_citiesBox, cities);
 98:   }
 99: 
100:   static List<CityEntity> getCachedCities() {
101:     return _getAllItemsByAdapter<CityEntity>(_citiesBox);
102:   }
103: 
104:   // brands car
105:   static Future<void> cacheBrandsCars(List<BrandCarEntity> brands) async {
106:     await _saveItemsByAdapter<BrandCarEntity>(_brandsBox, brands);
107:   }
108: 
109:   static List<BrandCarEntity> getCachedBrandsCars() {
110:     return _getAllItemsByAdapter<BrandCarEntity>(_brandsBox);
111:   }
112: 
113:   // categories
114:   static Future<void> cacheCategories(List<CategoryEntity> categories) async {
115:     await _saveItemsByAdapter<CategoryEntity>(_categoriesBox, categories);
116:   }
117: 
118:   static List<CategoryEntity> getCachedCategories() {
119:     return _getAllItemsByAdapter<CategoryEntity>(_categoriesBox);
120:   }
121: 
122:   // category Has Brand Field
123:   static Future<void> cacheCategoryBrandFields(List<CategoryHasBrandFieldEntity> fields) async {
124:     await _saveItemsByAdapter<CategoryHasBrandFieldEntity>(_categoryBrandFieldsBox, fields);
125:   }
126: 
127:   static List<CategoryHasBrandFieldEntity> getCachedCategoryBrandFields() {
128:     return _getAllItemsByAdapter<CategoryHasBrandFieldEntity>(_categoryBrandFieldsBox);
129:   }
130: 
131:   // custom fields
132:   static Future<void> cacheCustomFields(List<CustomFieldEntity> fields) async {
133:     await _saveItemsByAdapter<CustomFieldEntity>(_customFieldsBox, fields);
134:   }
135: 
136:   static List<CustomFieldEntity> getCachedCustomFields() {
137:     return _getAllItemsByAdapter<CustomFieldEntity>(_customFieldsBox);
138:   }
139: 
140:   // ads banners
141:   static Future<void> cacheAdsBanners(List<AdsBannerEntity> banners) async {
142:     await _saveItemsByAdapter<AdsBannerEntity>(_adsBannersBox, banners);
143:   }
144: 
145:   static List<AdsBannerEntity> getCachedAdsBanners() {
146:     return _getAllItemsByAdapter<AdsBannerEntity>(_adsBannersBox);
147:   }
148: 
149:   //------------------- current users data ------------------
150:   static Future<void> cacheCurrentUserData(Map<String, dynamic> data) async {
151:     await _saveDataToAppBox<Map<String, dynamic>>(_current_user_model_key, data);
152:   }
153: 
154:   static Map<String, dynamic>? getCachedCurrentUserData() {
155:     final rawData = _getDataFromAppBox(_current_user_model_key);
156:     return  rawData != null ? Map<String, dynamic>.from(rawData) : null;
157:   }
158: 
159:   static Future<void> deleteCurrentUserData() async {
160:     return await _deleteDataFromAppBox(_current_user_model_key);
161:   }
162: 
163: }
````

## File: lib/core/data_sources/local/secure_storage.dart
````dart
 1: import 'package:flutter_secure_storage/flutter_secure_storage.dart';
 2: 
 3: class SecureStorage {
 4: 
 5:   static const _storage = FlutterSecureStorage();
 6: 
 7:   static const String _tokenKey = 'auth_token_key';
 8:   static const String _isLoggedIn = 'is_logged_in_key';
 9:   static const String _userNameKey = 'user_name_key';
10:   static const String _userPhoneKey = 'user_phone_key';
11:   static const String _userLogoKey = 'user_logo_key';
12:   static const String _useRoleKey = 'user_role_key';
13:   static const String _companyNameAr = 'company_name_ar_key';
14:   static const String _companyNameEn = 'company_name_en_key';
15:   static const String _notificationsCounterKey = 'notification_counter_key';
16: 
17: 
18:   static Future<void> saveToken(String token) async {
19:     await _storage.write(key: _tokenKey, value: token);
20:   }
21: 
22:   static Future<void> setIsLoggedIn(bool isLogin) async {
23:     await _storage.write(key: _isLoggedIn, value: isLogin.toString());
24:   }
25: 
26:   static Future<void> setUserRole(String role) async {
27:     await _storage.write(key: _useRoleKey, value: role);
28:   }
29: 
30:   static Future<bool> isLoggedIn() async {
31:     String? value = await _storage.read(key: _isLoggedIn);
32:     if (value == null) return false;
33:     return value.toLowerCase() == 'true';
34:   }
35: 
36:   static Future<String?> getToken() async {
37:     return await _storage.read(key: _tokenKey);
38:   }
39: 
40:   static Future<String?> getUserRole() async {
41:     return await _storage.read(key: _useRoleKey);
42:   }
43: 
44:   static Future<void> deleteToken() async {
45:     await _storage.delete(key: _tokenKey);
46:   }
47: 
48:   static Future<void> saveUserData({required String name, required String phone, required String logo, String? companyNameAr, String? companyNameEn}) async {
49:     await Future.wait([
50:     _storage.write(key: _userNameKey, value: name),
51:     _storage.write(key: _userPhoneKey, value: phone),
52:     _storage.write(key: _userLogoKey, value: logo),
53:     _storage.write(key: _companyNameAr, value: companyNameAr),
54:     _storage.write(key: _companyNameEn, value: companyNameEn),
55:     ]);
56:   }
57: 
58:   static Future<void> addNotificationCount() async {
59:     String? value = await _storage.read(key: _notificationsCounterKey);
60:     int _count = int.parse(value ?? '0') + 1;
61:     await _storage.write(key: _notificationsCounterKey, value: _count.toString());
62:   }
63: 
64:   static Future<String?> getUserName() async {
65:     return await _storage.read(key: _userNameKey);
66:   }
67: 
68:   static Future<String?> getUserPhone() async {
69:     return await _storage.read(key: _userPhoneKey);
70:   }
71:   static Future<String?> getLogo () async {
72:     return await _storage.read(key: _userLogoKey);
73:   }
74: 
75:   static Future<String?> getCompanyNameAr() async {
76:     return await _storage.read(key: _companyNameAr);
77:   }
78: 
79:   static Future<String?> getCompanyNameEn() async {
80:     return await _storage.read(key: _companyNameEn);
81:   }
82: 
83:   static Future<void> clearAllUserData() async {
84:     await Future.wait([
85:       _storage.delete(key: _tokenKey),
86:       _storage.delete(key: _userNameKey),
87:       _storage.delete(key: _userPhoneKey),
88:       _storage.delete(key: _userLogoKey),
89:       _storage.delete(key: _companyNameAr),
90:       _storage.delete(key: _companyNameEn),
91:     ]);
92:   }
93: 
94:   static Future<void> deleteAll() async {
95:      await _storage.deleteAll();
96:   }
97: }
98: 
99: // example: await SecureStorage.saveToken(token);
````

## File: lib/core/data_sources/remote/api_client.dart
````dart
  1: import 'dart:async';
  2: import 'dart:convert';
  3: import 'dart:io';
  4: import 'package:flutter/foundation.dart';
  5: import 'package:http/http.dart' as http;
  6: import 'package:path/path.dart';
  7: 
  8: import '../../errors/api_exceptions.dart';
  9: import '../../helpers/helpers.dart';
 10: 
 11: class ApiClient {
 12:   final String baseUrl;
 13:   final http.Client _client;
 14: 
 15:   static const Duration _defaultTimeout = Duration(seconds: 30 );
 16:   static const int _maxRetries = 3;
 17: 
 18:   ApiClient({required this.baseUrl, http.Client? client})
 19:       : _client = client ?? http.Client();
 20: 
 21:   /// Closes the underlying HTTP client and cleans up resources
 22:   void close() {
 23:     _client.close();
 24:   }
 25: 
 26:   Future<dynamic> get(String path, {Map<String, String>? headers, Map<String, dynamic>? queryParams, Duration? timeout}) async {
 27:     final uri = Uri.parse('$baseUrl$path').replace(queryParameters: queryParams);
 28:     try {
 29:       final response = await _withRetry<http.Response>(
 30:             ( ) async => await _client.get(uri, headers: headers),
 31:             timeout: timeout,
 32:       );
 33: 
 34:       return _handleResponse(uri, response);
 35:     } on SocketException {
 36:       throw NetworkException('الرجاء التحقق من اتصالك بالإنترنت.');
 37:     }
 38:   }
 39: 
 40:   Future<dynamic> post(String path, {Map<String, String>? headers, dynamic body, Duration? timeout}) async {
 41:     final uri = Uri.parse('$baseUrl$path');
 42:     try {
 43:       final bodyEncoded = jsonEncode(body);
 44:       Helper.logDebug('post request ---> $bodyEncoded');
 45:       final response = await _withRetry<http.Response>(
 46:             ( ) async =>  await _client.post(uri, headers: headers, body: bodyEncoded),
 47:             timeout: timeout,
 48:       );
 49: 
 50:       return _handleResponse(uri, response);
 51:     } on SocketException {
 52:       throw NetworkException('الرجاء التحقق من اتصالك بالإنترنت.');
 53:     }
 54:   }
 55: 
 56:   Future<dynamic> delete(String path, {Map<String, String>? headers, Duration? timeout}) async {
 57:     final uri = Uri.parse('$baseUrl$path');
 58:     try {
 59:       final response = await _withRetry<http.Response>(
 60:             ( ) async =>  await _client.delete(uri, headers: headers),
 61:             timeout: timeout,
 62:       );
 63: 
 64:       return _handleResponse(uri, response);
 65:     } on SocketException {
 66:       throw NetworkException('الرجاء التحقق من اتصالك بالإنترنت.');
 67:     }
 68:   }
 69: 
 70:   Future<dynamic> multipartRequest(
 71:     String path, {
 72:     required Map<String, String> fields,
 73:     List<File>? files,
 74:     Map<String, String>? headers,
 75:   }) async {
 76:     final uri = Uri.parse('$baseUrl$path');
 77:     try {
 78:       var request = http.MultipartRequest('POST', uri);
 79:       if (headers != null) request.headers.addAll(headers);
 80:       request.fields.addAll(fields);
 81:       Helper.logDebug('multipartRequest request ---> ${jsonEncode(fields)}');
 82: 
 83:       if (files != null) {
 84:         for (var file in files) {
 85:           request.files.add(await http.MultipartFile.fromPath(
 86:             'images[]', // أو اسم الحقل المطلوب في الـ API
 87:             file.path,
 88:             filename: basename(file.path),
 89:           ));
 90:         }
 91:       }
 92: 
 93:       final streamedResponse = await request.send();
 94:       final response = await http.Response.fromStream(streamedResponse);
 95:       return _handleResponse(uri, response);
 96:     } on SocketException {
 97:       throw NetworkException('الرجاء التحقق من اتصالك بالإنترنت.');
 98:     }
 99:   }
100: 
101:   Future<dynamic> multipartRequestSingleImage(
102:       String path, {
103:         required Map<String, String> fields,
104:         File? file,
105:         Map<String, String>? headers,
106:       }) async {
107:     final uri = Uri.parse('$baseUrl$path');
108:     try {
109:       var request = http.MultipartRequest('POST', uri);
110:       if (headers != null) request.headers.addAll(headers);
111:       request.fields.addAll(fields);
112:       Helper.logDebug('multipartRequest request ---> ${jsonEncode(fields)}');
113: 
114:       if(file !=null){
115:         var length = await file.length();
116:         var stream = http.ByteStream(file.openRead());
117:         var multipartFile = http.MultipartFile('image', stream, length, filename: basename(file.path));
118:         // add file to request
119:         request.files.add(multipartFile);
120:       }
121: 
122:       final streamedResponse = await request.send();
123:       final response = await http.Response.fromStream(streamedResponse);
124:       return _handleResponse(uri, response);
125:     } on SocketException {
126:       throw NetworkException('الرجاء التحقق من اتصالك بالإنترنت.');
127:     }
128:   }
129: 
130:   dynamic _handleResponse(final Uri uri, http.Response response) {
131:     dynamic body;
132:     try {
133:       body = json.decode(response.body);
134:     } catch (e) {
135:       body = null;
136:     }
137: 
138:     _logDebug(uri, body);
139: 
140:     if (response.statusCode >= 200 && response.statusCode < 300)  return body;
141: 
142:     switch (response.statusCode) {
143:       case 401:
144:         throw UnauthorizedException(body?['message'] ?? 'غير مصرح لك بالوصول.');
145:       case 403:
146:         throw UnauthorizedException( body?['message'] ?? 'ليس لديك الصلاحية لتنفيذ هذا الإجراء.');
147:       case 404:
148:         throw NotFoundException( body?['message'] ?? 'العنصر المطلوب غير موجود.');
149:       case 422:
150:         throw ValidationException(body?['message'] ?? 'البيانات المدخلة غير صالحة', body ?? {});
151:       case 429:
152:         throw TooManyRequestsException(body?['message'] ?? 'تم إرسال عدد كبير من الطلبات في وقت قصير. الرجاء الانتظار قليلاً ثم المحاولة مرة أخرى.');
153:       case 500:
154:         throw ServerException( 'حدث خطأ غير متوقع، يرجى المحاولة لاحقاً');
155:       default:
156:         throw UnknownApiException('حدث خطأ غير معروف. الرجاء المحاولة مرة أخرى.', response.statusCode);
157:     }
158:   }
159: 
160:   // --- embedded retry function ---
161:   // Executes a Future operation with retry and timeout logic.
162:   Future<T> _withRetry<T>(Future<T> Function() operation, { Duration? timeout}) async {
163:     int attempt = 0;
164:     while (true) {
165:       attempt++;
166:       try {
167:         // Apply timeout to the operation and execute it
168:         return await operation().timeout(timeout ?? _defaultTimeout);
169:       } catch (e) {
170:         // Retry only in specific cases
171:         if ((e is SocketException || e is TimeoutException || e is http.ClientException ) && attempt < _maxRetries) {
172:           Helper.logDebug("API call failed (attempt $attempt): $e. Retrying...");
173:           // Wait before the next retry
174:           await Future.delayed(const Duration(seconds: 2));
175:         } else {
176:           // If the error is of a different type (e.g. 404 from _handleResponse)
177:           // or we've reached the maximum number of retries, rethrow the error to end the operation.
178:           Helper.logDebug("API call failed permanently after $attempt attempts.");
179:           rethrow; // Rethrow the original error
180:         }
181:       }
182:     }
183:   }
184: 
185:   void _logDebug(final Uri uri, dynamic jsonResponse) {
186:     if (kDebugMode) {
187:       debugPrint('json---$uri-->$jsonResponse');
188:     }
189:   }
190: }
````

## File: lib/core/data_sources/remote/api_endpoints.dart
````dart
 1: class ApiEndpoints {
 2:   static const String checkCacheUpdates = 'cache/check-updates';
 3:   static const String loginWithOtp = 'auth/login-with-otp';
 4:   static const String register = 'auth/register';
 5:   static const String registerVendor = 'vendor/register-vendor';
 6:   static const String logout = 'auth/logout';
 7: 
 8:    static const String createConversation = 'chat/conversations/create-conversation';
 9:    static const String sendMessageChat = 'chat/messages/send';
10:    static const String userConversations = 'chat/conversations/user-conversations';
11:    static const String vendorConversations = 'chat/conversations/vendor-conversations';
12: 
13:   // users endpoints
14:   static const String checkEligibleVendors = 'user/request/check-eligible-vendors';
15:   static const String confirmOrderRequest = 'user/request/confirm-request';
16:   static const String ConfirmShippingRequest = 'user/request/confirm-shipping-request';
17:   static const String ConfirmPriceShippingRequest = 'user/request/confirm-price-shipping-request';
18:   static const String getMyRequestUser = 'user/my-requests';
19:   static const String getResponsesMyRequest = 'user/my-requests/responses';
20:   static const String getResponseRequestById = 'user/my-requests/response';
21:   static const String complaintVendorService = 'user/complaints/complaint-vendor-service';
22:   static const String updateStatusMyRequest = 'user/my-requests/update-status';
23:   static const String getUserProfile = 'user/profile';
24:   static const String updateUserProfile = 'user/profile/update';
25: 
26:   // vendor endpoints
27:   static const String getAllNewRequestsVendor = 'vendor/new-requests/get-all-new-requests';
28:   static const String detailsNewRequestsVendor = 'vendor/new-requests/details-new-requests';
29:   static const String sendResponseRequestVendor = 'vendor/responses-requests/send-response-request';
30:   static const String getMyResponseRequests = 'vendor/responses-requests/get-my-response-requests';
31:   static const String detailResponseRequests = 'vendor/responses-requests/details-response-request';
32:   static const String getCategoriesSpecialtyVendor = 'vendor/specialties/get-categories-specialty';
33:   static const String updateCategorySpecialtyVendor = 'vendor/specialties/update-category-specialty';
34:   static const String getVendorCitiesVendor = 'vendor/specialties/get-vendor-cities';
35:   static const String updateVendorCitiesVendor = 'vendor/specialties/update-vendor-cities';
36:   static const String getVendorBrandsCar = 'vendor/specialties/get-vendor-brands-car';
37:   static const String getVendorProfile = 'vendor/profile';
38:   static const String updateVendorProfile = 'vendor/profile/update';
39:   static const String uploadCommercialRecordImage = 'vendor/profile/upload-commercial-record';
40:   static const String payAppCommission = 'vendor/app-commission/pay';
41: 
42: }
````

## File: lib/core/data_sources/remote/api_path.dart
````dart
1: class ApiPath {
2:   static const String BASE_HOST = 'https://car-production-93a1.up.railway.app/';
3:   static const String baseUrl = BASE_HOST + 'api/v1/';
4: 
5:   static const String baseUrlImage = BASE_HOST + 'uploads/';
6:   static const String categoriesIcon = 'categories-icon/';
7:   static const String uploadsPrivate = BASE_HOST + 'api/uploads-private/';
8:   static const String uploads = BASE_HOST + 'api/uploads/';
9: }
````

## File: lib/core/data_sources/remote/api_service.dart
````dart
 1: import 'dart:io';
 2: import 'package:provider/provider.dart';
 3: 
 4: import '../../localization/app_language_provider.dart';
 5: import '../../utils/context_utils.dart';
 6: import '../local/secure_storage.dart';
 7: import 'api_client.dart';
 8: import 'api_path.dart';
 9: 
10: // to manage dependencies
11: class AppDependencies {
12: 
13:   Future<String> getToken() async {
14:     final String? token = await SecureStorage.getToken();
15:     return 'Bearer ${token ?? ''}';
16:   }
17: 
18:   String getLanguageCode() {
19:     final context = ContextUtils.globalContext;
20:     if (context == null) return 'ar';
21: 
22:     return Provider.of<AppLanguageProvider>(context, listen: false).appLocal.languageCode;
23:   }
24: 
25:   String getApiKeyGuest() {
26:     return "f9PF9Sjer54s2affFlQ6GWSPcrKyCF5LtX30moO3KlmLucESq1G6INaJlNJ0RQDc";
27:   }
28: }
29: 
30: class ApiService {
31:   final ApiClient _apiClient;
32:   final AppDependencies _dependencies;
33: 
34:   // Singleton Pattern
35:   ApiService._(this._apiClient, this._dependencies);
36:   static final ApiService _instance = ApiService._(
37:     ApiClient(baseUrl: ApiPath.baseUrl),
38:     AppDependencies(),
39:   );
40:   factory ApiService() => _instance;
41: 
42:   Future<Map<String, String>> _getHeaders({bool isGuest = false}) async {
43:     final headers = {
44:       'Accept': 'application/json',
45:       'Content-Type': 'application/json',
46:       'Accept-Language': _dependencies.getLanguageCode(),
47:     };
48: 
49:     if (isGuest) {
50:       headers['Api-Key-Guest'] = _dependencies.getApiKeyGuest();
51:     } else {
52: 
53:       headers['Authorization'] = await _dependencies.getToken();
54:     }
55:     return headers;
56:   }
57:   /// Closes the underlying HTTP client and cleans up resources
58:   void close() {
59:     _apiClient.close();
60:   }
61: 
62:   Future<dynamic> getData(String path, {Map<String, dynamic>? queryParams, bool isGuest = false}) async {
63:     final headers = await _getHeaders(isGuest: isGuest);
64:     return await _apiClient.get(path, headers: headers, queryParams: queryParams);
65:   }
66: 
67:   Future<dynamic> postData(String path, {required Map<String, dynamic> body, bool isGuest = false}) async {
68:     final headers = await _getHeaders(isGuest: isGuest);
69:     return await _apiClient.post(path, headers: headers, body: body);
70:   }
71: 
72:   Future<dynamic> deleteData(String path) async {
73:     final headers = await _getHeaders();
74:     return await _apiClient.delete(path, headers: headers);
75:   }
76: 
77:   Future<dynamic> uploadFiles(String path, {required Map<String, String> fields, List<File>? files, bool isGuest = false}) async {
78:     final headers = await _getHeaders(isGuest: isGuest);
79:     headers.remove('Content-Type'); // مكتبة http تضيفها تلقائياً
80: 
81:     return await _apiClient.multipartRequest(path, headers: headers, fields: fields, files: files );
82:   }
83: 
84:   Future<dynamic> uploadSingleFile(String path, {required Map<String, String> fields, File? file, bool isGuest = false}) async {
85:     final headers = await _getHeaders(isGuest: isGuest);
86:     headers.remove('Content-Type'); // مكتبة http تضيفها تلقائياً
87: 
88:     return await _apiClient.multipartRequestSingleImage(path, headers: headers, fields: fields, file: file );
89:   }
90: }
````

## File: lib/core/data_sources/remote/websocket_service.dart
````dart
 1: import 'dart:convert';
 2: import 'package:car_mediator_mobile/core/data_sources/local/secure_storage.dart';
 3: import 'package:web_socket_channel/web_socket_channel.dart';
 4: import 'package:web_socket_channel/io.dart';
 5: 
 6: class WebSocketService {
 7:   static final WebSocketService _instance = WebSocketService._internal();
 8:   factory WebSocketService() => _instance;
 9:   WebSocketService._internal();
10: 
11:   WebSocketChannel? _channel;
12:   final String _baseUrl = '192.168.1.34';
13: 
14:   Future<void> connectToConversation(int conversationId) async {
15:     final String? token = await SecureStorage.getToken();
16:     print(token);
17: 
18:     final wsUrl = 'ws://$_baseUrl:8080/app/0z58lxjbuvh5gyymgd0n';
19: 
20:     try {
21:       _channel = IOWebSocketChannel.connect(
22:         wsUrl,
23:         headers: {'Authorization': 'Bearer $token'},
24:       );
25: 
26:       // الاشتراك في قناة المحادثة
27:       _subscribeToConversation(conversationId);
28:     } catch (e) {
29:       print('WebSocket connection error: $e');
30:     }
31:   }
32: 
33:   void _subscribeToConversation(int conversationId) {
34:     final subscribeMessage = {
35:       "event": "subscribe",
36:       "channel": "conversation.$conversationId"
37:     };
38: 
39:     _channel?.sink.add(jsonEncode(subscribeMessage));
40:   }
41: 
42:   void sendMessage(Map<String, dynamic> message) {
43:     if (_channel != null) {
44:       _channel!.sink.add(jsonEncode(message));
45:     }
46:   }
47: 
48:   Stream<dynamic> get stream {
49:     return _channel?.stream ?? Stream.empty();
50:   }
51: 
52:   void disconnect() {
53:     _channel?.sink.close();
54:   }
55: 
56:   bool get isConnected {
57:     return _channel != null;
58:   }
59: }
````

## File: lib/core/errors/api_exceptions.dart
````dart
 1: abstract class ApiException implements Exception {
 2:   final String message;
 3:   final int? statusCode;
 4: 
 5:   ApiException(this.message, [this.statusCode]);
 6: 
 7:   @override
 8:   String toString() => message;
 9: }
10: 
11: class NetworkException extends ApiException {
12:   NetworkException(String message) : super('خطأ في الشبكة: $message');
13: }
14: 
15: class UnauthorizedException extends ApiException {
16:   UnauthorizedException(String message) : super(message, 401);
17: }
18: 
19: class NotFoundException extends ApiException {
20:   NotFoundException(String message) : super(message, 404);
21: }
22: 
23: class ValidationException extends ApiException {
24: 
25:   final Map<String, dynamic> errors;
26: 
27:   ValidationException(String message, this.errors) : super(message, 422);
28:   /*
29:   // استخدام الدالة المساعدة للحصول على الخطأ الخاص بهذا الحقل
30:             e.getFirstErrorFor('email'),
31:   */
32:   String? getFirstErrorFor(String field) {
33:     if (errors.containsKey(field) && (errors[field] as List).isNotEmpty) {
34:       return (errors[field] as List).first;
35:     }
36:     return null;
37:   }
38: 
39:   Map getAllError() {
40:     return (errors as Map<String, dynamic>?)?.map(
41:           (key, value) => MapEntry(
42:         key,
43:         List<String>.from(value ?? []),
44:       ),
45:     ) ?? {};
46:   }
47: }
48: 
49: class TooManyRequestsException extends ApiException {
50:   TooManyRequestsException(String message) : super(message, 429);
51: }
52: 
53: class ServerException extends ApiException {
54:   ServerException(String message) : super(message, 500);
55: }
56: 
57: class UnknownApiException extends ApiException {
58:   UnknownApiException(String message, [int? code]) : super('خطأ غير معروف: $message', code);
59: }
````

## File: lib/core/errors/empty_response_exception.dart
````dart
1: class EmptyResponseException implements Exception {
2:   final String message;
3:   EmptyResponseException([ this.message = "لم يتم استلام أي بيانات من الخادم"]);
4: 
5:   @override
6:   String toString() => message;
7: }
````

## File: lib/core/helpers/helpers.dart
````dart
 1: import 'package:flutter/foundation.dart';
 2: import 'package:flutter/material.dart';
 3: 
 4: class Helper{
 5: 
 6:   static bool isBoolean(dynamic value) {
 7:     if (value is bool) return value;
 8:     if(value is int) return value == 1;
 9:     if(value is String) return value == '1';
10: 
11:     return false;
12:   }
13: 
14:   static void logDebug(dynamic message) {
15:     if (kDebugMode) {
16:       debugPrint(message);
17:     }
18:   }
19: 
20:   static void dismissKeyBoard() {
21:     FocusManager.instance.primaryFocus?.unfocus();
22:   }
23: 
24: }
````

## File: lib/core/helpers/toast_helper.dart
````dart
  1: import 'package:flutter/material.dart';
  2: import 'package:another_flushbar/flushbar.dart';
  3: 
  4: import '../utils/context_utils.dart';
  5: 
  6: const int _durationToast = 4;
  7: 
  8: enum ToastType {
  9:   success,
 10:   error,
 11:   warning,
 12:   info,
 13: }
 14: 
 15: class ToastHelper {
 16: 
 17:   static void _showToast(
 18:       String message,
 19:       {
 20:         ToastType type = ToastType.info,
 21:         Duration duration = const Duration(seconds: _durationToast),
 22:         FlushbarPosition position = FlushbarPosition.TOP,
 23:         EdgeInsets margin = const EdgeInsets.all(8),
 24:         BorderRadius borderRadius = const BorderRadius.all(Radius.circular(10)),
 25:         Duration animationDuration = const Duration(milliseconds: 500),
 26:         Color? backgroundColor,
 27:         Color? textColor,
 28:         double? iconSize,
 29:         Widget? mainButton,
 30:         Function? onStatusChanged,
 31:         bool? showProgressIndicator,
 32:         Color? progressIndicatorBackgroundColor,
 33:         Color? progressIndicatorColor,
 34:       }
 35:       ) {
 36: 
 37:     final context = ContextUtils.globalContext;
 38:     if(context == null) return;
 39: 
 40:     Color defaultBackgroundColor;
 41:     IconData defaultIcon;
 42: 
 43: 
 44:     switch (type) {
 45:       case ToastType.success:
 46:         defaultBackgroundColor = Colors.green;
 47:         defaultIcon = Icons.check_circle;
 48:         break;
 49:       case ToastType.error:
 50:         defaultBackgroundColor = Colors.red;
 51:         defaultIcon = Icons.error;
 52:         break;
 53:       case ToastType.warning:
 54:         defaultBackgroundColor = Colors.orange;
 55:         defaultIcon = Icons.warning;
 56:         break;
 57:       case ToastType.info:
 58:         defaultBackgroundColor = Colors.blueGrey;
 59:         defaultIcon = Icons.info;
 60:         break;
 61:     }
 62: 
 63:     Flushbar(
 64:       message: message,
 65:       icon: Icon(
 66:         defaultIcon,
 67:         size: iconSize ?? 28.0,
 68:         color: Colors.white,
 69:       ),
 70:       duration: duration,
 71:       backgroundColor: backgroundColor ?? defaultBackgroundColor,
 72:       borderRadius: borderRadius,
 73:       margin: margin,
 74:       flushbarPosition: position,
 75:       animationDuration: animationDuration,
 76:       mainButton: mainButton,
 77:       onStatusChanged: onStatusChanged != null ? (status) => onStatusChanged(status) : null,
 78:       showProgressIndicator: showProgressIndicator ?? false,
 79:       progressIndicatorBackgroundColor: progressIndicatorBackgroundColor,
 80:       progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(progressIndicatorColor ?? Colors.yellow) ,
 81:       messageText: Text(
 82:         message,
 83:         style: TextStyle(color: textColor ?? Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
 84:       ),
 85:     ).show(context);
 86:   }
 87: 
 88:   // Convenience methods for common toast types
 89:   static void showSuccess(
 90:       String message,
 91:       {Duration duration = const Duration(seconds: _durationToast), FlushbarPosition position = FlushbarPosition.TOP}
 92:       ) {
 93:     _showToast(message, type: ToastType.success, duration: duration, position: position);
 94:   }
 95: 
 96:   static void showError(
 97:       String message,
 98:       {Duration duration = const Duration(seconds: _durationToast), FlushbarPosition position = FlushbarPosition.TOP}
 99:       ) {
100:     _showToast(message, type: ToastType.error, duration: duration, position: position);
101:   }
102: 
103:   static void showWarning(
104:       String message,
105:       {Duration duration = const Duration(seconds: _durationToast), FlushbarPosition position = FlushbarPosition.TOP}
106:       ) {
107:     _showToast(message, type: ToastType.warning, duration: duration, position: position);
108:   }
109: 
110:   static void showInfo(
111:       String message,
112:       {Duration duration = const Duration(seconds: _durationToast), FlushbarPosition position = FlushbarPosition.TOP}
113:       ) {
114:     _showToast(message, type: ToastType.info, duration: duration, position: position);
115:   }
116: }
````

## File: lib/core/localization/app_language_provider.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: class AppLanguageProvider extends ChangeNotifier {
 4:   Locale _appLocale = const Locale('ar');
 5:   String _nameLang = 'العربية';
 6: 
 7:   Locale get appLocal => _appLocale;
 8:   String get nameLanguage => _nameLang;
 9:   TextDirection get textDirection =>
10:       _appLocale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr;
11: 
12:   bool get isArabic => _appLocale.languageCode == 'ar';
13: 
14:   Future<void> fetchLocale() async {
15: 
16:     // final prefs = await SharedPreferences.getInstance();
17:     // final code = prefs.getString('language_code') ?? 'ar';
18:     final code = 'ar';
19:     _appLocale = Locale(code);
20:     _nameLang = code == 'ar' ? 'العربية' : 'English';
21:     notifyListeners();
22:   }
23: 
24: 
25:   Future<void> changeLanguage(Locale newLocale) async {
26:     // if (_appLocale == newLocale) return;
27:     //
28:     // _appLocale = newLocale;
29:     // _nameLang = newLocale.languageCode == 'ar' ? 'العربية' : 'English';
30:     //
31:     // final prefs = await SharedPreferences.getInstance();
32:     // await prefs.setString('language_code', newLocale.languageCode);
33:     // await prefs.setString('countryCode', newLocale.countryCode ?? '');
34:     //
35:     // notifyListeners();
36:   }
37: }
````

## File: lib/core/providers/auth_provider.dart
````dart
  1: import 'dart:ffi';
  2: import 'dart:io';
  3: 
  4: import 'package:car_mediator_mobile/core/data_sources/remote/api_endpoints.dart';
  5: import 'package:flutter/material.dart';
  6: import 'package:image_picker/image_picker.dart';
  7: import 'package:provider/provider.dart';
  8: 
  9: import '../../features/shared/auth/opt_screen.dart';
 10: import '../../features/shared/cache/init_cache.dart';
 11: import '../../models/user_model.dart';
 12: import '../../widgets/components.dart';
 13: import '../data_sources/local/cache_helper.dart';
 14: import '../data_sources/local/secure_storage.dart';
 15: import '../helpers/helpers.dart';
 16: import '../helpers/toast_helper.dart';
 17: import '../services/shared/auth_service.dart';
 18: import 'bottom_navigation_bar_provider.dart';
 19: 
 20: class AuthProvider extends ChangeNotifier{
 21:   final AuthService _authService;
 22: 
 23:   UserResponseModel? loginUserModel;
 24:   UserResponseModel? registerUserModel;
 25:   UserModel? currentUseModel;
 26: 
 27:   bool isLoggedIn = false;
 28: 
 29:   final ImagePicker imagePicker = ImagePicker();
 30:   File? uploadLogo;
 31: 
 32:   AuthProvider(this._authService);
 33: 
 34:   bool _isLoading = false;
 35:   bool get isLoading => _isLoading;
 36: 
 37:   void _toggleLoading() {
 38:     _isLoading = !_isLoading;
 39:     notifyListeners();
 40:   }
 41: 
 42:   Future<void> getCurrentUser() async {
 43:     isLoggedIn = await SecureStorage.isLoggedIn();
 44:     final _json = CacheHelper.getCachedCurrentUserData();
 45:     currentUseModel = (_json == null) ? null : UserModel.fromJson(_json);
 46:     notifyListeners();
 47:   }
 48: 
 49:   Future<void> register(BuildContext context, {required Map<String, dynamic> body}) async {
 50:     loginUserModel = null;
 51:     _toggleLoading();
 52:     try {
 53:       final _response = await _authService.auth(body: body, path: ApiEndpoints.register);
 54:       if (_response != null) {
 55:         loginUserModel = _response;
 56:         if(loginUserModel?.success ?? false){
 57:           ToastHelper.showSuccess(loginUserModel?.message ?? '');
 58:           navigationPush(context, OptScreen(phoneNumber: body['phoneNumber'],));
 59:         }else{
 60:           ToastHelper.showError(loginUserModel?.message ?? '');
 61:         }
 62:       }
 63:     } catch (e) {
 64:       Helper.logDebug('$runtimeType ---> Failed register: ${e}');
 65:       ToastHelper.showError(e.toString());
 66:     } finally {
 67:       _toggleLoading();
 68:     }
 69:   }
 70: 
 71:   Future<void> loginWithOtp(BuildContext context, {required Map<String, dynamic> body}) async {
 72:     loginUserModel = null;
 73:     _toggleLoading();
 74:     try {
 75:       final _response = await _authService.auth(body: body, path: ApiEndpoints.loginWithOtp);
 76:       if (_response != null) {
 77:         loginUserModel = _response;
 78:         if(loginUserModel?.success ?? false){
 79:           currentUseModel = loginUserModel?.result?.user;
 80: 
 81:           await Future.wait([
 82:             _saveCurrentUserDataToCache(currentUseModel),
 83:             SecureStorage.saveToken(loginUserModel?.result?.token ?? ''),
 84:             SecureStorage.setIsLoggedIn(true),
 85:             SecureStorage.setUserRole(loginUserModel?.result?.user?.role ?? ''),
 86:           ]);
 87: 
 88:           navigationPushAndRemoveUntil(context, InitCache(userRole: loginUserModel?.result?.user?.role ?? '',));
 89:         }else{
 90:           ToastHelper.showError(loginUserModel?.message ?? '');
 91:         }
 92:       }
 93:     } catch (e) {
 94:       Helper.logDebug('$runtimeType ---> Failed loginWithOtp: ${e}');
 95:       ToastHelper.showError(e.toString());
 96:     } finally {
 97:       _toggleLoading();
 98:     }
 99:   }
100: 
101:   Future<void> logout(BuildContext context) async {
102:     _toggleLoading();
103:     try {
104:       await _authService.logout();
105:     } catch (e) {
106:       Helper.logDebug('$runtimeType ---> Failed logout: ${e}');
107:     } finally {
108:       currentUseModel = null;
109:       await Future.wait([
110:         CacheHelper.deleteCurrentUserData(),
111:         SecureStorage.deleteToken(),
112:         SecureStorage.setIsLoggedIn(false),
113:       ]);
114: 
115:       if (context.mounted) {
116:         context.read<BottomNavigationBarProvider>().setCurrentIndex(context, 0);
117:         navigationPushAndRemoveUntil(context, InitCache(userRole: null,));
118:       }
119:       _toggleLoading();
120:     }
121:   }
122: 
123:   Future<void> _saveCurrentUserDataToCache(UserModel? currentUseModel) async {
124:     if(currentUseModel != null){
125:       await CacheHelper.cacheCurrentUserData({
126:         'id': currentUseModel.id,
127:         'name': currentUseModel.name,
128:         'logo': currentUseModel.logo,
129:         'phone': currentUseModel.phoneNumber,
130:         'company_name_ar': currentUseModel.companyNameAr,
131:         'company_name_en': currentUseModel.companyNameEn,
132:       });
133:     }
134:   }
135: 
136: 
137:   // Future postDataWithMultiPart(BuildContext context, Map map ,File? file ,String urlPage) async {
138:   //   try{
139:   //     registerUserModel = null;
140:   //     loading = true;
141:   //     notifyListeners();
142:   //     dynamic response = await RestApiServices().postDataWithMultipartRequest(context, map,file, urlPage);
143:   //     if(response !=null){
144:   //       if(response['success']){
145:   //         registerUserModel = LoginUserModel.fromJson(response);
146:   //       }else{
147:   //         DialogUtils().showAdvancedDialog(context,title: AppLocalizations.of(context).trans('error') ?? '',
148:   //             description: response['message'].toString(),
149:   //             iconPath: AssetsPath.icon_error,
150:   //             onTabCancel: (){
151:   //               Navigator.of(context).pop();
152:   //             });
153:   //       }
154:   //     }
155:   //     loading = false;
156:   //     notifyListeners();
157:   //   }catch(ex){
158:   //     loading = false;
159:   //     notifyListeners();
160:   //     print('AuthProvider-----------postDataWithMultiPart----Error Exception ----->${ex}');
161:   //   }
162:   // }
163: 
164:   Future initialization() async{
165:     uploadLogo = null;
166:   }
167: }
````

## File: lib/core/providers/bottom_navigation_bar_provider.dart
````dart
  1: import 'package:car_mediator_mobile/core/data_sources/local/secure_storage.dart';
  2: import 'package:flutter/material.dart';
  3: 
  4: import '../../features/shared/auth/login_screen.dart';
  5: import '../../widgets/components.dart';
  6: import '../utils/constants/assets_path.dart';
  7: import '../utils/constants/colors_constants.dart';
  8: import '../utils/dialogUtils.dart';
  9: 
 10: 
 11: class BottomNavigationBarProvider extends ChangeNotifier {
 12:   int _currentIndex = 0;
 13:   int get currentIndex => _currentIndex;
 14: 
 15:   // screen required login
 16:   final List<int> _lockedPages = [1, 2];
 17: 
 18:   Future<void> setCurrentIndex(BuildContext context, int index, {PageController? controller}) async {
 19: 
 20:     if (_lockedPages.contains(index) && !(await SecureStorage.isLoggedIn())) {
 21:       _showLoginDialog(context, index);
 22:       return;
 23:     }
 24: 
 25:     if (_currentIndex == index) return;
 26: 
 27:     _currentIndex = index;
 28: 
 29:     if (controller != null) {
 30:       controller.jumpToPage(index);
 31:     }
 32: 
 33:     notifyListeners();
 34:   }
 35: 
 36:   void _showLoginDialog(BuildContext context, int targetIndex) {
 37:     DialogUtils().showAdvancedDialog(
 38:       context,
 39:       description: 'الرجاء تسجيل الدخول',
 40:       iconPath: AssetsPath.login,
 41:       iconColor: AppColor.primaryColor,
 42:       textCancel: 'تسجيل الدخول',
 43:       onTabCancel: () async {
 44:         Navigator.of(context).pop();
 45:         navigationPush(context, LoginScreen());
 46:       },
 47:     );
 48:   }
 49: }
 50: // class BottomNavigationBarProvider extends ChangeNotifier {
 51: //   int _currentIndex = 0;
 52: //   int get currentIndex => _currentIndex;
 53: //
 54: //   final PageController pageController = PageController();
 55: //
 56: //   // الصفحات التي تتطلب تسجيل دخول
 57: //   final List<int> _lockedPages = [1, 2]; // 1: التذاكر, 2: التشجيع
 58: //
 59: //   /// تغيير الصفحة عند الضغط على الـ BottomNavigationBar
 60: //   void changePage(BuildContext context, int index) {
 61: //     // تحقق إذا الصفحة تتطلب تسجيل دخول
 62: //     // if (_lockedPages.contains(index) && !SharedPrefs.isLogIn) {
 63: //     //   _showLoginDialog(context, index);
 64: //     //   return;
 65: //     // }
 66: //
 67: //     _updatePage(index);
 68: //   }
 69: //
 70: //   //  تحديث الصفحة عند السحب (PageView)
 71: //   void onPageChanged(int index) {
 72: //     _currentIndex = index;
 73: //     notifyListeners();
 74: //   }
 75: //
 76: //   // نافذة تنبيه تسجيل الدخول
 77: //   void _showLoginDialog(BuildContext context, int targetIndex) {
 78: //     // DialogUtils().showAdvancedDialog(
 79: //     //   context,
 80: //     //   description: 'الرجاء تسجيل الدخول',
 81: //     //   iconPath: AssetsPath.login,
 82: //     //   iconColor: AppColor.primaryColor,
 83: //     //   textCancel: 'تسجيل الدخول',
 84: //     //   onTabCancel: () async {
 85: //     //     Navigator.of(context).pop();
 86: //     //     navigationPush(context, LoginScreen());
 87: //     //
 88: //     //     // إذا تم تسجيل الدخول بعد العودة
 89: //     //     if (SharedPrefs.isLogIn) {
 90: //     //       _updatePage(targetIndex);
 91: //     //     }
 92: //     //   },
 93: //     // );
 94: //   }
 95: //
 96: //   // تحديث الصفحة داخلياً
 97: //   void _updatePage(int index) {
 98: //     _currentIndex = index;
 99: //     pageController.jumpToPage(index);
100: //     notifyListeners();
101: //   }
102: //
103: //   @override
104: //   void dispose() {
105: //     pageController.dispose();
106: //     super.dispose();
107: //   }
108: // }
109: //
````

## File: lib/core/providers/cache_provider.dart
````dart
  1: import 'package:car_mediator_mobile/core/errors/api_exceptions.dart';
  2: import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
  3: import 'package:car_mediator_mobile/core/providers/auth_provider.dart';
  4: import 'package:car_mediator_mobile/core/utils/constants/enumeration.dart';
  5: import 'package:car_mediator_mobile/core/utils/context_utils.dart';
  6: import 'package:car_mediator_mobile/models/city_model.dart';
  7: import 'package:car_mediator_mobile/widgets/components.dart';
  8: import 'package:flutter/material.dart';
  9: import 'package:provider/provider.dart';
 10: 
 11: import '../../features/user/home/screens/home_user_page.dart';
 12: import '../../features/vendor/home/screens/home_vendor_page.dart';
 13: import '../../models/ads_banner_model.dart';
 14: import '../../models/brand_car_model.dart';
 15: import '../../models/category_has_brand_field_model.dart';
 16: import '../../models/category_model.dart';
 17: import '../../models/custom_field_model.dart';
 18: import '../services/shared/cache_service.dart';
 19: import '../helpers/helpers.dart';
 20: import '../utils/connection_utils.dart';
 21: 
 22: class CacheProvider extends ChangeNotifier {
 23:   final CacheService _cacheService;
 24: 
 25:   List<CityModel> citiesList = [];
 26:   List<BrandCarModel> brandsCarsList  = [];
 27:   List<CategoryModel> categoriesList  = [];
 28:   List<CategoryHasBrandFieldModel> categoryHasBrandFieldsList  = [];
 29:   List<CustomFieldModel> customFieldsList  = [];
 30:   List<AdsBannerModel> adsBannersList  = [];
 31: 
 32:   final CityModel selectAllCites = CityModel(
 33:     id: -1,
 34:     cityNameAr: 'اختيار الكل',
 35:     cityNameEn: 'Select All',
 36:   );
 37: 
 38:   CacheProvider(this._cacheService);
 39: 
 40:   bool _isLoading = false;
 41:   bool get isLoading => _isLoading;
 42: 
 43:   void _toggleLoading() {
 44:     _isLoading = !_isLoading;
 45:     notifyListeners();
 46:   }
 47: 
 48:   Future<void> refreshCache({required String? userRole}) async {
 49:     _toggleLoading();
 50: 
 51:     try {
 52:       await ContextUtils.globalContext?.read<AuthProvider>().getCurrentUser();
 53:       if(! await ConnectionUtils.hasInternetConnection()){
 54:         ToastHelper.showError('الرجاء التحقق من اتصالك بالإنترنت.');
 55:         await _loadDataFromCache();
 56:         _navigationToHomePage(userRole);
 57:          // _toggleLoading();
 58:         return;
 59:       }
 60: 
 61:       await _cacheService.fetchAndCacheData();
 62:       await _loadDataFromCache();
 63:       _navigationToHomePage(userRole);
 64: 
 65: 
 66:     } catch (e) {
 67:       Helper.logDebug('$runtimeType ---> Failed to refresh cache: $e');
 68:       await _loadDataFromCache();
 69:       _navigationToHomePage(userRole);
 70:     }
 71:   }
 72: 
 73:   void _navigationToHomePage (String? userRole){
 74:     if(userRole == UserRoleEnum.vendor.name){
 75:       navigationPush(ContextUtils.globalContext, const HomeVendorPage());
 76:     } else{
 77:       navigationPush(ContextUtils.globalContext, const HomeUserPage());
 78:     }
 79:   }
 80: 
 81: 
 82:   Future<void> _loadDataFromCache() async {
 83:     citiesList.clear();
 84:     brandsCarsList.clear();
 85:     categoriesList.clear();
 86:     categoryHasBrandFieldsList.clear();
 87:     customFieldsList.clear();
 88:     adsBannersList.clear();
 89: 
 90:     citiesList  = _cacheService.getCachedCities();
 91:     brandsCarsList  = _cacheService.getCachedBrandsCars();
 92:     final categoriesListTemp = _cacheService.getCachedCategories();
 93:     for (var element in categoriesListTemp) {
 94:       if(element.active != CategoryStatusEnum.Inactive.name){
 95:         categoriesList.add(element);
 96:       }
 97:     }
 98:     categoryHasBrandFieldsList  = _cacheService.getCachedCategoryBrandFields();
 99:     customFieldsList  = _cacheService.getCachedCustomFields();
100:     adsBannersList  = _cacheService.getCachedAdsBanners();
101:     notifyListeners();
102:   }
103: 
104:   List<CustomFieldModel> getCustomFieldsByCategoryId(int catId) => customFieldsList
105:       .where((element) => element.categoryId == catId)
106:       .toList();
107: 
108: 
109: }
````

## File: lib/core/providers/common_provider.dart
````dart
 1: import 'package:car_mediator_mobile/core/services/shared/common_service.dart';
 2: import 'package:flutter/material.dart';
 3: 
 4: import '../helpers/helpers.dart';
 5: import '../helpers/toast_helper.dart';
 6: 
 7: class CommonProvider extends ChangeNotifier{
 8:   final CommonService _service;
 9: 
10:   CommonProvider(this._service);
11: 
12:   bool _isLoading = false;
13:   bool get isLoading => _isLoading;
14: 
15:   void _toggleLoading() {
16:     _isLoading = !_isLoading;
17:     notifyListeners();
18:   }
19: 
20:   Future<void> complaintVendorService(BuildContext context,{required Map<String, dynamic> body}) async {
21:     _toggleLoading();
22:     try {
23:       final response = await _service.complaintVendorService(body: body);
24:       if (response != null) {
25:         if(response['success'] ?? false){
26:           Navigator.pop(context);
27:           ToastHelper.showSuccess(response['message'] ?? '');
28:         }else{
29:           ToastHelper.showError(response['message'] ?? '');
30:         }
31:       }else{
32:         ToastHelper.showError('لم يتم الإرسال بنجاح');
33:       }
34:     } catch (e) {
35:       Helper.logDebug('$runtimeType ---> Failed complaintVendorService: ${e}');
36:       ToastHelper.showError(e.toString());
37:     } finally {
38:       _toggleLoading();
39:     }
40:   }
41: 
42: }
````

## File: lib/core/providers/conversation_provider.dart
````dart
  1: import 'dart:io';
  2: 
  3: import 'package:car_mediator_mobile/core/utils/connection_utils.dart';
  4: import 'package:car_mediator_mobile/core/utils/dialogUtils.dart';
  5: import 'package:flutter/material.dart';
  6: import 'package:provider/provider.dart';
  7: 
  8: import '../../features/shared/auth/opt_screen.dart';
  9: import '../../features/shared/chat/screens/chat_screen.dart';
 10: import '../../models/conversation_model.dart';
 11: import '../../models/message_model.dart';
 12: import '../../widgets/components.dart';
 13: import '../data_sources/remote/api_endpoints.dart';
 14: import '../helpers/helpers.dart';
 15: import '../helpers/toast_helper.dart';
 16: import '../services/shared/conversation_service.dart';
 17: import 'auth_provider.dart';
 18: 
 19: class ConversationProvider extends ChangeNotifier {
 20:   final ConversationService _conversationService;
 21: 
 22:   List<Message> messagesList = [];
 23:   List<ConversationModel> conversationModelList = [];
 24: 
 25:   int lastMessageId = 0;
 26: 
 27:   ConversationProvider(this._conversationService);
 28: 
 29:   bool _isLoading = false;
 30:   bool get isLoading => _isLoading;
 31: 
 32:   void _toggleLoading() {
 33:     _isLoading = !_isLoading;
 34:     notifyListeners();
 35:   }
 36: 
 37:   bool _isLoadingSend = false;
 38:   bool get isLoadingSend => _isLoadingSend;
 39: 
 40:   void _toggleLoadingSend() {
 41:     _isLoadingSend = !_isLoadingSend;
 42:     notifyListeners();
 43:   }
 44: 
 45:   int currentPage = 1;
 46:   int lastPage = 1;
 47: 
 48:   bool get hasMore => currentPage <= lastPage;
 49: 
 50:   void resetPagination(){
 51:     conversationModelList.clear();
 52:     currentPage = 1;
 53:     lastPage = 1;
 54:   }
 55: 
 56:   Future<void> createConversation(
 57:       BuildContext context,
 58:       {
 59:         required Map<String, dynamic> body,
 60:         required int requestId,
 61:         required int responseId,
 62:         required int vendorId,
 63:         required String receiverName,
 64:         required String receiverLogo,
 65:       }) async {
 66: 
 67:     if(!await ConnectionUtils.hasInternetConnection()){
 68:       DialogUtils().showNoInternetDialog(context);
 69:       return;
 70:     }
 71: 
 72:     _toggleLoading();
 73:     try {
 74:       final _response = await _conversationService.createConversation(body: body);
 75:       if (_response != null) {
 76:         if(_response['success']){
 77:            navigationPush(context, ChatScreen(
 78:              conversationId: _response['result']['conversationId'],
 79:              requestId: requestId,
 80:              responseId: responseId,
 81:              vendorId: vendorId,
 82:              receiverName: receiverName,
 83:              receiverLogo: receiverLogo,
 84:              myUserId: context.read<AuthProvider>().currentUseModel?.id ?? 0,
 85:            ));
 86:         }else{
 87:           ToastHelper.showError(_response['message']);
 88:         }
 89:       }
 90:     } catch (e) {
 91:       Helper.logDebug('$runtimeType ---> Failed : ${e}');
 92:       ToastHelper.showError(e.toString());
 93:     } finally {
 94:       _toggleLoading();
 95:     }
 96:   }
 97: 
 98:   Future<void> getMyConversations({ required String path, bool loadMore = false}) async {
 99:     _toggleLoading();
100:     try {
101:       final response = await _conversationService.getMyConversations(path: path, page: currentPage);
102:       if (response != null) {
103: 
104:         if (loadMore) {
105:           conversationModelList.addAll(response.result?.conversationModelList ?? []);
106:         } else {
107:           conversationModelList = response.result?.conversationModelList ?? [];
108:         }
109: 
110:         currentPage = (response.result?.currentPage ?? 1) + 1;
111:         lastPage = (response.result?.lastPage ?? 1);
112:       }
113:     } catch (e) {
114:       Helper.logDebug('$runtimeType ---> Failed getMyConversations: ${e}');
115:       ToastHelper.showError(e.toString());
116:     } finally {
117:       _toggleLoading();
118:     }
119:   }
120: 
121:   Future<void> refreshGetMyConversations(String path) async {
122:     resetPagination();
123:     await getMyConversations(path: path);
124:   }
125: 
126:   Future<void> loadInitialMessages({required int conversationId}) async {
127:     _toggleLoading();
128:     try {
129:       final data = await _conversationService.fetchMessages(conversationId: conversationId, lastMessageId: lastMessageId);
130:       messagesList = data;
131:       if (messagesList.isNotEmpty) {
132:               lastMessageId = messagesList.last.id;  // آخر ID عندنا
133:       }
134:     } catch (e) {
135:       Helper.logDebug('$runtimeType ---> Failed : ${e}');
136:       // ToastHelper.showError(e.toString());
137:     } finally {
138:       _toggleLoading();
139:     }
140:   }
141: 
142:   Future<void> fetchNewMessages({required int conversationId}) async {
143:     try {
144:       final newMsgs = await _conversationService.fetchMessages(conversationId: conversationId, lastMessageId: lastMessageId);
145:       if (newMsgs.isNotEmpty) {
146:         messagesList.addAll(newMsgs);
147:         lastMessageId =  messagesList.last.id;
148:       }
149:     } catch (e) {
150:       Helper.logDebug('$runtimeType ---> Failed : ${e}');
151:       // ToastHelper.showError(e.toString());
152:     } finally {
153:       notifyListeners();
154:     }
155:   }
156: 
157:   File? fileImage;
158:   void changeSelectedConversationImage(File? file){
159:     fileImage = file;
160:     notifyListeners();
161:   }
162: 
163:   Future<void> sendMessage(BuildContext context,{required Map<String, String> body,}) async {
164:     _toggleLoadingSend();
165:     try {
166:       final _response = await _conversationService.sendMessage(body: body, file: fileImage);
167:       if (_response != null) {
168:         fileImage = null;
169:         if(!_response['success']){
170:           ToastHelper.showError(_response['message']);
171:           fileImage = null;
172:         }
173:       }
174:     } catch (e) {
175:       Helper.logDebug('$runtimeType ---> Failed : ${e}');
176:       ToastHelper.showError(e.toString());
177:     } finally {
178:       _toggleLoadingSend();
179:     }
180:   }
181: 
182:   void initProvider(){
183:     messagesList = [];
184:     lastMessageId = 0;
185:   }
186: 
187: }
````

## File: lib/core/providers/dynamic_form_provider.dart
````dart
 1: import 'dart:io';
 2: 
 3: import 'package:flutter/material.dart';
 4: import 'package:image_picker/image_picker.dart';
 5: import 'package:provider/provider.dart';
 6: 
 7: import '../localization/app_language_provider.dart';
 8: import '../utils/constants/enumeration.dart';
 9: import 'cache_provider.dart';
10: 
11: class DynamicFormProvider with ChangeNotifier {
12:   final Map<String, TextEditingController> _controllers = {};
13:   final Map<String, dynamic> _values = {};
14: 
15:   Map<String, dynamic> get valuesMap => _values;
16:   Map<String, TextEditingController> get controllersMap => _controllers;
17: 
18:   /// create or get controller for specific field
19:   TextEditingController getController(String fieldName) {
20:     if (!_controllers.containsKey(fieldName)) {
21:       _controllers[fieldName] = TextEditingController();
22:     }
23:     return _controllers[fieldName]!;
24:   }
25: 
26:   // تحديث قيمة الحقل (مفيد للـ select, checkbox, radio)
27:   void updateValue(String fieldName, dynamic value) {
28:     _values[fieldName] = value;
29:     notifyListeners();
30:   }
31: 
32:   dynamic getValue(String fieldName) {
33:     if (_values.containsKey(fieldName)) {
34:       return _values[fieldName];
35:     }
36:     return _controllers[fieldName]?.text;
37:   }
38: 
39:   // تحويل جميع القيم إلى JSON
40:   Map<String, dynamic> toJson() {
41:     final data = <String, dynamic>{};
42:     for (var entry in _controllers.entries) {
43:       data[entry.key] = entry.value.text;
44:     }
45:     for (var entry in _values.entries) {
46:       data[entry.key] = entry.value;
47:     }
48:     return data;
49:   }
50: 
51:   String getLabelName(BuildContext context, String fieldName) {
52:     final _list = context.read<CacheProvider>().customFieldsList;
53:     final _isArabic = context.read<AppLanguageProvider>().isArabic;
54: 
55:     for (var field in _list) {
56:       if (field.fieldName == fieldName) {
57:         return _isArabic ? field.labelAr : field.labelEn;
58:       }
59:     }
60:     return '';
61:   }
62: 
63:   bool isFileByFieldName(BuildContext context, String fieldName) {
64:     final _list = context.read<CacheProvider>().customFieldsList;
65: 
66:     for (var field in _list) {
67:       if (field.fieldName == fieldName) {
68:         return field.fieldType == CustomFieldTypeEnum.file.name;
69:       }
70:     }
71:     return false;
72:   }
73: 
74:   // تنظيف الكنترولرز عند التخلص من الـ Provider
75:   void disposeControllers() {
76:     for (var controller in _controllers.values) {
77:       controller.dispose();
78:     }
79:     _controllers.clear();
80:     _values.clear();
81:   }
82: 
83:   @override
84:   void dispose() {
85:     disposeControllers();
86:     super.dispose();
87:   }
88: }
````

## File: lib/core/providers/home/home_user_provider.dart
````dart
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
````

## File: lib/core/providers/notification_provider.dart
````dart
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
````

## File: lib/core/providers/orders/create_order_provider.dart
````dart
  1: import 'dart:convert';
  2: import 'dart:io';
  3: 
  4: import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
  5: import 'package:car_mediator_mobile/core/providers/dynamic_form_provider.dart';
  6: import 'package:car_mediator_mobile/core/services/user/requests/request_service.dart';
  7: import 'package:car_mediator_mobile/core/utils/context_utils.dart';
  8: import 'package:car_mediator_mobile/core/utils/dialogUtils.dart';
  9: import 'package:car_mediator_mobile/features/user/home/screens/home_user_page.dart';
 10: import 'package:car_mediator_mobile/models/request_model.dart';
 11: import 'package:car_mediator_mobile/widgets/components.dart';
 12: import 'package:flutter/material.dart';
 13: import 'package:provider/provider.dart';
 14: 
 15: import '../../../models/brand_car_model.dart';
 16: import '../../../models/category_model.dart';
 17: import '../../../models/city_model.dart';
 18: import '../../errors/empty_response_exception.dart';
 19: import '../../helpers/helpers.dart';
 20: import '../cache_provider.dart';
 21: 
 22: class CreateOrderProvider extends ChangeNotifier {
 23:   final RequestService _requestService;
 24: 
 25:   CategoryModel? categorySelectedModel;
 26:   BrandCarModel? brandSelectedModel;
 27:   CityModel? myCitySelectedModel;
 28: 
 29:   RequestResultModel? checkEligibleVendorsResult;
 30:   RequestResultModel? confirmOrderRequestResult;
 31:   RequestResultModel? confirmShippingRequestResult;
 32: 
 33:   List<CityModel>? selectedCitiesRequestList = [];
 34: 
 35:   bool isCategoryHasBrand = false;
 36:   String? descriptionRequest;
 37:   String? messageCheckEligibleVendorsResult = '';
 38: 
 39:   // constructor provider
 40:   CreateOrderProvider(this._requestService) {
 41:     brandSelectedModel = null;
 42:     final context = ContextUtils.globalContext;
 43:     if (context != null) {
 44:       context.read<DynamicFormProvider>().disposeControllers();
 45:     }
 46:   }
 47: 
 48:   bool _isLoading = false;
 49:   bool get isLoading => _isLoading;
 50: 
 51:   void _toggleLoading() {
 52:     _isLoading = !_isLoading;
 53:     notifyListeners();
 54:   }
 55: 
 56:   void setCategorySelected(CategoryModel catModel) {
 57:     categorySelectedModel = catModel;
 58:     notifyListeners();
 59:   }
 60: 
 61:   void setIsCategoryHasBrand(BuildContext context, int catId) {
 62:     isCategoryHasBrand = context
 63:         .read<CacheProvider>()
 64:         .categoryHasBrandFieldsList
 65:         .any((element) => element.categoryId == catId);
 66:     notifyListeners();
 67:   }
 68: 
 69:   void selectedBrand(BrandCarModel? model) {
 70:     brandSelectedModel = model;
 71:     notifyListeners();
 72:   }
 73: 
 74:   void selectedMyCity(CityModel? model) {
 75:     myCitySelectedModel = model;
 76:     notifyListeners();
 77:   }
 78: 
 79:   void changeCitiesRequest(List<CityModel>? list) {
 80:     selectedCitiesRequestList = list ?? [];
 81:     notifyListeners();
 82:   }
 83: 
 84:   Future<void> checkEligibleVendors() async {
 85:     checkEligibleVendorsResult = null;
 86:     messageCheckEligibleVendorsResult = '';
 87:     _toggleLoading();
 88:     try {
 89:       final _response = await _requestService.checkEligibleVendors(
 90:           body: _buildCheckEligibleVendorsBody());
 91: 
 92:       _buildResponseCheckEligibleVendors(_response);
 93:     } catch (e) {
 94:       Helper.logDebug('$runtimeType ---> Failed checkEligibleVendors: ${e}');
 95:       messageCheckEligibleVendorsResult = e.toString();
 96:     } finally {
 97:       _toggleLoading();
 98:     }
 99:   }
100: 
101:   Map<String, dynamic> _buildCheckEligibleVendorsBody() {
102:     return {
103:       'categoryId': categorySelectedModel?.id ?? 0,
104:       'brandId': brandSelectedModel?.id,
105:       'citiesIdsScope': selectedCitiesRequestList?.map((e) => e.id).toList(),
106:     };
107:   }
108: 
109:   void _buildResponseCheckEligibleVendors(RequestResultModel? response) {
110:     if (response != null) {
111:       checkEligibleVendorsResult = response;
112:       messageCheckEligibleVendorsResult = checkEligibleVendorsResult?.message;
113:     }
114:   }
115: 
116:   Future<void> confirmOrderRequest(BuildContext context) async {
117:     confirmOrderRequestResult = null;
118:     messageCheckEligibleVendorsResult = '';
119:     _toggleLoading();
120:     try {
121:       final _response = await _requestService.confirmOrderRequest(
122:           body: _buildConfirmOrderRequestBody(context),
123:           files: _buildFilesListConfirmOrder(context));
124: 
125:       _buildConfirmOrderRequestResponse(context,_response);
126:     } catch (e) {
127:       Helper.logDebug('$runtimeType ---> Failed checkEligibleVendors: ${e}');
128:       messageCheckEligibleVendorsResult = e.toString();
129:     } finally {
130:       _toggleLoading();
131:     }
132:   }
133: 
134:   Map<String, String> _buildConfirmOrderRequestBody(BuildContext context) {
135:     final _dynamicFormProvider = context.read<DynamicFormProvider>();
136: 
137:     Map<String, String> _body = {
138:       'categoryId': (categorySelectedModel?.id ?? 0).toString(),
139:       'customerCityId': (myCitySelectedModel?.id ?? 0).toString(),
140:       'description': descriptionRequest ?? '',
141:       'citiesIdsScope': jsonEncode(selectedCitiesRequestList?.map((e) => e.id).toList()),
142:       'brandId':( brandSelectedModel?.id).toString(),
143:     };
144: 
145:     Map<String, String> _customFields = {};
146:     _dynamicFormProvider.controllersMap.entries.forEach((entry) {
147:       _customFields[entry.key] = _dynamicFormProvider.getValue(entry.key);
148:     });
149: 
150:     _dynamicFormProvider.valuesMap.entries.forEach((entry) {
151:       if(!_dynamicFormProvider.isFileByFieldName(context, entry.key)){
152:         _customFields[entry.key] = entry.value;
153:       }
154:     });
155: 
156:     _body['customFields'] = jsonEncode(_customFields);
157: 
158:     debugPrint('_body===========' + jsonEncode(_body));
159:     return _body;
160:   }
161: 
162:   List<File> _buildFilesListConfirmOrder(BuildContext context) {
163:     final _dynamicFormProvider = context.read<DynamicFormProvider>();
164: 
165:     List<File> _files = [];
166:     _dynamicFormProvider.valuesMap.entries.forEach((entry) {
167:       if(_dynamicFormProvider.isFileByFieldName(context, entry.key)){
168:         _files.add(File(entry.value));
169:       }
170:     });
171: 
172:     return _files;
173:   }
174: 
175:   void _buildConfirmOrderRequestResponse(BuildContext context, RequestResultModel? response){
176:     if (response != null) {
177:       confirmOrderRequestResult = response;
178:       messageCheckEligibleVendorsResult = confirmOrderRequestResult?.message;
179:       if(response.success){
180:         navigationPushAndRemoveUntil(context, HomeUserPage());
181:         ToastHelper.showSuccess(confirmOrderRequestResult?.message ?? '');
182:       }
183:     }
184:   }
185: 
186:   Future<void> ConfirmShippingRequest(BuildContext context,{required Map<String, dynamic> body}) async {
187:     confirmShippingRequestResult = null;
188:     _toggleLoading();
189:     try {
190:       final response = await _requestService.confirmShippingRequest(
191:           body: body);
192:       if(response?.success ?? false){
193:         DialogUtils().showConfirmDialog(context, message: response?.message ?? '', confirm: () async {
194:           _toggleLoading();
195:           final _res = await _requestService.confirmPriceShippingRequest(
196:               body: {
197:                 'id': response?.result?.shippingRequestId ?? 0
198:               });
199:           if(_res?.success ?? false){
200:             navigationPushAndRemoveUntil(context, HomeUserPage());
201:             ToastHelper.showSuccess(response?.message ?? '');
202:           }else{
203:             ToastHelper.showError(response?.message ?? '');
204:             _toggleLoading();
205:           }
206:         });
207:       }else{
208:         ToastHelper.showError(response?.message ?? '');
209:       }
210:     } catch (e) {
211:       Helper.logDebug('$runtimeType ---> Failed checkEligibleVendors: ${e}');
212:       ToastHelper.showError(e.toString());
213:     } finally {
214:       _toggleLoading();
215:     }
216:   }
217: 
218: }
````

## File: lib/core/providers/shipping_provider.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../../models/city_model.dart';
 4: import '../services/shared/shipping_service.dart';
 5: 
 6: class ShippingProvider extends ChangeNotifier {
 7:   final ShippingService _service;
 8: 
 9:   CityModel? myCitySelectedModel;
10: 
11:   ShippingProvider(this._service);
12: 
13:   void selectedMyCity(CityModel? model) {
14:     myCitySelectedModel = model;
15:     notifyListeners();
16:   }
17: 
18: 
19: 
20: }
````

## File: lib/core/providers/users/my_request_user_provider.dart
````dart
  1: import 'package:flutter/material.dart';
  2: 
  3: import '../../../models/request_model.dart';
  4: import '../../../models/response_request_model.dart';
  5: import '../../helpers/helpers.dart';
  6: import '../../helpers/toast_helper.dart';
  7: import '../../services/user/my_requests/my_request_user_service.dart';
  8: 
  9: class MyRequestUserProvider extends ChangeNotifier {
 10:   final MyRequestsUserService _myRequestsUserService;
 11: 
 12:   ResponseRequestResultModel? updateMyRequestResultModel;
 13: 
 14:   List<RequestModel> requestModelList = [];
 15:   RequestModel? detailsMyRequestModel;
 16: 
 17:   MyRequestUserProvider(this._myRequestsUserService);
 18: 
 19:   bool _isLoading = false;
 20:   bool get isLoading => _isLoading;
 21: 
 22:   bool _isLoadingUpdate = false;
 23:   bool get isLoadingUpdate => _isLoadingUpdate;
 24: 
 25:   void _toggleLoading() {
 26:     _isLoading = !_isLoading;
 27:     notifyListeners();
 28:   }
 29: 
 30:   void _toggleLoadingUpdate() {
 31:     _isLoadingUpdate = !_isLoadingUpdate;
 32:     notifyListeners();
 33:   }
 34: 
 35:   int currentPage = 1;
 36:   int lastPage = 1;
 37: 
 38:   bool get hasMore => currentPage <= lastPage;
 39: 
 40:   void resetPagination(){
 41:     requestModelList.clear();
 42:     currentPage = 1;
 43:     lastPage = 1;
 44:   }
 45: 
 46:   Future<void> refreshGetMyRequests() async {
 47:     resetPagination();
 48:     await getMyRequests();
 49:   }
 50: 
 51:   String statusMyRequestSelected = 'open';
 52:   void changeStatusMyRequest(String value) async {
 53:     statusMyRequestSelected = value;
 54:     notifyListeners();
 55:   }
 56: 
 57:   Future<void> getMyRequests({bool loadMore = false}) async {
 58:     _toggleLoading();
 59:     try {
 60:       final response = await _myRequestsUserService.getMyRequests(page: currentPage);
 61:       if (response != null) {
 62: 
 63:         if (loadMore) {
 64:           requestModelList.addAll(response.result?.requestModelList ?? []);
 65:         } else {
 66:           requestModelList = response.result?.requestModelList ?? [];
 67:         }
 68: 
 69:         currentPage = (response.result?.currentPage ?? 1) + 1;
 70:         lastPage = (response.result?.lastPage ?? 1);
 71:       }
 72:     } catch (e) {
 73:       Helper.logDebug('$runtimeType ---> Failed getMyRequests: ${e}');
 74:       ToastHelper.showError(e.toString());
 75:     } finally {
 76:       _toggleLoading();
 77:     }
 78:   }
 79: 
 80:   Future<void> getMyRequestById({required int requestId }) async {
 81:     detailsMyRequestModel = null;
 82:     _toggleLoading();
 83:     try {
 84:       detailsMyRequestModel = await _myRequestsUserService.getMyRequestById(requestId: requestId);
 85:     } catch (e) {
 86:       Helper.logDebug('$runtimeType ---> Failed getMyRequestById: ${e}');
 87:       ToastHelper.showError(e.toString());
 88:     } finally {
 89:       _toggleLoading();
 90:     }
 91:   }
 92: 
 93:   Future<void> updateResponseRequest({required Map<String, dynamic> body, required String status}) async {
 94:     updateMyRequestResultModel = null;
 95:     _toggleLoadingUpdate();
 96:     try {
 97:       final _response = await _myRequestsUserService.updateResponseRequest(
 98:           body: body);
 99: 
100:       if(_response != null && _response.success){
101:         statusMyRequestSelected = status;
102:         ToastHelper.showSuccess(_response.message ?? '');
103:       }else{
104:         ToastHelper.showError(_response?.message ?? '');
105:       }
106: 
107:     } catch (e) {
108:       Helper.logDebug('$runtimeType ---> Failed updateResponseRequest: ${e}');
109:       ToastHelper.showError(e.toString());
110:     } finally {
111:       _toggleLoadingUpdate();
112:     }
113:   }
114: 
115: }
````

## File: lib/core/providers/users/profile_user_provider.dart
````dart
 1: import 'dart:io';
 2: 
 3: import 'package:car_mediator_mobile/core/services/user/profile_user_service.dart';
 4: import 'package:flutter/material.dart';
 5: import 'package:provider/provider.dart';
 6: 
 7: import '../../../features/shared/cache/init_cache.dart';
 8: import '../../../models/user_model.dart';
 9: import '../../../widgets/components.dart';
10: import '../../data_sources/local/cache_helper.dart';
11: import '../../helpers/helpers.dart';
12: import '../../helpers/toast_helper.dart';
13: import '../../utils/constants/enumeration.dart';
14: import '../bottom_navigation_bar_provider.dart';
15: 
16: class ProfileUserProvider extends ChangeNotifier{
17:   ProfileUserService _service;
18: 
19:   UserModel? profileUserModel;
20:   UserResponseModel? userResponseModel;
21:   UserResponseModel? uploadCommercialRecordResponseModel;
22: 
23:   File? logo;
24:   File? commercialRecordFile;
25:   bool isHidePhoneContact = false;
26: 
27:   ProfileUserProvider(this._service);
28: 
29:   void changeLogo(File? file) {
30:     logo = file;
31:     notifyListeners();
32:   }
33: 
34:   bool _isLoading = false;
35:   bool _isLoadingRefresh = false;
36:   bool get isLoadingRefresh => _isLoadingRefresh;
37:   bool get isLoading => _isLoading;
38: 
39:   void _toggleLoading() {
40:     _isLoading = !_isLoading;
41:     notifyListeners();
42:   }
43: 
44:   void _toggleLoadingRefresh() {
45:     _isLoadingRefresh = !_isLoadingRefresh;
46:     notifyListeners();
47:   }
48: 
49:   void changeIsHidePhoneContact(bool value){
50:     isHidePhoneContact = value;
51:     notifyListeners();
52:   }
53: 
54:   Future<void> getUserProfile() async {
55:     profileUserModel = null;
56:     _toggleLoadingRefresh();
57:     try {
58:       profileUserModel = await _service.getUserProfile();
59:     } catch (e) {
60:       Helper.logDebug(
61:           '$runtimeType ---> Failed getUserProfile: ${e}');
62:       ToastHelper.showError(e.toString());
63:     } finally {
64:       _toggleLoadingRefresh();
65:     }
66:   }
67: 
68:   Future<void> updateUserProfile(BuildContext context, Map<String, String> body) async {
69:     userResponseModel = null;
70:     _toggleLoading();
71:     try {
72:       List<File> _files = [];
73:       if(logo != null)
74:       _files.add(logo!);
75: 
76:       userResponseModel = await _service.updateUserProfile(context, body: body, files: _files,);
77:       if(userResponseModel != null){
78:         if(userResponseModel!.success == true){
79:           ToastHelper.showSuccess(userResponseModel!.message);
80:           await CacheHelper.cacheCurrentUserData({
81:             'name': body['name'],
82:             'logo': userResponseModel?.result?.user?.logo ?? '',
83:           });
84:           context.read<BottomNavigationBarProvider>().setCurrentIndex(context, 0);
85:           navigationPushAndRemoveUntil(context, InitCache(userRole: UserRoleEnum.user.name,));
86:         }else{
87:           ToastHelper.showSuccess(userResponseModel!.message);
88:         }
89:       }
90:     }  catch (e) {
91:       Helper.logDebug(
92:           '$runtimeType ---> Failed getVendorProfile: ${e}');
93:       ToastHelper.showError(e.toString());
94:     } finally {
95:       _toggleLoading();
96:     }
97:   }
98: 
99: }
````

## File: lib/core/providers/users/responses_my_request_provider.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../../../models/response_request_model.dart';
 4: import '../../helpers/helpers.dart';
 5: import '../../helpers/toast_helper.dart';
 6: import '../../services/user/my_requests/my_request_user_service.dart';
 7: 
 8: class ResponsesMyRequestProvider extends ChangeNotifier {
 9:   final MyRequestsUserService _myRequestsUserService;
10: 
11:   List<ResponseRequestModel> responseRequestModelList = [];
12: 
13:   ResponseRequestModel? detailsResponseRequestModel;
14: 
15:   ResponsesMyRequestProvider(this._myRequestsUserService);
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
31:     responseRequestModelList.clear();
32:     currentPage = 1;
33:     lastPage = 1;
34:   }
35: 
36:   Future<void> refreshGetResponsesMyRequest({required int requestId}) async {
37:     resetPagination();
38:     await getResponsesMyRequest(requestId: requestId);
39:   }
40: 
41:   Future<void> getResponsesMyRequest({bool loadMore = false, required int requestId}) async {
42:     _toggleLoading();
43:     try {
44:       final response = await _myRequestsUserService.getResponsesMyRequest(requestId: requestId, page: currentPage);
45:       if (response != null) {
46: 
47:         if (loadMore) {
48:           responseRequestModelList.addAll(response.result?.responseRequestModelList ?? []);
49:         } else {
50:           responseRequestModelList = response.result?.responseRequestModelList ?? [];
51:         }
52: 
53:         currentPage = (response.result?.currentPage ?? 1) + 1;
54:         lastPage = (response.result?.lastPage ?? 1);
55:       }
56:     } catch (e) {
57:       Helper.logDebug('$runtimeType ---> Failed getResponsesMyRequest: ${e}');
58:       ToastHelper.showError(e.toString());
59:     } finally {
60:       _toggleLoading();
61:     }
62:   }
63: 
64:   Future<void> getResponseRequestById({required int responseId}) async {
65:     detailsResponseRequestModel = null;
66:     _toggleLoading();
67:     try {
68:       final response = await _myRequestsUserService.getResponseRequestById(responseId: responseId);
69:       if (response != null) {
70:         detailsResponseRequestModel = response;
71:       }else{
72:         ToastHelper.showInfo('لا يوجد رد');
73:       }
74:     } catch (e) {
75:       Helper.logDebug('$runtimeType ---> Failed getResponseRequestById: ${e}');
76:       ToastHelper.showError(e.toString());
77:     } finally {
78:       _toggleLoading();
79:     }
80:   }
81:   
82: }
````

## File: lib/core/providers/vendors/app_commission_provider.dart
````dart
 1: import 'dart:io';
 2: 
 3: import 'package:car_mediator_mobile/widgets/components.dart';
 4: import 'package:flutter/material.dart';
 5: 
 6: import '../../../features/vendor/home/screens/home_vendor_page.dart';
 7: import '../../../models/category_model.dart';
 8: import '../../data_sources/remote/api_endpoints.dart';
 9: import '../../data_sources/remote/api_service.dart';
10: import '../../errors/api_exceptions.dart';
11: import '../../helpers/helpers.dart';
12: import '../../helpers/toast_helper.dart';
13: import '../../utils/constants/enumeration.dart';
14: 
15: class AppCommissionProvider extends ChangeNotifier {
16:   final ApiService _apiService;
17: 
18:   CategoryModel? categoryModelSelected;
19: 
20:   File? invoiceTransferBankImageSelected;
21: 
22:   AppCommissionProvider(this._apiService);
23: 
24:   bool _isLoading = false;
25:   bool get isLoading => _isLoading;
26: 
27:   void _toggleLoading() {
28:     _isLoading = !_isLoading;
29:     notifyListeners();
30:   }
31: 
32:   void selectedCategory(CategoryModel? selection) {
33:     print(selection?.commissionType ?? '');
34:     print(selection?.commission ?? '');
35:     categoryModelSelected = selection;
36:     notifyListeners();
37:   }
38: 
39:   double commissionFees = 0;
40:   void calculateCommission(double price) {
41:     if (categoryModelSelected != null) {
42:       if (categoryModelSelected?.commissionType == CommissionTypeEnum.rate.name){
43:         commissionFees = price * (categoryModelSelected?.commission ?? 0);
44:       }else{
45:         commissionFees = (categoryModelSelected?.commission ?? 0);
46:       }
47:     }
48:     notifyListeners();
49:   }
50: 
51:   void changeInvoiceTransferBankImage(File? file) {
52:     invoiceTransferBankImageSelected = file;
53:     notifyListeners();
54:   }
55: 
56:   Future<void> payAppCommission(BuildContext context, Map<String, String> body) async {
57:     _toggleLoading();
58:     try {
59: 
60:       List<File> _files = [];
61:       _files.add(invoiceTransferBankImageSelected!);
62:       final response = await _apiService.uploadFiles(ApiEndpoints.payAppCommission, fields: body, files: _files);
63:       if(response != null){
64:         if(response['success']){
65:           navigationPush(context, HomeVendorPage());
66:           ToastHelper.showSuccess(response['message']);
67:         }else{
68:           ToastHelper.showError(response['message']);
69:         }
70:       }
71: 
72:     } on ValidationException catch (e) {
73:       final allErrorsText = e.errors
74:           .values
75:           .expand((list) => list)
76:           .join('\n');
77:       ToastHelper.showError(allErrorsText);
78:     } on ApiException catch (e) {
79:       ToastHelper.showError(e.message);
80:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
81:     } catch (e) {
82:       Helper.logDebug('$runtimeType ---> Failed payAppCommission: ${e}');
83:       ToastHelper.showError(e.toString());
84:     } finally {
85:       _toggleLoading();
86:     }
87:   }
88: 
89: }
````

## File: lib/core/providers/vendors/new_request_vendor_provider.dart
````dart
  1: import 'dart:io';
  2: 
  3: import 'package:car_mediator_mobile/core/services/vendor/new_request_service.dart';
  4: import 'package:car_mediator_mobile/features/vendor/home/screens/home_vendor_page.dart';
  5: import 'package:car_mediator_mobile/widgets/components.dart';
  6: import 'package:flutter/material.dart';
  7: import 'package:image_picker/image_picker.dart';
  8: import '../../../models/request_eligible_vendor_model.dart';
  9: import '../../helpers/helpers.dart';
 10: import '../../helpers/toast_helper.dart';
 11: import '../../utils/constants/enumeration.dart';
 12: 
 13: class NewRequestVendorProvider extends ChangeNotifier{
 14:   final NewRequestService _newRequestService;
 15: 
 16:   final ImagePicker _picker = ImagePicker();
 17: 
 18:   List<RequestEligibleVendorModel> requestEligibleVendorModelList  = [];
 19:   RequestEligibleVendorModel? detailsNewRequestsModel;
 20:   List<File> filesList = [];
 21: 
 22:   NewRequestVendorProvider(this._newRequestService);
 23: 
 24:   ResponseRequestAvailabilityEnum responseRequestAvailability = ResponseRequestAvailabilityEnum.available;
 25: 
 26:   bool _isLoading = false;
 27:   bool get isLoading => _isLoading;
 28: 
 29:   void _toggleLoading() {
 30:     _isLoading = !_isLoading;
 31:     notifyListeners();
 32:   }
 33: 
 34:   int currentPage = 1;
 35:   int lastPage = 1;
 36: 
 37:   bool get hasMore => currentPage <= lastPage;
 38: 
 39:   void resetPagination(){
 40:     requestEligibleVendorModelList.clear();
 41:     currentPage = 1;
 42:     lastPage = 1;
 43:   }
 44: 
 45:   void changeResponseRequestAvailability(ResponseRequestAvailabilityEnum value){
 46:     responseRequestAvailability = value;
 47:     notifyListeners();
 48:   }
 49: 
 50:   Future<void> refreshGetAllNewRequests() async {
 51:     resetPagination();
 52:     await getAllNewRequests();
 53:   }
 54: 
 55:   Future<void> getAllNewRequests({bool loadMore = false}) async {
 56:     _toggleLoading();
 57:     try {
 58:       final response = await _newRequestService.getAllNewRequests(page: currentPage);
 59:       if (response != null) {
 60: 
 61:         if (loadMore) {
 62:           requestEligibleVendorModelList.addAll(response.result?.requestEligibleVendorModelList ?? []);
 63:         } else {
 64:           requestEligibleVendorModelList = response.result?.requestEligibleVendorModelList ?? [];
 65:         }
 66: 
 67:         currentPage = (response.result?.currentPage ?? 1) + 1;
 68:         lastPage = (response.result?.lastPage ?? 1);
 69:       }
 70:     } catch (e) {
 71:       Helper.logDebug('$runtimeType ---> Failed getAllNewRequests: ${e}');
 72:       ToastHelper.showError(e.toString());
 73:     } finally {
 74:       _toggleLoading();
 75:     }
 76:   }
 77: 
 78:   Future<void> detailsNewRequests({required int requestId}) async {
 79:     detailsNewRequestsModel = null;
 80:     _toggleLoading();
 81:     try {
 82:       final result = await _newRequestService.detailsNewRequests(requestId: requestId);
 83:       if (result != null) detailsNewRequestsModel = result;
 84: 
 85:     } catch (e) {
 86:       Helper.logDebug('$runtimeType ---> Failed getAllNewRequests: ${e}');
 87:       ToastHelper.showError(e.toString());
 88:     } finally {
 89:       _toggleLoading();
 90:     }
 91:   }
 92: 
 93:   Future<void> sendResponseRequest(BuildContext context, {required Map<String, String> body}) async {
 94:     _toggleLoading();
 95:     try {
 96:       final response = await _newRequestService.sendResponseRequest(body: body, files: filesList);
 97:       if (response != null && response.success){
 98:         filesList.clear();
 99:         navigationPushAndRemoveUntil(context, const HomeVendorPage());
100:         ToastHelper.showSuccess(response.message);
101:       }else{
102:         ToastHelper.showError(response?.message ?? '');
103:       }
104:     } catch (e) {
105:       Helper.logDebug('$runtimeType ---> Failed sendResponseRequest: ${e}');
106:       ToastHelper.showError(e.toString());
107:     } finally {
108:       _toggleLoading();
109:     }
110:   }
111: 
112:   Future<void> pickImages() async {
113:     final List<XFile>? pickedFiles = await _picker.pickMultiImage(imageQuality: 80);
114: 
115:     if (pickedFiles != null && pickedFiles.isNotEmpty) {
116:       filesList = pickedFiles.map((e) => File(e.path)).toList();
117:       notifyListeners();
118:     }
119:   }
120: 
121:   void removeImage(int index){
122:     filesList.removeAt(index);
123:     notifyListeners();
124:   }
125: }
````

## File: lib/core/providers/vendors/profile_vendor_provider.dart
````dart
  1: import 'dart:io';
  2: 
  3: import 'package:car_mediator_mobile/core/services/vendor/profile_vendor_service.dart';
  4: import 'package:flutter/material.dart';
  5: import 'package:provider/provider.dart';
  6: 
  7: import '../../../features/shared/cache/init_cache.dart';
  8: import '../../../models/user_model.dart';
  9: import '../../../widgets/components.dart';
 10: import '../../data_sources/local/cache_helper.dart';
 11: import '../../helpers/helpers.dart';
 12: import '../../helpers/toast_helper.dart';
 13: import '../../utils/constants/enumeration.dart';
 14: import '../auth_provider.dart';
 15: 
 16: class ProfileVendorProvider extends ChangeNotifier{
 17:   ProfileVendorService _service;
 18: 
 19:   UserModel? profileVendorModel;
 20:   UserResponseModel? userResponseModel;
 21:   UserResponseModel? uploadCommercialRecordResponseModel;
 22: 
 23:   File? logo;
 24:   File? commercialRecordFile;
 25:   bool isHidePhoneContact = false;
 26: 
 27:   ProfileVendorProvider(this._service);
 28: 
 29:   void changeLogo(File? file) {
 30:     logo = file;
 31:     notifyListeners();
 32:   }
 33: 
 34:   void changeCommercialRecordFile(File? file) {
 35:     commercialRecordFile = file;
 36:     notifyListeners();
 37:   }
 38: 
 39: 
 40:   bool _isLoading = false;
 41:   bool _isLoadingRefresh = false;
 42:   bool _isLoadingUploadCommercialRecord = false;
 43:   bool get isLoadingRefresh => _isLoadingRefresh;
 44:   bool get isLoading => _isLoading;
 45:   bool get isLoadingUploadCommercialRecord => _isLoadingUploadCommercialRecord;
 46: 
 47:   void _toggleLoading() {
 48:     _isLoading = !_isLoading;
 49:     notifyListeners();
 50:   }
 51: 
 52:   void _toggleLoadingRefresh() {
 53:     _isLoadingRefresh = !_isLoadingRefresh;
 54:     notifyListeners();
 55:   }
 56: 
 57:   void _toggleLoadingUploadCommercialRecord() {
 58:     _isLoadingUploadCommercialRecord = !_isLoadingUploadCommercialRecord;
 59:     notifyListeners();
 60:   }
 61: 
 62:   void changeIsHidePhoneContact(bool value){
 63:     isHidePhoneContact = value;
 64:     notifyListeners();
 65:   }
 66: 
 67:   Future<void> getVendorProfile() async {
 68:     profileVendorModel = null;
 69:     _toggleLoadingRefresh();
 70:     try {
 71:       profileVendorModel = await _service.getVendorProfile();
 72:     } catch (e) {
 73:       Helper.logDebug(
 74:           '$runtimeType ---> Failed getVendorProfile: ${e}');
 75:       ToastHelper.showError(e.toString());
 76:     } finally {
 77:       _toggleLoadingRefresh();
 78:     }
 79:   }
 80: 
 81:   Future<void> updateVendorProfile(BuildContext context, Map<String, String> body) async {
 82:     userResponseModel = null;
 83:     _toggleLoading();
 84:     try {
 85:       List<File> _files = [];
 86:       if(logo != null)
 87:       _files.add(logo!);
 88: 
 89:       userResponseModel = await _service.updateVendorProfile(context, body: body, files: _files,);
 90:       if(userResponseModel != null){
 91:         if(userResponseModel!.success == true){
 92:           ToastHelper.showSuccess(userResponseModel!.message);
 93:           await CacheHelper.cacheCurrentUserData({
 94:             'name': body['companyNameAr'],
 95:             'logo': userResponseModel?.result?.user?.logo ?? '',
 96:             'phone': context.read<AuthProvider>().currentUseModel?.phoneNumber ?? '',
 97:             'company_name_ar': body['companyNameAr'],
 98:           });
 99:           navigationPushAndRemoveUntil(context, InitCache(userRole: UserRoleEnum.vendor.name,));
100:         }else{
101:           ToastHelper.showSuccess(userResponseModel!.message);
102:         }
103:       }
104:     }  catch (e) {
105:       Helper.logDebug(
106:           '$runtimeType ---> Failed getVendorProfile: ${e}');
107:       ToastHelper.showError(e.toString());
108:     } finally {
109:       _toggleLoading();
110:     }
111:   }
112: 
113:   Future<void> uploadCommercialRecordImage(BuildContext context, Map<String, String> body) async {
114:     uploadCommercialRecordResponseModel = null;
115:     _toggleLoadingUploadCommercialRecord();
116:     try {
117:       List<File> _files = [];
118:       if(commercialRecordFile != null)
119:         _files.add(commercialRecordFile!);
120: 
121:       uploadCommercialRecordResponseModel = await _service.uploadCommercialRecordImage(context, body: body, files: _files,);
122:       if(uploadCommercialRecordResponseModel != null){
123:         if(uploadCommercialRecordResponseModel!.success == true){
124:           commercialRecordFile = null;
125:           ToastHelper.showSuccess(uploadCommercialRecordResponseModel!.message);
126:         }else{
127:           ToastHelper.showSuccess(uploadCommercialRecordResponseModel!.message);
128:         }
129:       }
130:     }  catch (e) {
131:       Helper.logDebug(
132:           '$runtimeType ---> Failed uploadCommercialRecordImage: ${e}');
133:       ToastHelper.showError(e.toString());
134:     } finally {
135:       _toggleLoadingUploadCommercialRecord();
136:     }
137:   }
138: 
139: }
````

## File: lib/core/providers/vendors/register_vendor_provider.dart
````dart
 1: import 'dart:io';
 2: 
 3: import 'package:car_mediator_mobile/features/shared/cache/init_cache.dart';
 4: import 'package:car_mediator_mobile/models/category_model.dart';
 5: import 'package:car_mediator_mobile/widgets/components.dart';
 6: import 'package:flutter/material.dart';
 7: 
 8: import '../../../models/city_model.dart';
 9: import '../../../models/user_model.dart';
10: import '../../data_sources/remote/api_endpoints.dart';
11: import '../../data_sources/remote/api_service.dart';
12: import '../../errors/api_exceptions.dart';
13: import '../../helpers/helpers.dart';
14: import '../../helpers/toast_helper.dart';
15: 
16: class RegisterVendorProvider extends ChangeNotifier{
17:   final ApiService _apiService;
18: 
19:   UserResponseModel? userResponseModel;
20:   CityModel? selectedCity;
21:   List<CategoryModel>? selectedCategoriesList = [];
22: 
23:   File? selectedCommercialRecordImage;
24: 
25:   RegisterVendorProvider(this._apiService);
26: 
27:   bool _isLoading = false;
28:   bool get isLoading => _isLoading;
29: 
30:   void _toggleLoading() {
31:     _isLoading = !_isLoading;
32:     notifyListeners();
33:   }
34: 
35:   void changeCity(CityModel? model) {
36:     selectedCity = model;
37:     notifyListeners();
38:   }
39: 
40:   void changeCategories(List<CategoryModel>? list) {
41:     selectedCategoriesList = list ?? [];
42:     notifyListeners();
43:   }
44: 
45:   void changeSelectedCommercialRecordImage(File? file) {
46:     selectedCommercialRecordImage = file;
47:     notifyListeners();
48:   }
49: 
50:   Future<void> registerVendor(BuildContext context, Map<String, String> body) async {
51:     userResponseModel = null;
52:     _toggleLoading();
53:     try {
54: 
55:       List<File> _files = [];
56:       _files.add(selectedCommercialRecordImage!);
57:       final response = await _apiService.uploadFiles(ApiEndpoints.registerVendor, fields: body, files: _files, isGuest: true);
58:       userResponseModel = UserResponseModel.fromJson(response);
59:       if(userResponseModel != null){
60:         if(userResponseModel!.success == true){
61: 
62:           navigationPushAndRemoveUntil(context, InitCache(userRole: null,));
63:           ToastHelper.showSuccess(userResponseModel!.message);
64:         }
65:       }
66:     } on ValidationException catch (e) {
67:       final allErrorsText = e.errors
68:           .values
69:           .expand((list) => list)
70:           .join('\n');
71:       ToastHelper.showError(allErrorsText);
72:     } on ApiException catch (e) {
73:       ToastHelper.showError(e.message);
74:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
75:     } catch (e) {
76:       Helper.logDebug('$runtimeType ---> Failed checkEligibleVendors: ${e}');
77:       ToastHelper.showError(e.toString());
78:     } finally {
79:       _toggleLoading();
80:     }
81:   }
82: 
83:   Map<String, String> _buildRegisterVendorBody() {
84:     return {};
85:   }
86: 
87: }
````

## File: lib/core/providers/vendors/response_request_provider.dart
````dart
 1: import 'package:car_mediator_mobile/core/services/vendor/response_request_service.dart';
 2: import 'package:car_mediator_mobile/models/response_request_model.dart';
 3: import 'package:flutter/material.dart';
 4: 
 5: import '../../helpers/helpers.dart';
 6: import '../../helpers/toast_helper.dart';
 7: 
 8: class ResponseRequestProvider extends ChangeNotifier{
 9: 
10:   final ResponseRequestService _responseRequestService;
11:   ResponseRequestModel? detailsResponseRequestModel;
12: 
13:    List<ResponseRequestModel> responseRequestModelList = [];
14: 
15:   ResponseRequestProvider(this._responseRequestService);
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
31:     responseRequestModelList.clear();
32:     currentPage = 1;
33:     lastPage = 1;
34:   }
35: 
36:   Future<void> refreshGetMyResponseRequests() async {
37:     resetPagination();
38:     await getMyResponseRequests();
39:   }
40: 
41:   Future<void> getMyResponseRequests({bool loadMore = false}) async {
42:     _toggleLoading();
43:     try {
44:       final response = await _responseRequestService.getMyResponseRequests(page: currentPage);
45:       if (response != null) {
46: 
47:         if (loadMore) {
48:           responseRequestModelList.addAll(response.result?.responseRequestModelList ?? []);
49:         } else {
50:           responseRequestModelList = response.result?.responseRequestModelList ?? [];
51:         }
52: 
53:         currentPage = (response.result?.currentPage ?? 1) + 1;
54:         lastPage = (response.result?.lastPage ?? 1);
55:       }
56:     } catch (e) {
57:       Helper.logDebug('$runtimeType ---> Failed getMyResponseRequests: ${e}');
58:       ToastHelper.showError(e.toString());
59:     } finally {
60:       _toggleLoading();
61:     }
62:   }
63: 
64:   Future<void> detailsResponseRequest({required int responseId}) async {
65:     detailsResponseRequestModel = null;
66:     _toggleLoading();
67:     try {
68:       final result = await _responseRequestService.detailsResponseRequest(responseId: responseId);
69:       if (result != null) detailsResponseRequestModel = result;
70: 
71:     } catch (e) {
72:       Helper.logDebug('$runtimeType ---> Failed getAllNewRequests: ${e}');
73:       ToastHelper.showError(e.toString());
74:     } finally {
75:       _toggleLoading();
76:     }
77:   }
78: 
79: }
````

## File: lib/core/providers/vendors/specialty_vendor_provider.dart
````dart
  1: import 'package:car_mediator_mobile/core/providers/cache_provider.dart';
  2: import 'package:flutter/material.dart';
  3: import 'package:provider/provider.dart';
  4: 
  5: import '../../../models/category_model.dart';
  6: import '../../../models/city_model.dart';
  7: import '../../../models/specialty_vendor_model.dart';
  8: import '../../../models/vendor_brand_car_model.dart';
  9: import '../../helpers/helpers.dart';
 10: import '../../helpers/toast_helper.dart';
 11: import '../../services/vendor/specialty_vendor_service.dart';
 12: 
 13: class SpecialtyVendorProvider extends ChangeNotifier {
 14:   final SpecialtyVendorService _service;
 15: 
 16:   List<CategoryModel>? selectedCategoriesList = [];
 17:   List<CityModel>? selectedCitiesList = [];
 18: 
 19:   SpecialtyVendorResponseModel? specialtyVendorResponseModel;
 20:   VendorBrandCarResponseModel? vendorBrandCarResponseModel;
 21: 
 22:   SpecialtyVendorProvider(this._service);
 23: 
 24:   bool _isLoading = false;
 25:   bool _isLoadingRefresh = false;
 26:   bool get isLoadingRefresh => _isLoadingRefresh;
 27:   bool get isLoading => _isLoading;
 28: 
 29:   void _toggleLoading() {
 30:     _isLoading = !_isLoading;
 31:     notifyListeners();
 32:   }
 33: 
 34:   void _toggleLoadingRefresh() {
 35:     _isLoadingRefresh = !_isLoadingRefresh;
 36:     notifyListeners();
 37:   }
 38: 
 39:   void changeCategories(List<CategoryModel>? list) {
 40:     selectedCategoriesList = list ?? [];
 41:     notifyListeners();
 42:   }
 43: 
 44:   void changeCities(List<CityModel>? list) {
 45:     selectedCitiesList = list ?? [];
 46:     notifyListeners();
 47:   }
 48: 
 49:   Future<void> getCategoriesSpecialtyVendor(BuildContext context) async {
 50:     specialtyVendorResponseModel = null;
 51:     _toggleLoadingRefresh();
 52:     try {
 53:       final result = await _service.getCategoriesSpecialtyVendor();
 54:       if (result != null) {
 55:         specialtyVendorResponseModel = result;
 56:         selectedCategoriesList = context
 57:             .read<CacheProvider>()
 58:             .categoriesList
 59:             .where((element) =>
 60:                 result.specialtyVendorModel?.categoriesSpecialty
 61:                     .contains(element.id) ??
 62:                 false)
 63:             .toList();
 64:       }
 65:     } catch (e) {
 66:       Helper.logDebug(
 67:           '$runtimeType ---> Failed getCategoriesSpecialtyVendor: ${e}');
 68:       ToastHelper.showError(e.toString());
 69:     } finally {
 70:       _toggleLoadingRefresh();
 71:     }
 72:   }
 73: 
 74:   Future<void> updateCategorySpecialtyVendor() async {
 75:     _toggleLoading();
 76:     try {
 77:       final result = await _service.updateCategorySpecialtyVendor(body: {
 78:         'categoriesIds': selectedCategoriesList?.map((e) => e.id).toList(),
 79:       });
 80: 
 81:       if(result != null){
 82:         (result.success ?? false)
 83:             ? ToastHelper.showSuccess(result.message ?? '')
 84:             : ToastHelper.showError(result.message ?? '');
 85:       }
 86: 
 87:     } catch (e) {
 88:       Helper.logDebug(
 89:           '$runtimeType ---> Failed updateCategorySpecialtyVendor: ${e}');
 90:       ToastHelper.showError(e.toString());
 91:     } finally {
 92:       _toggleLoading();
 93:     }
 94:   }
 95: 
 96:   Future<void> getVendorCities(BuildContext context) async {
 97:     specialtyVendorResponseModel = null;
 98:     _toggleLoadingRefresh();
 99:     try{
100:       final result = await _service.getVendorCities();
101:       if(result != null){
102:         specialtyVendorResponseModel = result;
103:         selectedCitiesList = context
104:             .read<CacheProvider>()
105:             .citiesList
106:             .where((element) => result.specialtyVendorModel?.cities
107:             .contains(element.id) ?? false)
108:             .toList();
109:       }
110:     } catch (e) {
111:       Helper.logDebug(
112:           '$runtimeType ---> Failed getVendorCities: ${e}');
113:       ToastHelper.showError(e.toString());
114:     } finally {
115:       _toggleLoadingRefresh();
116:     }
117:   }
118: 
119:   Future<void> updateVendorCities() async {
120:     _toggleLoading();
121:     try {
122:       final result = await _service.updateVendorCities(body: {
123:         'citiesIds': selectedCitiesList?.map((e) => e.id).toList(),
124:       });
125:       if(result != null){
126:         (result.success ?? false)
127:             ? ToastHelper.showSuccess(result.message ?? '')
128:             : ToastHelper.showError(result.message ?? '');
129:       }
130:     } catch (e) {
131:       Helper.logDebug(
132:           '$runtimeType ---> Failed updateVendorCities: ${e}');
133:       ToastHelper.showError(e.toString());
134:     } finally {
135:       _toggleLoading();
136:     }
137:   }
138: 
139:   Future<void> getVendorBrandsCar(BuildContext context) async {
140:     vendorBrandCarResponseModel = null;
141:     _toggleLoadingRefresh();
142:     try{
143:       vendorBrandCarResponseModel = await _service.getVendorBrandsCar();
144:     } catch (e) {
145:       Helper.logDebug(
146:           '$runtimeType ---> Failed getVendorBrandsCar: ${e}');
147:       ToastHelper.showError(e.toString());
148:     } finally {
149:       _toggleLoadingRefresh();
150:     }
151:   }
152: }
````

## File: lib/core/services/base_service.dart
````dart
 1: import 'package:car_mediator_mobile/core/data_sources/remote/api_service.dart';
 2: import 'package:car_mediator_mobile/core/errors/api_exceptions.dart';
 3: import 'package:flutter/cupertino.dart';
 4: 
 5: import '../helpers/toast_helper.dart';
 6: 
 7: class BaseService {
 8:   void showValidationError(ValidationException e) {
 9:     final allErrorsText = e.errors
10:         .values
11:         .expand((list) => list)
12:         .join('\n');
13:     ToastHelper.showError(allErrorsText);
14:   }
15: 
16:   void showApiException(ApiException e) {
17:     ToastHelper.showError(e.message);
18:     debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
19:   }
20: 
21:   void showExceptionError(e) {
22:     debugPrint('Unexpected Error: $e');
23:     ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
24:   }
25: 
26:   Future<T?> postService<T>({
27:     required ApiService apiService,
28:     required String endpoint,
29:     required Map<String, dynamic> body,
30:     required T Function(Map<String, dynamic>) fromJson,
31:     bool isGuest = false,
32:   }) async {
33: 
34:     try {
35:       final response = await apiService.postData(endpoint, body: body, isGuest: isGuest);
36:       return fromJson(response);
37:     } on ValidationException catch (e) {
38:       showValidationError(e);
39:       return null;
40:     } on ApiException catch (e) {
41:       ToastHelper.showError(e.message);
42:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
43:       return null;
44:     } catch (e) {
45:       debugPrint('Unexpected Error: $e');
46:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
47:       return null;
48:     }
49:   }
50:   // end postService
51: 
52:   Future<T?> getService<T>({
53:     required ApiService apiService,
54:     required String endpoint,
55:     Map<String, dynamic>? queryParams,
56:     required T Function(Map<String, dynamic>) fromJson,
57:     bool isGuest = false,
58:   }) async {
59: 
60:     try {
61:       final response = await apiService.getData(endpoint,queryParams: queryParams, isGuest: isGuest);
62:       return fromJson(response);
63:     } on ValidationException catch (e) {
64:       showValidationError(e);
65:       return null;
66:     } on ApiException catch (e) {
67:       ToastHelper.showError(e.message);
68:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
69:       return null;
70:     } catch (e) {
71:       debugPrint('Unexpected Error: $e');
72:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
73:       return null;
74:     }
75:   }
76: // end getService
77: }
````

## File: lib/core/services/shared/auth_service.dart
````dart
 1: import 'package:car_mediator_mobile/core/data_sources/remote/api_endpoints.dart';
 2: import 'package:flutter/cupertino.dart';
 3: 
 4: import '../../../models/user_model.dart';
 5: import '../../data_sources/remote/api_service.dart';
 6: import '../../errors/api_exceptions.dart';
 7: import '../../helpers/toast_helper.dart';
 8: import '../base_service.dart';
 9: 
10: class AuthService extends BaseService {
11:   final ApiService _apiService;
12: 
13:   AuthService(this._apiService);
14: 
15:   Future<UserResponseModel?> auth(
16:       {required Map<String, dynamic> body, required String path}) async {
17:     try {
18:       final response = await _apiService.postData(
19:           path,
20:           body: body,
21:           isGuest: true);
22: 
23:       return UserResponseModel.fromJson(response);
24: 
25:     } on ValidationException catch (e) {
26:       showValidationError(e);
27:       return null;
28:     } on ApiException catch (e) {
29:       ToastHelper.showError(e.message);
30:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
31:       return null;
32:     }
33:   }
34: 
35:   Future<UserResponseModel?> logout() async {
36:     try {
37:       final response = await _apiService.postData(
38:           ApiEndpoints.logout,
39:           body: {},);
40: 
41:       return UserResponseModel.fromJson(response);
42: 
43:     } on ApiException catch (e) {
44:       ToastHelper.showError(e.message);
45:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
46:       return null;
47:     }
48:   }
49: }
````

## File: lib/core/services/shared/cache_service.dart
````dart
  1: import 'package:car_mediator_mobile/core/adapters/brand_car_entity.dart';
  2: import 'package:car_mediator_mobile/core/adapters/category_has_brand_field_entity.dart';
  3: import 'package:car_mediator_mobile/core/adapters/city_entity.dart';
  4: import 'package:car_mediator_mobile/core/adapters/custom_field_entity.dart';
  5: import 'package:car_mediator_mobile/core/data_sources/local/cache_helper.dart';
  6: import 'package:car_mediator_mobile/core/data_sources/remote/api_endpoints.dart';
  7: import 'package:car_mediator_mobile/core/data_sources/remote/api_service.dart';
  8: import 'package:car_mediator_mobile/core/errors/api_exceptions.dart';
  9: import 'package:car_mediator_mobile/models/category_model.dart';
 10: import 'package:flutter/cupertino.dart';
 11: 
 12: import '../../../models/ads_banner_model.dart';
 13: import '../../../models/brand_car_model.dart';
 14: import '../../../models/category_has_brand_field_model.dart';
 15: import '../../../models/city_model.dart';
 16: import '../../../models/custom_field_model.dart';
 17: import '../../adapters/ads_banner_entity.dart';
 18: import '../../adapters/category_entity.dart';
 19: import '../../helpers/toast_helper.dart';
 20: import '../../utils/constants/enumeration.dart';
 21: 
 22: class CacheService {
 23:   final ApiService _apiService;
 24:   bool _isSyncing = false;
 25: 
 26:   CacheService(this._apiService);
 27: 
 28:   // Check if we need to sync data with the server
 29:   Future<void> fetchAndCacheData() async {
 30:     // prevent repetition
 31:     if (_isSyncing) return;
 32:     _isSyncing = true;
 33: 
 34:     try {
 35:       final response = await _apiService.postData(
 36:           ApiEndpoints.checkCacheUpdates,
 37:           body: _getAllLastUpdatesBodyRequest(),
 38:           isGuest: true);
 39: 
 40:       if (response?['success'] == true) {
 41:         final dataList = response?['result']?['dataList'] as Map<String, dynamic>?;
 42:         final lastUpdateTimes = response?['result']?['lastUpdateTimesList'] as Map<String, dynamic>?;
 43: 
 44:         await _processCacheData(dataList, lastUpdateTimes);
 45:       }
 46:     } on ValidationException catch (e) {
 47:       rethrow;
 48:     } on ApiException catch (e) {
 49:       ToastHelper.showError(e.message);
 50:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
 51:     } finally {
 52:       _isSyncing = false;
 53:     }
 54:   }
 55: 
 56:   Map<String, dynamic> _getAllLastUpdatesBodyRequest() {
 57:     return {
 58:       'cities_last_update_at': CacheHelper.getCacheLastUpdateTime('cities_last_update_at'),
 59:       'brands_cars_last_update_at':
 60:           CacheHelper.getCacheLastUpdateTime('brands_cars_last_update_at'),
 61:       'categories_last_update_at':
 62:           CacheHelper.getCacheLastUpdateTime('categories_last_update_at'),
 63:       'category_has_brand_field_last_update_at':
 64:           CacheHelper.getCacheLastUpdateTime('category_has_brand_field_last_update_at'),
 65:       'custom_fields_last_update_at': CacheHelper.getCacheLastUpdateTime('custom_fields_last_update_at'),
 66:       'ads_banners_last_update_at': CacheHelper.getCacheLastUpdateTime('ads_banners_last_update_at'),
 67:     };
 68:   }
 69: 
 70:   Future<void> _processCacheData(Map<String, dynamic>? dataList, Map<String, dynamic>? lastUpdateTimes) async {
 71:     if (dataList != null) {
 72:       await Future.wait([
 73:         if(dataList.containsKey(EntityNameCacheStaticDataEnum.cities.value))
 74:         _cacheGeneralData<CityEntity>(
 75:             dataList[EntityNameCacheStaticDataEnum.cities.value] ?? [],
 76:             CityEntity.fromJson,
 77:             CacheHelper.cacheCities),
 78: 
 79:         if(dataList.containsKey(EntityNameCacheStaticDataEnum.brandsCars.value))
 80:         _cacheGeneralData<BrandCarEntity>(
 81:             dataList[EntityNameCacheStaticDataEnum.brandsCars.value] ?? [],
 82:             BrandCarEntity.fromJson,
 83:             CacheHelper.cacheBrandsCars),
 84: 
 85:         if(dataList.containsKey(EntityNameCacheStaticDataEnum.categories.value))
 86:         _cacheGeneralData<CategoryEntity>(
 87:             dataList[EntityNameCacheStaticDataEnum.categories.value] ?? [],
 88:             CategoryEntity.fromJson,
 89:             CacheHelper.cacheCategories),
 90: 
 91:         if(dataList.containsKey(EntityNameCacheStaticDataEnum.categoryHasBrandField.value))
 92:         _cacheGeneralData<CategoryHasBrandFieldEntity>(
 93:             dataList[EntityNameCacheStaticDataEnum.categoryHasBrandField.value] ?? [],
 94:             CategoryHasBrandFieldEntity.fromJson,
 95:             CacheHelper.cacheCategoryBrandFields),
 96: 
 97:         if(dataList.containsKey(EntityNameCacheStaticDataEnum.customFields.value))
 98:         _cacheGeneralData<CustomFieldEntity>( dataList[EntityNameCacheStaticDataEnum.customFields.value] ?? [],
 99:             CustomFieldEntity.fromJson,
100:             CacheHelper.cacheCustomFields),
101: 
102:         if(dataList.containsKey(EntityNameCacheStaticDataEnum.adsBanners.value))
103:         _cacheGeneralData<AdsBannerEntity>( dataList[EntityNameCacheStaticDataEnum.adsBanners.value] ?? [],
104:             AdsBannerEntity.fromJson,
105:             CacheHelper.cacheAdsBanners),
106:       ]);
107:       }
108: 
109:     // update last update times
110:     await CacheHelper.cacheLastUpdateTimestamps(lastUpdateTimes ?? {});
111:   }
112: 
113:   //---------------------- Helper methods for cache static data -----------------------------------
114: 
115:   Future<void> _cacheGeneralData<T>(
116:       List<dynamic> jsonList,
117:       T Function(Map<String, dynamic>) fromJson,
118:       Future<void> Function(List<T>) cacheFunction) async {
119:     final entities = jsonList.map((e) => fromJson(e)).toList();
120:     await cacheFunction(entities);
121:   }
122: 
123:   //---------------------- Helper methods for get cached static data -----------------------------------
124:   List<CityModel> getCachedCities() {
125:     return CacheHelper.getCachedCities()
126:         .map((e) => CityModel.fromJson(e.toJson()))
127:         .toList();
128:   }
129: 
130:   List<BrandCarModel> getCachedBrandsCars() {
131:     return CacheHelper.getCachedBrandsCars()
132:         .map((e) => BrandCarModel.fromJson(e.toJson()))
133:         .toList();
134:   }
135: 
136:   List<CategoryModel> getCachedCategories() {
137:     return CacheHelper.getCachedCategories()
138:         .map((e) => CategoryModel.fromJson(e.toJson()))
139:         .toList();
140:   }
141: 
142:   List<CategoryHasBrandFieldModel> getCachedCategoryBrandFields() {
143:     return CacheHelper.getCachedCategoryBrandFields()
144:         .map((e) => CategoryHasBrandFieldModel.fromJson(e.toJson()))
145:         .toList();
146:   }
147: 
148:   List<CustomFieldModel> getCachedCustomFields() {
149:     return CacheHelper.getCachedCustomFields()
150:         .map((e) => CustomFieldModel.fromJson(e.toJson()))
151:         .toList();
152:   }
153: 
154:   List<AdsBannerModel> getCachedAdsBanners() {
155:     return CacheHelper.getCachedAdsBanners()
156:         .map((e) => AdsBannerModel.fromJson(e.toJson()))
157:         .toList();
158:   }
159: }
````

## File: lib/core/services/shared/common_service.dart
````dart
 1: import 'package:car_mediator_mobile/core/data_sources/remote/api_service.dart';
 2: import 'package:flutter/cupertino.dart';
 3: 
 4: import '../../data_sources/remote/api_endpoints.dart';
 5: import '../../errors/api_exceptions.dart';
 6: import '../../helpers/toast_helper.dart';
 7: 
 8: class CommonService {
 9:   final ApiService _apiService;
10: 
11:   CommonService(this._apiService);
12: 
13:   // create post request
14: 
15:   Future<dynamic> complaintVendorService({required Map<String, dynamic> body}) async {
16:     try {
17:       return await _apiService.postData(
18:         ApiEndpoints.complaintVendorService,
19:         body: body,);
20:     } on ApiException catch (e) {
21:       ToastHelper.showError(e.message);
22:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
23:       return null;
24:     }
25:   }
26: 
27: 
28: }
````

## File: lib/core/services/shared/conversation_service.dart
````dart
 1: import 'dart:io';
 2: 
 3: import 'package:car_mediator_mobile/core/errors/api_exceptions.dart';
 4: import 'package:car_mediator_mobile/core/services/base_service.dart';
 5: import 'package:flutter/cupertino.dart';
 6: 
 7: import '../../../models/conversation_model.dart';
 8: import '../../../models/message_model.dart';
 9: import '../../data_sources/remote/api_endpoints.dart';
10: import '../../data_sources/remote/api_service.dart';
11: import '../../helpers/toast_helper.dart';
12: 
13: class ConversationService extends BaseService {
14:   final ApiService _apiService;
15: 
16:   ConversationService(this._apiService);
17: 
18:   Future<dynamic> createConversation(
19:       {required Map<String, dynamic> body}) async {
20:     try {
21:       return await _apiService.postData(
22:         ApiEndpoints.createConversation,
23:           body: body,);
24:     } on ValidationException catch (e) {
25:       showValidationError(e);
26:       return null;
27:     } on ApiException catch (e) {
28:       ToastHelper.showError(e.message);
29:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
30:       return null;
31:     }
32:   }
33: 
34:   Future<ConversationResponseModel?> getMyConversations({ required String path, required int page}) async {
35:     try {
36:       final response = await _apiService.getData(path, queryParams: {'page': page.toString()});
37:       return ConversationResponseModel.fromJson(response);
38:     } on ApiException catch (e) {
39:       ToastHelper.showError(e.message);
40:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
41:       return null;
42:     } catch (e) {
43:       debugPrint('Unexpected Error: $e');
44:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
45:       return null;
46:     }
47:   }
48: 
49:   Future<List<Message>> fetchMessages({required int conversationId, required int lastMessageId}) async {
50:     try {
51:       final response =  await _apiService.getData("chat/messages/$conversationId?last_message_id=$lastMessageId");
52:       if (response == null) return [];
53: 
54:       return (response['result'] as List)
55:           .map((m) => Message.fromJson(m))
56:           .toList();
57: 
58:     } on ValidationException catch (e) {
59:       showValidationError(e);
60:       return [];
61:     } on ApiException catch (e) {
62:       // ToastHelper.showError(e.message);
63:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
64:       return [];
65:     }
66:   }
67: 
68:   Future<dynamic> sendMessage(
69:       {required Map<String, String> body, File? file}) async {
70:     try {
71:       return await _apiService.uploadSingleFile(
72:         ApiEndpoints.sendMessageChat,
73:           fields: body,
74:         file: file);
75:     } on ValidationException catch (e) {
76:       showValidationError(e);
77:       return null;
78:     } on ApiException catch (e) {
79:       ToastHelper.showError(e.message);
80:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
81:       return null;
82:     }
83:   }
84: }
````

## File: lib/core/services/shared/shipping_service.dart
````dart
1: import '../../data_sources/remote/api_service.dart';
2: 
3: class ShippingService{
4:   final ApiService _apiService;
5: 
6:   ShippingService(this._apiService);
7: }
````

## File: lib/core/services/user/my_requests/my_request_user_service.dart
````dart
 1: import 'package:flutter/cupertino.dart';
 2: 
 3: import '../../../../models/request_model.dart';
 4: import '../../../../models/response_request_model.dart';
 5: import '../../../data_sources/remote/api_endpoints.dart';
 6: import '../../../data_sources/remote/api_service.dart';
 7: import '../../../errors/api_exceptions.dart';
 8: import '../../../helpers/toast_helper.dart';
 9: import '../../base_service.dart';
10: 
11: class MyRequestsUserService extends BaseService {
12:   final ApiService _apiService;
13: 
14:   MyRequestsUserService(this._apiService);
15: 
16:   Future<RequestResultModel?> getMyRequests({required int page}) async {
17:     try {
18:       final response = await _apiService.getData(ApiEndpoints.getMyRequestUser, queryParams: {'page': page.toString()});
19:       return RequestResultModel.fromJson(response);
20:     } on ApiException catch (e) {
21:       ToastHelper.showError(e.message);
22:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
23:       return null;
24:     } catch (e) {
25:       debugPrint('Unexpected Error: $e');
26:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
27:       return null;
28:     }
29:   }
30: 
31:   Future<RequestModel?> getMyRequestById({required int requestId}) async {
32:     try {
33:       final response = await _apiService.getData('${ApiEndpoints.getMyRequestUser}/${requestId}');
34:       if(response == null)
35:         return null;
36: 
37:       return (response['success']) ? RequestModel.fromJson(response['result']) : null;
38: 
39:     } on ApiException catch (e) {
40:       ToastHelper.showError(e.message);
41:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
42:       return null;
43:     } catch (e) {
44:       debugPrint('Unexpected Error: $e');
45:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
46:       return null;
47:     }
48:   }
49: 
50:   Future<ResponseRequestResultModel?> getResponsesMyRequest({required int page, required int requestId}) async {
51:     try {
52:       final response = await _apiService.getData('${ApiEndpoints.getResponsesMyRequest}/$requestId', queryParams: {'page': page.toString()});
53:       return ResponseRequestResultModel.fromJson(response);
54:     } on ApiException catch (e) {
55:       ToastHelper.showError(e.message);
56:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
57:       return null;
58:     } catch (e) {
59:       debugPrint('Unexpected Error: $e');
60:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
61:       return null;
62:     }
63:   }
64: 
65:   Future<ResponseRequestModel?> getResponseRequestById({required int responseId}) async {
66:     try {
67:       final response = await _apiService.getData('${ApiEndpoints.getResponseRequestById}/$responseId');
68:       if(response['success'] ?? false) {
69:         return ResponseRequestModel.fromJson(response['result']);
70:       }
71: 
72:       return null;
73:     } on ApiException catch (e) {
74:       ToastHelper.showError(e.message);
75:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
76:       return null;
77:     } catch (e) {
78:       debugPrint('Unexpected Error: $e');
79:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
80:       return null;
81:     }
82:   }
83: 
84:   Future<ResponseRequestResultModel?> updateResponseRequest({required Map<String, dynamic> body}) async {
85:     return postService<ResponseRequestResultModel>(
86:       apiService: _apiService,
87:       endpoint: ApiEndpoints.updateStatusMyRequest,
88:       body: body,
89:       fromJson: (json) => ResponseRequestResultModel.fromJson(json),
90:     );
91:   }
92: 
93: }
````

## File: lib/core/services/user/profile_user_service.dart
````dart
 1: import 'dart:io';
 2: 
 3: import 'package:car_mediator_mobile/core/services/base_service.dart';
 4: import 'package:flutter/cupertino.dart';
 5: 
 6: import '../../../models/user_model.dart';
 7: import '../../data_sources/remote/api_endpoints.dart';
 8: import '../../data_sources/remote/api_service.dart';
 9: import '../../errors/api_exceptions.dart';
10: import '../../helpers/helpers.dart';
11: import '../../helpers/toast_helper.dart';
12: 
13: class ProfileUserService extends BaseService {
14:   final ApiService _apiService;
15: 
16:   ProfileUserService(this._apiService);
17: 
18:   Future<UserModel?> getUserProfile() async {
19:     try {
20:       final response = await _apiService.getData(ApiEndpoints.getUserProfile);
21: 
22:       if(response == null) return null;
23: 
24:       if(response['success'])
25:         return UserModel.fromJson(response?['result']);
26: 
27:       ToastHelper.showError(response['message']);
28:       return null;
29: 
30:     } on ValidationException catch (e) {
31:       showValidationError(e);
32:       return null;
33:     } on ApiException catch (e) {
34:       ToastHelper.showError(e.message);
35:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
36:       return null;
37:     } catch (e) {
38:       debugPrint('Unexpected Error: $e');
39:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
40:       return null;
41:     }
42:   }
43: 
44:   Future<UserResponseModel?> updateUserProfile(BuildContext context, {required Map<String, String> body, required List<File> files}) async {
45:     try {
46:       final response = await _apiService.uploadFiles(ApiEndpoints.updateUserProfile, fields: body, files: files);
47:       return UserResponseModel.fromJson(response);
48: 
49:     } on ValidationException catch (e) {
50:       showValidationError(e);
51:       return null;
52:     } on ApiException catch (e) {
53:       ToastHelper.showError(e.message);
54:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
55:       return null;
56:     }
57:   }
58: 
59: }
````

## File: lib/core/services/user/requests/request_service.dart
````dart
 1: import 'dart:io';
 2: 
 3: import 'package:car_mediator_mobile/core/services/base_service.dart';
 4: import 'package:car_mediator_mobile/models/request_model.dart';
 5: import 'package:flutter/cupertino.dart';
 6: 
 7: import '../../../data_sources/remote/api_endpoints.dart';
 8: import '../../../data_sources/remote/api_service.dart';
 9: import '../../../errors/api_exceptions.dart';
10: import '../../../helpers/toast_helper.dart';
11: 
12: class RequestService extends BaseService {
13:   final ApiService _apiService;
14: 
15:   RequestService(this._apiService);
16: 
17:   Future<RequestResultModel?> checkEligibleVendors({required Map<String, dynamic> body}) async {
18:     return postService<RequestResultModel>(
19:       apiService: _apiService,
20:       endpoint: ApiEndpoints.checkEligibleVendors,
21:       body: body,
22:       fromJson: (json) => RequestResultModel.fromJson(json),
23:     );
24:   }
25: 
26:   // Future<RequestResultModel?> confirmOrderRequest({required Map<String, dynamic> body}) async {
27:   //   return postService<RequestResultModel>(
28:   //     apiService: _apiService,
29:   //     endpoint: ApiEndpoints.confirmOrderRequest,
30:   //     body: body,
31:   //     fromJson: (json) => RequestResultModel.fromJson(json),
32:   //   );
33:   // }
34: 
35:   Future<RequestResultModel?> confirmOrderRequest({
36:     required Map<String, String> body,
37:     required List<File>? files,
38:   }) async {
39: 
40:     try {
41:       final response = await _apiService.uploadFiles(ApiEndpoints.confirmOrderRequest, fields: body, files: files,);
42:       return RequestResultModel.fromJson(response);
43:     } on ValidationException catch (e) {
44:       showValidationError(e);
45:       return null;
46:     } on ApiException catch (e) {
47:       ToastHelper.showError(e.message);
48:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
49:       return null;
50:     } catch (e) {
51:       debugPrint('Unexpected Error: $e');
52:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
53:       return null;
54:     }
55:   }
56: 
57:   Future<RequestResultModel?> confirmShippingRequest({required Map<String, dynamic> body}) async {
58:     return postService<RequestResultModel>(
59:       apiService: _apiService,
60:       endpoint: ApiEndpoints.ConfirmShippingRequest,
61:       body: body,
62:       fromJson: (json) => RequestResultModel.fromJson(json),
63:     );
64:   }
65: 
66:   Future<RequestResultModel?> confirmPriceShippingRequest({required Map<String, dynamic> body}) async {
67:     return postService<RequestResultModel>(
68:       apiService: _apiService,
69:       endpoint: ApiEndpoints.ConfirmPriceShippingRequest,
70:       body: body,
71:       fromJson: (json) => RequestResultModel.fromJson(json),
72:     );
73:   }
74: 
75: }
````

## File: lib/core/services/vendor/app_commission_service.dart
````dart
1: 
````

## File: lib/core/services/vendor/new_request_service.dart
````dart
 1: import 'dart:io';
 2: 
 3: import 'package:flutter/cupertino.dart';
 4: 
 5: import '../../../models/request_eligible_vendor_model.dart';
 6: import '../../../models/response_request_model.dart';
 7: import '../../data_sources/remote/api_endpoints.dart';
 8: import '../../data_sources/remote/api_service.dart';
 9: import '../../errors/api_exceptions.dart';
10: import '../../helpers/toast_helper.dart';
11: import '../base_service.dart';
12: 
13: class NewRequestService extends BaseService {
14:   final ApiService _apiService;
15: 
16:   NewRequestService(this._apiService);
17: 
18:   Future<RequestEligibleVendorResultModel?> getAllNewRequests({required int page}) async {
19:     try {
20:       final response = await _apiService.getData(ApiEndpoints.getAllNewRequestsVendor, queryParams: {'page': page.toString()});
21:       return RequestEligibleVendorResultModel.fromJson(response);
22:     } on ApiException catch (e) {
23:       ToastHelper.showError(e.message);
24:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
25:       return null;
26:     } catch (e) {
27:       debugPrint('Unexpected Error: $e');
28:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
29:       return null;
30:     }
31:   }
32: 
33:   Future<RequestEligibleVendorModel?> detailsNewRequests({required int requestId}) async {
34:     try {
35:       final response = await _apiService.getData(ApiEndpoints.detailsNewRequestsVendor+'/${requestId}',);
36: 
37:       if(! response['success']) return null;
38: 
39:       return response?['result'] == null ? null : RequestEligibleVendorModel.fromJson(response?['result']);
40: 
41:     } on ApiException catch (e) {
42:       ToastHelper.showError(e.message);
43:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
44:       return null;
45:     } catch (e) {
46:       debugPrint('Unexpected Error: $e');
47:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
48:       return null;
49:     }
50:   }
51: 
52:   // Future<ResponseRequestResultModel?> sendResponseRequest({required Map<String, dynamic> body}) async {
53:   //   return postService<ResponseRequestResultModel>(
54:   //     apiService: _apiService,
55:   //     endpoint: ApiEndpoints.sendResponseRequestVendor,
56:   //     body: body,
57:   //     fromJson: (json) => ResponseRequestResultModel.fromJson(json),
58:   //   );
59:   // }
60: 
61:   Future<ResponseRequestResultModel?> sendResponseRequest({
62:     required Map<String, String> body,
63:     required List<File>? files,
64:   }) async {
65:     try {
66:       final response = await _apiService.uploadFiles(ApiEndpoints.sendResponseRequestVendor, fields: body, files: files,);
67:       return ResponseRequestResultModel.fromJson(response);
68:     } on ValidationException catch (e) {
69:       showValidationError(e);
70:       return null;
71:     } on ApiException catch (e) {
72:       ToastHelper.showError(e.message);
73:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
74:       return null;
75:     } catch (e) {
76:       debugPrint('Unexpected Error: $e');
77:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
78:       return null;
79:     }
80:   }
81: }
````

## File: lib/core/services/vendor/profile_vendor_service.dart
````dart
 1: import 'dart:io';
 2: 
 3: import 'package:car_mediator_mobile/core/services/base_service.dart';
 4: import 'package:flutter/cupertino.dart';
 5: 
 6: import '../../../models/user_model.dart';
 7: import '../../data_sources/remote/api_endpoints.dart';
 8: import '../../data_sources/remote/api_service.dart';
 9: import '../../errors/api_exceptions.dart';
10: import '../../helpers/helpers.dart';
11: import '../../helpers/toast_helper.dart';
12: 
13: class ProfileVendorService extends BaseService {
14:   final ApiService _apiService;
15: 
16:   ProfileVendorService(this._apiService);
17: 
18:   Future<UserModel?> getVendorProfile() async {
19:     try {
20:       final response = await _apiService.getData(ApiEndpoints.getVendorProfile);
21: 
22:       if(response == null) return null;
23: 
24:       if(response['success'])
25:         return UserModel.fromJson(response?['result']);
26: 
27:       ToastHelper.showError(response['message']);
28:       return null;
29: 
30:     } on ValidationException catch (e) {
31:       showValidationError(e);
32:       return null;
33:     } on ApiException catch (e) {
34:       ToastHelper.showError(e.message);
35:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
36:       return null;
37:     } catch (e) {
38:       debugPrint('Unexpected Error: $e');
39:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
40:       return null;
41:     }
42:   }
43: 
44:   Future<UserResponseModel?> updateVendorProfile(BuildContext context, {required Map<String, String> body, required List<File> files}) async {
45:     try {
46:       final response = await _apiService.uploadFiles(ApiEndpoints.updateVendorProfile, fields: body, files: files);
47:       return UserResponseModel.fromJson(response);
48: 
49:     } on ValidationException catch (e) {
50:       showValidationError(e);
51:       return null;
52:     } on ApiException catch (e) {
53:       ToastHelper.showError(e.message);
54:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
55:       return null;
56:     }
57:   }
58: 
59: 
60:   Future<UserResponseModel?> uploadCommercialRecordImage(BuildContext context, {required Map<String, String> body, required List<File> files}) async {
61:     try {
62:       final response = await _apiService.uploadFiles(ApiEndpoints.uploadCommercialRecordImage, fields: body, files: files);
63:       return UserResponseModel.fromJson(response);
64: 
65:     } on ValidationException catch (e) {
66:       showValidationError(e);
67:       return null;
68:     } on ApiException catch (e) {
69:       ToastHelper.showError(e.message);
70:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
71:       return null;
72:     }
73:   }
74: 
75: }
````

## File: lib/core/services/vendor/response_request_service.dart
````dart
 1: import 'package:flutter/cupertino.dart';
 2: 
 3: import '../../../models/response_request_model.dart';
 4: import '../../data_sources/remote/api_endpoints.dart';
 5: import '../../data_sources/remote/api_service.dart';
 6: import '../../errors/api_exceptions.dart';
 7: import '../../helpers/toast_helper.dart';
 8: 
 9: class ResponseRequestService{
10:   final ApiService _apiService;
11: 
12:   ResponseRequestService(this._apiService);
13: 
14:   Future<ResponseRequestResultModel?> getMyResponseRequests({required int page}) async {
15:     try {
16:       final response = await _apiService.getData(ApiEndpoints.getMyResponseRequests, queryParams: {'page': page.toString()});
17:       return ResponseRequestResultModel.fromJson(response);
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
29:   Future<ResponseRequestModel?> detailsResponseRequest({required int responseId}) async {
30:     try {
31:       final response = await _apiService.getData(ApiEndpoints.detailResponseRequests+'/${responseId}',);
32: 
33:       if(! response['success']) return null;
34: 
35:       return response?['result'] == null ? null : ResponseRequestModel.fromJson(response?['result']);
36: 
37:     } on ApiException catch (e) {
38:       ToastHelper.showError(e.message);
39:       debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
40:       return null;
41:     } catch (e) {
42:       debugPrint('Unexpected Error: $e');
43:       ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
44:       return null;
45:     }
46:   }
47: 
48: }
````

## File: lib/core/services/vendor/specialty_vendor_service.dart
````dart
 1: import '../../../models/specialty_vendor_model.dart';
 2: import '../../../models/vendor_brand_car_model.dart';
 3: import '../../data_sources/remote/api_endpoints.dart';
 4: import '../../data_sources/remote/api_service.dart';
 5: import '../base_service.dart';
 6: 
 7: class SpecialtyVendorService extends BaseService {
 8:   final ApiService _apiService;
 9: 
10:   SpecialtyVendorService(this._apiService);
11: 
12:   Future<SpecialtyVendorResponseModel?> getCategoriesSpecialtyVendor() async {
13:     return getService<SpecialtyVendorResponseModel>(
14:       apiService: _apiService,
15:       endpoint: ApiEndpoints.getCategoriesSpecialtyVendor,
16:       fromJson: (json) => SpecialtyVendorResponseModel.fromJson(json),
17:     );
18:   }
19: 
20:   Future<SpecialtyVendorResponseModel?> updateCategorySpecialtyVendor({required Map<String, dynamic> body}) async {
21:     return postService<SpecialtyVendorResponseModel>(
22:       apiService: _apiService,
23:       endpoint: ApiEndpoints.updateCategorySpecialtyVendor,
24:       body: body,
25:       fromJson: (json) => SpecialtyVendorResponseModel.fromJson(json),
26:     );
27:   }
28: 
29:   Future<SpecialtyVendorResponseModel?> getVendorCities() async {
30:     return getService<SpecialtyVendorResponseModel>(
31:       apiService: _apiService,
32:         endpoint: ApiEndpoints.getVendorCitiesVendor,
33:       fromJson: (json) => SpecialtyVendorResponseModel.fromJson(json),
34:     );
35:   }
36: 
37:   Future<SpecialtyVendorResponseModel?> updateVendorCities({required Map<String, dynamic> body}) async {
38:     return postService<SpecialtyVendorResponseModel>(
39:       apiService: _apiService,
40:       endpoint: ApiEndpoints.updateVendorCitiesVendor,
41:       body: body,
42:       fromJson: (json) => SpecialtyVendorResponseModel.fromJson(json),
43:     );
44:   }
45: 
46:   Future<VendorBrandCarResponseModel?> getVendorBrandsCar() async {
47:     return getService<VendorBrandCarResponseModel>(
48:       apiService: _apiService,
49:       endpoint: ApiEndpoints.getVendorBrandsCar,
50:       fromJson: (json) => VendorBrandCarResponseModel.fromJson(json),
51:     );
52:   }
53: 
54: }
````

## File: lib/core/styles/styles.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../utils/constants/colors_constants.dart';
 4: import '../utils/size_config.dart';
 5: 
 6: TextStyle get txtLightSemiBold035 =>  TextStyle(
 7:   color: AppColor.lightColor,fontSize: SizeConfig.widthResponsive(0.035),fontWeight: FontWeight.w600,
 8: );
 9: 
10: TextStyle get txtLightRegular035 =>  TextStyle(
11:   color: AppColor.lightColor,fontSize: SizeConfig.widthResponsive(0.035),fontWeight: FontWeight.w400,
12: );
13: 
14: TextStyle get txtRegular04 =>  TextStyle(
15:   color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w400,
16: );
17: 
18: TextStyle get txtSemiBold033 =>  TextStyle(
19:   color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.033),fontWeight: FontWeight.w600,
20: );
21: 
22: TextStyle get txtBold04 =>  TextStyle(
23:   color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w600,
24: );
25: TextStyle get txtMedium05 =>  TextStyle(
26:   color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.05),fontWeight: FontWeight.w500,
27: );
28: 
29: TextStyle get txtBold05 =>  TextStyle(
30:   color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.05),fontWeight: FontWeight.w600,
31: );
32: 
33: TextStyle get txtMedium04 =>  TextStyle(
34:   color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w500,
35: );
36: 
37: TextStyle get txtSemiBold035 =>  TextStyle(
38:   color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.035),fontWeight: FontWeight.w600,
39: );
````

## File: lib/core/theme/app_theme.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../utils/constants/colors_constants.dart';
 4: 
 5: class AppTheme {
 6:   static final ThemeData lightTheme = ThemeData(
 7:     fontFamily:'Tajawal',
 8:     brightness: Brightness.light,
 9:     primaryColor: AppColor.primaryColor,
10:     colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
11:     useMaterial3: true,
12:     scaffoldBackgroundColor: AppColor.secondaryColor,
13: 
14:     // appBarTheme: AppBarTheme(
15:     //   backgroundColor: primaryColor,
16:     //   foregroundColor: Colors.white,
17:     //   titleTextStyle: TextStyle(
18:     //     fontFamily: 'NotoKufiArabic',
19:     //     fontSize: 20,
20:     //     fontWeight: FontWeight.bold,
21:     //     color: Colors.white,
22:     //   ),
23:     //   centerTitle: true,
24:     //   elevation: 0,
25:     // ),
26:   );
27: }
````

## File: lib/core/ui_models/nav_bar_item.dart
````dart
1: class NavBarItem {
2:   final String icon;
3:   final String label;
4:   const NavBarItem({required this.icon, required this.label});
5: }
````

## File: lib/core/utils/connection_utils.dart
````dart
 1: import 'dart:async';
 2: import 'dart:io';
 3: import 'package:flutter/foundation.dart';
 4: import 'package:http/http.dart' as http;
 5: 
 6: class ConnectionUtils {
 7:   static const List<String> _lookupAddresses = [
 8:     'google.com',
 9:     'cloudflare.com',
10:     'microsoft.com',
11:   ];
12: 
13:   static Future<bool> hasInternetConnection({
14:     Duration timeout = const Duration(seconds: 5),
15:     int successThreshold = 1,
16:   }) async {
17:     try{
18:       int successCount = 0;
19:       int completedCount = 0;
20:       final completer = Completer<bool>();
21:       final totalHosts = _lookupAddresses.length;
22: 
23:       // ضبط مؤقت للانتهاء الكلي
24:       Timer(timeout, () {
25:         if (!completer.isCompleted) {
26:           completer.complete(false);
27:         }
28:       });
29: 
30:       for (final host in _lookupAddresses) {
31:         _checkHost(host, timeout).then((success) {
32:           if (completer.isCompleted) return;
33: 
34:           completedCount++;
35:           if (success) {
36:             successCount++;
37:             // على الاقل واحد ينجح successThreshold = 1
38:             if (successCount >= successThreshold) {
39:               completer.complete(true);
40:               return;
41:             }
42:           }
43:           // إذا اكتملت جميع الطلبات ولم نصل للعتبة المطلوبة
44:           if (completedCount == totalHosts) {
45:             completer.complete(false);
46:           }
47:         }).catchError((_) {
48:           // معالجة الأخطاء دون التأثير على العملية
49:           completedCount++;
50:           if (completedCount == totalHosts && !completer.isCompleted) {
51:             completer.complete(false);
52:           }
53:         });
54:       }
55: 
56:       return completer.future;
57:     } catch(e){
58:       return false;
59:     }
60:   }
61: 
62:   static Future<bool> _checkHost(String host, Duration timeout) async {
63:     try {
64:       // 1. DNS Lookup
65:       final addresses = await InternetAddress.lookup(host)
66:           .timeout(timeout, onTimeout: () => []);
67: 
68:       if (addresses.isNotEmpty && addresses.first.rawAddress.isNotEmpty) {
69:         return true;
70:       }
71: 
72:       // 2. HTTP HEAD
73:       final response = await http.head(Uri.https(host, '/'))
74:           .timeout(timeout);
75: 
76:       return response.statusCode == 200;
77:     } on SocketException catch (_) {
78:       debugPrint("not connect");
79:       return false;
80:     } catch (e) {
81:       debugPrint('Host $host unreachable: $e');
82:       return false;
83:     }
84:   }
85: }
````

## File: lib/core/utils/constants/assets_path.dart
````dart
 1: class AssetsPath{
 2:   //static const String icon_launcher = 'assets/images/icon_launcher.png';
 3:   static const String logo = 'assets/images/logo.png';
 4:   static const String login = 'assets/images/login.png';
 5:   static const String add_image = 'assets/images/add_image.png';
 6:   static const String add = 'assets/images/add.png';
 7:   static const String icon_close = 'assets/images/close.png';
 8:   static const String icon_error = 'assets/images/icon_error.png';
 9:   static const String icon_info = 'assets/images/icon_info.png';
10:   static const String icon_success = 'assets/images/icon_success.png';
11:   static const String icon_warning = 'assets/images/icon_warning.png';
12:   static const String price_tag = 'assets/images/price-tag.png';
13:   static const String icon_riyal = 'assets/images/icon_riyal.png';
14:   static const String visa = 'assets/images/visa.png';
15:   static const String phone_square = 'assets/images/phone_square.png';
16:   static const String whatsapp_square = 'assets/images/whatsapp_square.png';
17:   static const String whatsapp = 'assets/images/whatsapp.png';
18:   static const String up_right_arrow = 'assets/images/up-right-arrow.png';
19:   static const String user_image = 'assets/images/user-image.png';
20:   static const String user_icon = 'assets/images/icon_user.png';
21:   static const String chat_bubble = 'assets/images/chat-bubble.png';
22:   static const String home_icon = 'assets/images/icon_home.png';
23:   static const String my_orders_icon = 'assets/images/my-orders.png';
24:   static const String empty_image = 'assets/images/empty_image.png';
25:   static const String saudia_flag = 'assets/images/saudia-flag.png';
26:   static const String empty_page = 'assets/images/empty_page.png';
27: }
````

## File: lib/core/utils/constants/colors_constants.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: class AppColor{
 4: 
 5:   static const Color primaryColor = Color(0xff052659);
 6:   static const Color secondaryColor = Color(0xffF2F5F7);
 7:   static const Color thirdColor = Color(0xff00A8A8);
 8:   static const Color accentColor = Color(0xffffb03b);
 9:   static const Color lightColor = Color(0xffB4B6C1);
10:   static const Color blackColor = Color(0xff000000);
11:   static const Color darkGrey= Color(0xff1E1E1E);
12:   static const Color whiteColor = Color(0xffF8F9FC);
13:   static const Color greyColor = Color(0xff9e9e9e);
14: 
15:   static const Color textColor = Color(0xff282E52);
16: 
17:   // gray color shade
18:   static const Color greyShade1 = Color(0xFF8E8E93);
19:   static const Color greyShade2 = Color(0xFFAEAEB2);
20:   static const Color greyShade3 = Color(0xFFC7C7CC);
21:   static const Color greyShade4 = Color(0xFFD1D1D6);
22:   static const Color greyShade5 = Color(0xFFE5E5EA);
23:   static const Color greyShade6 = Color(0xFFF2F2F7);
24: 
25: 
26:   // static const Color whitColor = Color(0xffF8F9FC);
27:   //
28:   // static const Color navyColor = Color(0xff4b4b4b);
29: 
30:   static const Color shadowColor = Colors.black87;
31: 
32: 
33:   static const Color greyBg = Color(0xFFEFEFEF);
34: 
35:   static const Color grey50 = Color(0xFFFAFAFA);
36:   static const Color grey100 = Color(0xFFF5F5F5);
37:   static const Color grey200 = Color(0xFFEEEEEE);
38:   static const Color grey300 = Color(0xFFE0E0E0);
39:   static const Color grey350 = Color(0xFFD6D6D6);// only for raised button while pressed in light theme
40:   static const Color grey400 = Color(0xFFBDBDBD);
41:   static const Color grey600 = Color(0xFF757575);
42:   static const Color grey700 = Color(0xFF616161);
43:   static const Color grey800 = Color(0xFF424242);
44:   static const Color grey850 = Color(0xFF303030); // only for background color in dark theme
45:   static const Color grey900 = Color(0xFF212121);
46: 
47: }
````

## File: lib/core/utils/constants/constants.dart
````dart
 1: const double paddingConst = 12.0;
 2:  const double paddingHorizontalConst = 12.0;
 3:  const double paddingVerticalConst = 12.0;
 4:  const double borderRadiusConst = 10.0;
 5: 
 6: 
 7: class AdapterTypeId {
 8:   static const int cities = 0;
 9:   static const int brandsCars = 1;
10:   static const int categories = 2;
11:   static const int categoryHasBrandField = 3;
12:   static const int customFields = 4;
13:   static const int AdsBanners = 5;
14: }
````

## File: lib/core/utils/constants/enumeration.dart
````dart
  1: import 'package:flutter/material.dart';
  2: 
  3: enum LastUpdateTimesCacheKeysEnum {
  4:   cities('cities_last_update_at'),
  5:   brandsCars('brands_cars_last_update_at'),
  6:   categories('categories_last_update_at'),
  7:   categoryHasBrandField('category_has_brand_field_last_update_at'),
  8:   customFields('custom_fields_last_update_at'),
  9:   adsBanners('ads_banners_last_update_at');
 10: 
 11:   final String cacheKey;
 12:   const LastUpdateTimesCacheKeysEnum(this.cacheKey);
 13: }
 14: // LastUpdateTimesCacheKeysEnum.cities.cacheKey ==> cities_last_update_at
 15: 
 16: enum EntityNameCacheStaticDataEnum {
 17:   cities('cities'),
 18:   brandsCars('brands_cars'),
 19:   categories('categories'),
 20:   categoryHasBrandField('category_has_brand_field'),
 21:   customFields('custom_fields'),
 22:   adsBanners('ads_banners');
 23: 
 24:   final String value;
 25:   const EntityNameCacheStaticDataEnum(this.value);
 26: }
 27: 
 28: enum CustomFieldTypeEnum {
 29:   text,
 30:   text_area,
 31:   number,
 32:   select,
 33:   checkbox,
 34:   radio,
 35:   date,
 36:   file
 37: }
 38: 
 39: enum UserRoleEnum {
 40:   admin,
 41:   vendor,
 42:   user,
 43: }
 44: 
 45: enum ResponseRequestAvailabilityEnum {
 46:   available,
 47:   available_with_difference,
 48:   unavailable,
 49: }
 50: 
 51: enum CategoryStatusEnum
 52: {
 53:   Active,
 54:   Inactive,
 55:   Soon
 56: }
 57: 
 58: enum StatusShippingRequestEnum
 59: {
 60:   Pending,
 61:   Completed,
 62: }
 63: 
 64: enum CommissionTypeEnum
 65: {
 66:   rate,
 67:   amount,
 68: }
 69: 
 70: enum RequestCustomerStatusEnum {
 71:   open,
 72:   closed,
 73:   canceled,
 74:   completed,
 75: }
 76: 
 77: extension StatusInfo on RequestCustomerStatusEnum {
 78:   String get label {
 79:     switch (this) {
 80:       case RequestCustomerStatusEnum.open:
 81:         return 'مفتوح';
 82:       case RequestCustomerStatusEnum.closed:
 83:         return 'مغلق';
 84:       case RequestCustomerStatusEnum.canceled:
 85:         return 'ملغي';
 86:       case RequestCustomerStatusEnum.completed:
 87:         return 'مكتمل';
 88:     }
 89:   }
 90: 
 91:   IconData get icon {
 92:     switch (this) {
 93:       case RequestCustomerStatusEnum.open:
 94:         return Icons.folder_open;
 95:       case RequestCustomerStatusEnum.closed:
 96:         return Icons.lock;
 97:       case RequestCustomerStatusEnum.canceled:
 98:         return Icons.cancel;
 99:       case RequestCustomerStatusEnum.completed:
100:         return Icons.check_circle;
101:     }
102:   }
103: 
104:   Color get color {
105:     switch (this) {
106:       case RequestCustomerStatusEnum.open:
107:         return Colors.blue;
108:       case RequestCustomerStatusEnum.closed:
109:         return Colors.grey;
110:       case RequestCustomerStatusEnum.canceled:
111:         return Colors.red;
112:       case RequestCustomerStatusEnum.completed:
113:         return Colors.green;
114:     }
115:   }
116: }
````

## File: lib/core/utils/constants/extensions.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../../../l10n/app_localizations.dart';
 4: 
 5: //AppLocalizations.of(context).welcome
 6: // context.loc.welcome
 7: extension BuildContextHelper on BuildContext {
 8:   AppLocalizations get loc {
 9:     return AppLocalizations.of(this)!;
10:   }
11: }
12: /*
13: "welcomeMessage": "Hello, {userName}!",
14: AppLocalizations.of(context)!.welcomeMessage('Ahmed'))
15: -----------------------
16: */
````

## File: lib/core/utils/context_utils.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../../main.dart';
 4: 
 5: class ContextUtils {
 6: 
 7:   static BuildContext? get globalContext {
 8:     // 1. Check the key status first
 9:     if (navigatorKey.currentState == null || !navigatorKey.currentState!.mounted) {
10:       return null;
11:     }
12: 
13:     final overlayContext = navigatorKey.currentState?.overlay?.context;
14:     if (overlayContext != null) {
15:       return overlayContext;
16:     }
17:     // another solution is to use currentContext
18:     final currentContext = navigatorKey.currentContext;
19:     if (currentContext != null && Navigator.of(currentContext).mounted) {
20:       return currentContext;
21:     }
22: 
23:     return null;
24:   }
25: }
````

## File: lib/core/utils/custom_time_ago.dart
````dart
 1: import 'package:timeago/timeago.dart';
 2: 
 3: class CustomTimeAgo implements LookupMessages {
 4:   @override String prefixAgo() => '';
 5:   @override String prefixFromNow() => '';
 6:   @override String suffixAgo() => '';
 7:   @override String suffixFromNow() => '';
 8:   @override String lessThanOneMinute(int seconds) => 'الآن';
 9:   @override String aboutAMinute(int minutes) => '${'منذ'} ${minutes} ${'دقيقة'}';
10:   @override String minutes(int minutes) => '${'منذ'} ${minutes} ${'دقيقة'}';
11:   @override String aboutAnHour(int minutes) => '${'منذ'} ${minutes} ${'ساعة'}';
12:   @override String hours(int hours) => '${'منذ'} ${hours} ${'ساعة'}';
13:   @override String aDay(int hours) => '${'منذ'} ${hours} ${'ساعات'}';
14:   @override String days(int days) => '${'منذ'} ${days}${'يوم'}';
15:   @override String aboutAMonth(int days) => '${'منذ'} ${days} ${'أيام'}';
16:   @override String months(int months) => '${'منذ'} ${months} ${'شهر'}';
17:   @override String aboutAYear(int year) => '${'منذ'} ${year} ${'سنة'}';
18:   @override String years(int years) => '${'منذ'} ${years} ${'سنوات'}';
19:   @override String wordSeparator() => ' ';
20: }
````

## File: lib/core/utils/date_parser_utils.dart
````dart
  1: import 'package:flutter/cupertino.dart';
  2: import 'package:flutter/material.dart';
  3: import 'package:intl/intl.dart';
  4: import 'package:timeago/timeago.dart' as timeago;
  5: 
  6: class DateParserUtils {
  7:   // note : call await initializeDateFormatting(); in --> main,dart
  8: 
  9:   //static String getDayOfWeek(DateTime date) => DateFormat('EEE','ar').format(date);
 10:   static String getDayOfWeek(DateTime date) => DateFormat.E('ar').format(date);
 11:   static String getDayOfMonth(DateTime date) => DateFormat('dd').format(date);
 12: 
 13:   //static String getMonth(DateTime date) => DateFormat('MMMM, yyyy').format(date);
 14:   static String getMonth(DateTime date) => DateFormat.MMMM('ar').format(date) +' , '+DateFormat('yyyy').format(date);
 15: 
 16:   static String getDate(DateTime date) => DateFormat('yyyy-MM-dd').format(date);
 17: 
 18:   static String getDateWithTime(DateTime? date) {
 19:     if(date != null)
 20:       return DateFormat('yyyy-MM-dd hh:mm').format(date);
 21:     return '';
 22:   }
 23: 
 24:   static Future<String> getDatePicker(BuildContext context) async {
 25:     DateTime? picked = await showDatePicker(
 26:       context: context,
 27:       initialDate: DateTime.now(),
 28:       firstDate: DateTime(1900),
 29:       lastDate: DateTime(2100),
 30:     );
 31: 
 32:     if (picked != null) {
 33:      return picked.toIso8601String().split('T').first;
 34:     }
 35: 
 36:     return '';
 37:   }
 38: 
 39: 
 40:   static String getDateSearch(DateTime? date) {
 41:     if(date != null)
 42:       return DateFormat('yyyy-MM-dd 00:00').format(date);
 43:     return '';
 44:   }
 45: 
 46:   static String getDateFromString(String? datetimeString) {
 47:     if(datetimeString != null && datetimeString != '' )
 48:       return DateFormat('yyyy-MM-dd').format(DateFormat('yyyy-MM-dd').parse(datetimeString));
 49:     return '';
 50:   }
 51: 
 52:   static String getDateWithTimeFromString(String? datetimeString) {
 53:     if(datetimeString != null && datetimeString != '' )
 54:       return DateFormat('yyyy-MM-dd hh:mm').format(DateFormat('yyyy-MM-dd hh:mm').parse(datetimeString));
 55:     return '';
 56:   }
 57: 
 58:   static String getTimeFromString(String? datetimeString) {
 59:     if(datetimeString != null && datetimeString != '' )
 60:       return DateFormat('hh:mm').format(DateFormat('yyyy-MM-dd hh:mm').parse(datetimeString));
 61:     return '';
 62:   }
 63: 
 64:   static String getTime(DateTime? date) {
 65:     if(date != null)
 66:       return DateFormat('hh:mm').format(date);
 67:     return '';
 68:   }
 69: 
 70:   static int numberDaysBetweenDates(DateTime? from, DateTime? to) {
 71:     if(from !=null && to !=null)
 72:       return to.difference(from).inDays;
 73:     return 0;
 74:   }
 75: 
 76:   static bool checkDateBetweenDates(DateTime? from, DateTime? to) {
 77:     DateTime _now = DateTime.parse(DateParserUtils.getDate(DateTime.now()));
 78:     if(from !=null && to !=null) {
 79:       if ((from.isBefore(_now) || from.isAtSameMomentAs(_now)) && (to.isAfter(_now) || to.isAtSameMomentAs(_now))){
 80:         print('checkDateBetweenDates--------true-----');
 81:         return true;
 82:       }
 83:     }
 84:     print('checkDateBetweenDates--------false-----');
 85:     return false;
 86:   }
 87: 
 88:   static List<int> yearList(){
 89:     int currentYear = DateTime.now().year;
 90:     int startingYear = 2000;
 91:     return List.generate((currentYear-startingYear)+8, (index) => startingYear+index);
 92:   }
 93: 
 94:   static String timeAgoFormat(String? date, {String locale = 'ar'}) {
 95:     if(date != null && date.isNotEmpty)
 96:       return timeago.format(DateTime.parse(date),locale: locale);
 97:     return '';
 98:   }
 99: 
100:   static Future<String> getDateFormattedController(BuildContext context ) async {
101:     DateTime? pickedDate = await showDatePicker(
102:         context: context,
103:         initialDate: DateTime.now(),
104:         firstDate: DateTime(1990),
105:         lastDate: DateTime(2100));
106: 
107:     if (pickedDate != null) {
108:       String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
109:       print(formattedDate); //formatted date output using intl package =>  2021-03-16
110:       return formattedDate;
111:     } else {
112:       return '';
113:     }
114:   }
115: 
116: }
````

## File: lib/core/utils/deviceInfoUtilse.dart
````dart
 1: import 'package:device_info_plus/device_info_plus.dart';
 2: 
 3: class DeviceInfoUtils {
 4: 
 5:   // Android
 6:   static Future<AndroidDeviceInfo> androidDeviceInfo() async {
 7:     final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
 8:     //if (Platform.isAndroid)
 9:     AndroidDeviceInfo info = await deviceInfo.androidInfo;
10:     return info;
11:     // print(info.version.release ?? 'Unknown');
12:     // print(info.board);
13:     // print(info.bootloader);
14:     // print(info.brand);
15:     // print(info.device);
16: 
17:   }
18: 
19:   //ios
20:   static Future<IosDeviceInfo> iosDeviceInfo() async {
21:     final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
22:     //if (Platform.isIOS)
23:     IosDeviceInfo info = await deviceInfo.iosInfo;
24:     return info;
25:     // print(info.name);
26:     // print(info.systemName);
27:     // print(info.systemVersion ?? 'Unknown');
28:     // print(info.model);
29:     // print(info.localizedModel);
30:   }
31: 
32:   //web
33:   static Future<WebBrowserInfo> webBrowserInfo() async {
34:     final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
35:     WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
36:     print('Running on ${webBrowserInfo
37:         .userAgent}'); // e.g. "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0"
38:     return webBrowserInfo;
39:   }
40: }
````

## File: lib/core/utils/dialogUtils.dart
````dart
  1: import 'package:car_mediator_mobile/core/utils/constants/extensions.dart';
  2: import 'package:flutter/material.dart';
  3: 
  4: import '../../features/shared/auth/login_screen.dart';
  5: import '../../widgets/components.dart';
  6: import '../../widgets/customButton2.dart';
  7: import 'constants/assets_path.dart';
  8: import 'constants/colors_constants.dart';
  9: 
 10: class DialogUtils{
 11:   DialogUtils._();
 12:   static final DialogUtils _instance = DialogUtils._();
 13:   factory DialogUtils() => _instance;
 14: 
 15:   Future<void> showOptionsDialog( BuildContext context,{required String title,
 16:     required String option1,required String option2,
 17:     required GestureTapCallback onTap1,
 18:     required GestureTapCallback onTap2}) {
 19:     return showDialog(
 20:         context: context,
 21:         builder: (BuildContext context) {
 22:           return AlertDialog(
 23:             title: Text(title),
 24:             content: SingleChildScrollView(
 25:               child: ListBody(
 26:                 children: [
 27:                   GestureDetector(
 28:                     onTap:onTap1,
 29:                     child: Text(option1),
 30:                   ),
 31:                   const Padding(padding: EdgeInsets.all(10)),
 32:                   GestureDetector(
 33:                     child: Text(option2),
 34:                     onTap:onTap2,
 35:                   ),
 36:                 ],
 37:               ),
 38:             ),
 39:           );
 40:         }
 41:     );
 42:   }
 43: 
 44:   Future showAdvancedDialog(BuildContext context,{ String? title , description ='' ,
 45:     String? iconPath, textCancel='خروج' ,String? textOk, Color? iconColor,
 46:     required GestureTapCallback onTabCancel, final GestureTapCallback? onTabOk ,Color colorCancelButton = Colors.redAccent, }) async {
 47:     return showDialog(context: context,
 48:         builder: (BuildContext context) {
 49:           return Dialog(
 50:             shape: RoundedRectangleBorder(
 51:               borderRadius: BorderRadius.circular(20),
 52:             ),
 53:             elevation: 0,
 54:             backgroundColor: Colors.transparent,
 55:             child: Container(
 56:               padding: const EdgeInsets.only(left: 16,top: 16, right: 16,bottom: 16),
 57:               margin: const EdgeInsets.only(top: 10),
 58:               decoration: BoxDecoration(
 59:                 shape: BoxShape.rectangle,
 60:                 color: Colors.white,
 61:                 borderRadius: BorderRadius.circular(20),
 62: 
 63:               ),
 64:               child: SingleChildScrollView(
 65:                 child: Column(
 66:                   mainAxisSize: MainAxisSize.min,
 67:                   children: <Widget>[
 68:                     Image.asset(iconPath ?? '',width: 70,height: 70,color: iconColor,),
 69:                     const SizedBox(height: 10.0,),
 70:                     title != null ? Text(title ,textAlign: TextAlign.center,style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w600),) : const SizedBox() ,
 71:                     const SizedBox(height: 8.0,),
 72:                     Text(description,style:  TextStyle(fontSize: 16),textAlign: TextAlign.center,),
 73:                     description !=null || description !='' ? const SizedBox(height: 5,) : const SizedBox(height: 5,),
 74:                     const SizedBox(height: 8.0,),
 75:                     textOk == null ? CustomButton2(
 76:                       onPressed:onTabCancel ,
 77:                       width: double.infinity,
 78:                       margin:const EdgeInsets.only(left: 10.0 ,right: 10.0),
 79:                       text: textCancel,
 80:                     ) :Row(
 81:                       children: [
 82:                         Expanded(flex: 1,
 83:                           child: CustomButton2(
 84:                             onPressed:onTabOk ?? (){},
 85:                             margin:const EdgeInsets.only(left: 5.0 ,right: 5.0),
 86:                             text: textOk,
 87:                           ),
 88:                         ),
 89:                         Expanded(flex: 1,
 90:                           child: CustomButton2(
 91:                             onPressed:onTabCancel ,
 92:                             margin:const EdgeInsets.only(left: 5.0 ,right: 5.0),
 93:                             bgColor: colorCancelButton,
 94:                             borderColor: colorCancelButton,
 95:                             text: textCancel,
 96:                           ),
 97:                         ),
 98:                       ],
 99:                     ),
100:                   ],
101:                 ),
102:               ),
103:             ),
104:           );
105: 
106:         }
107:     );
108:   }
109: 
110:   // Future uploadDialog(BuildContext context ,{required VoidCallback getImageFromGallery ,required VoidCallback getImageFromCamera}){
111:   //   return showDialog(
112:   //     context: context,
113:   //     builder: (BuildContext context) {
114:   //       return CustomAlertDialog(
115:   //         height: 200,
116:   //         widget: Padding(
117:   //           padding: const EdgeInsets.all(10.0),
118:   //           child: Column(
119:   //             crossAxisAlignment: CrossAxisAlignment.start,
120:   //             children: [
121:   //               ListTile(
122:   //                 leading: const Icon(
123:   //                   Icons.add_photo_alternate_outlined,
124:   //                 ),
125:   //                 title: TextButton(
126:   //                   child:  Text(
127:   //                     myLocalizations(context,'gallery'),
128:   //                     style: TextStyle(
129:   //                       fontSize: 20,
130:   //                       color: AppColor.PrimaryColor,
131:   //                     ),
132:   //                   ),
133:   //                   onPressed: () {
134:   //                     getImageFromGallery();
135:   //                     Navigator.pop(context);
136:   //                   },
137:   //                 ),
138:   //               ),
139:   //               ListTile(
140:   //                 leading:
141:   //                 const Icon(Icons.add_a_photo_outlined),
142:   //                 title: TextButton(
143:   //                   child:  Text(
144:   //                     myLocalizations(context,'camera'),
145:   //                     style: TextStyle(
146:   //                       fontSize: 20,
147:   //                       color: AppColor.PrimaryColor,
148:   //                     ),
149:   //                   ),
150:   //                   onPressed: () {
151:   //                     getImageFromCamera();
152:   //                     Navigator.pop(context);
153:   //                   },
154:   //                 ),
155:   //               ),
156:   //             ],
157:   //           ),
158:   //         ),
159:   //       );
160:   //     },
161:   //   );
162:   // }
163: 
164:   void showNoInternetDialog(BuildContext context){
165:     WidgetsBinding.instance.addPostFrameCallback((_){
166:       showAdvancedDialog(context,
167:           description: context.loc.noInternetConnection,
168:           textCancel: 'خروج',
169:           iconPath: AssetsPath.icon_error,
170:           onTabCancel: (){
171:             Navigator.of(context).pop();
172:           });
173:     });
174:   }
175: 
176:   void showLoginDialog(BuildContext context){
177:     DialogUtils().showAdvancedDialog(context,description: 'الرجاء تسجيل الدخول',
178:         iconPath: AssetsPath.login,
179:         iconColor: AppColor.primaryColor,
180:         textCancel: 'تسجيل الدخول',
181:         onTabCancel: (){
182:           Navigator.of(context).pop();
183:           navigationPush(context, LoginScreen());
184:         });
185:   }
186: 
187:   void showErrorDialog(BuildContext context,{String? title , String? description}){
188:     DialogUtils().showAdvancedDialog(context,title: 'خطاء' ?? '',
189:         description: description,
190:         iconPath: AssetsPath.icon_error,
191:         onTabCancel: (){
192:           Navigator.of(context).pop();
193:         });
194:   }
195: 
196:   void showSuccessDialog(BuildContext context,{String? title , String? description}){
197:     DialogUtils().showAdvancedDialog(context,title: title,
198:         description: description,
199:         iconPath: AssetsPath.icon_success,
200:         onTabCancel: (){
201:           Navigator.of(context).pop();
202:         });
203:   }
204: 
205:   void showConfirmDialog(BuildContext context,{required String? message, required final VoidCallback confirm}){
206:     DialogUtils().showAdvancedDialog(context,
207:       description: message,
208:       textCancel: 'خروج',
209:       textOk: 'موافق',
210:       iconPath: AssetsPath.icon_info,
211:       onTabCancel: (){
212:         Navigator.of(context).pop();
213:       },
214:       onTabOk: () async {
215:         Navigator.of(context).pop();
216:         confirm();
217:       },
218:     );
219:   }
220: 
221: // dynamic confirmAddAdsDialog({
222: //   required BuildContext context,
223: //   VoidCallback? onSave,
224: //   TextEditingController? textController,
225: // }) {
226: //   return showDialog(
227: //     context: context,
228: //     useSafeArea: false,
229: //     barrierDismissible: false,
230: //     builder: (context) {
231: //       return SafeArea(
232: //         child: StatefulBuilder(
233: //           builder: (BuildContext context,
234: //               void Function(void Function()) setState) {
235: //             return Dialog(
236: //               insetPadding:
237: //               const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
238: //               shape: RoundedRectangleBorder(
239: //                   borderRadius: AppTheme.defaultRadius),
240: //               backgroundColor: AppTheme.whiteColor,
241: //               child: Padding(
242: //                 padding: const EdgeInsets.all(16),
243: //                 child: Column(
244: //                   crossAxisAlignment: CrossAxisAlignment.center,
245: //                   mainAxisSize: MainAxisSize.min,
246: //                   children: [
247: //                     const SizedBox(height: 10),
248: //                     Image.asset(
249: //                       'assets/images/logo1.png',
250: //                       fit: BoxFit.cover,
251: //                       width: 80,
252: //                     ),
253: //                     const SizedBox(height: 16),
254: //                     Text(
255: //                       "إستعادة كلمة السر",
256: //                       style: AppTheme.body1.copyWith(
257: //                         color: AppTheme.primaryColor,
258: //                       ),
259: //                     ),
260: //                     const SizedBox(height: 6),
261: //                     Row(
262: //                       mainAxisAlignment: MainAxisAlignment.center,
263: //                       children: [
264: //                         // CircleAvatar(
265: //                         //   backgroundColor: Colors.white,
266: //                         //   child: SvgPicture.asset(
267: //                         //     'assets/icons/success.svg',
268: //                         //   ),
269: //                         // ),
270: //                         // const SizedBox(width: 16),
271: //                         Expanded(
272: //                           child: Center(
273: //                             child: Text(
274: //                               "تم ارسال كلمة سر مؤقتة للبريد الألكتروني الخاص بك. يرجى مراجعة ذلك.",
275: //                               style: AppTheme.body1,
276: //                               textAlign: TextAlign.center,
277: //                             ),
278: //                           ),
279: //                         ),
280: //                       ],
281: //                     ),
282: //                     const SizedBox(height: 16),
283: //                     Row(
284: //                       children: [
285: //                         Expanded(
286: //                             child: AppButton(
287: //                               text: "حسناً",
288: //                               onPressed: () {
289: //                                 Get.back();
290: //                               },
291: //                             )),
292: //                       ],
293: //                     ),
294: //                   ],
295: //                 ),
296: //               ),
297: //             );
298: //           },
299: //         ),
300: //       );
301: //     },
302: //   );
303: // }
304: 
305: // void showLoginDialog(BuildContext context){
306: //   Navigator.of(context).push(new MaterialPageRoute<Null>(
307: //       builder: (BuildContext context) {
308: //         return LoginScreen();
309: //       },
310: //       fullscreenDialog: true,
311: //   ));
312: // }
313: }
````

## File: lib/core/utils/form_validator.dart
````dart
  1: class FormValidatorUtils {
  2: 
  3:   static String? textValidator(
  4:       String? value, {
  5:         bool isRequired = false,
  6:         int? minLength,
  7:         int? maxLength,
  8:       }) {
  9:     if (isRequired && (value == null || value.isEmpty)) {
 10:       return 'هذا الحقل مطلوب';
 11:     }
 12:     if (minLength != null && value != null && value.length < minLength) {
 13:       return 'يجب أن يكون الطول على الأقل $minLength';
 14:     }
 15:     if (maxLength != null && value != null && value.length > maxLength) {
 16:       return 'يجب أن لا يزيد الطول عن $maxLength';
 17:     }
 18:     return null;
 19:   }
 20: 
 21:   static String? numberValidator(
 22:       String? value, {
 23:         bool isRequired = false,
 24:       }) {
 25:     if (isRequired && (value == null || value.isEmpty)) {
 26:       return 'هذا الحقل مطلوب';
 27:     }
 28:     if (value != null && value.isNotEmpty && double.tryParse(value) == null) {
 29:       return 'الرجاء إدخال رقم صحيح';
 30:     }
 31:     return null;
 32:   }
 33: 
 34:   /// Validator (Select / Radio)
 35:   static String? optionValidator(
 36:       dynamic value, {
 37:         bool isRequired = false,
 38:       }) {
 39:     if (isRequired && (value == null || (value is String && value.isEmpty))) {
 40:       return 'الرجاء اختيار قيمة';
 41:     }
 42:     return null;
 43:   }
 44: 
 45:   /// Validator للـ Checkbox
 46:   static String? checkboxValidator(
 47:       List<String>? values, {
 48:         bool isRequired = false,
 49:       }) {
 50:     if (isRequired && (values == null || values.isEmpty)) {
 51:       return 'الرجاء اختيار خيار واحد على الأقل';
 52:     }
 53:     return null;
 54:   }
 55: 
 56:   static String? dateValidator(
 57:       String? value, {
 58:         bool isRequired = false,
 59:       }) {
 60:     if (isRequired && (value == null || value.isEmpty)) {
 61:       return 'الرجاء اختيار تاريخ';
 62:     }
 63:     return null;
 64:   }
 65: 
 66:   /// Validator file
 67:   static String? fileValidator(
 68:       String? path, {
 69:         bool isRequired = false,
 70:       }) {
 71:     if (isRequired && (path == null || path.isEmpty)) {
 72:       return 'الرجاء رفع ملف';
 73:     }
 74:     return null;
 75:   }
 76: 
 77:   static String? objectValidator(Object? value) {
 78:     if(value == null){
 79:       return 'الحقل فارغ';
 80:     }
 81:     return null;
 82:   }
 83:  //---------------- custom validators -----------------
 84:   static String? emailValidator(
 85:       String? value, {
 86:         bool isRequired = false,
 87:       }) {
 88:     if (isRequired && (value == null || value.isEmpty)) {
 89:       return 'الرجاء إدخال البريد الإلكتروني';
 90:     }
 91:     if (value != null && value.isNotEmpty) {
 92:       final emailRegex = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w{2,4}$');
 93:       if (!emailRegex.hasMatch(value)) {
 94:         return 'صيغة البريد الإلكتروني غير صحيحة';
 95:       }
 96:     }
 97:     return null;
 98:   }
 99: 
100:   static String? phoneValidator(
101:       String? value, {
102:         bool isRequired = false,
103:       }) {
104:     if (isRequired && (value == null || value.isEmpty)) {
105:       return 'الرجاء إدخال رقم الهاتف';
106:     }
107: 
108:     if (value != null && value.isNotEmpty) {
109:       // يقبل رقم يبدأ بـ 05 ويليه 8 أرقام (يعني المجموع 10)
110:       final phoneRegex = RegExp(r'^05\d{8}$');
111: 
112:       if (!phoneRegex.hasMatch(value)) {
113:         return 'رقم الهاتف يجب أن يتكون من 10 أرقام ويبدأ بـ 05';
114:       }
115:     }
116: 
117:     return null;
118:   }
119: 
120:   static String? passwordValidator(
121:       String? value, {
122:         bool isRequired = false,
123:         int minLength = 6,
124:       }) {
125:     if (isRequired && (value == null || value.isEmpty)) {
126:       return 'الرجاء إدخال كلمة المرور';
127:     }
128:     if (value != null && value.isNotEmpty && value.length < minLength) {
129:       return 'كلمة المرور يجب أن تكون على الأقل $minLength أحرف';
130:     }
131:     return null;
132:   }
133: }
134: 
135: /*
136: TextFormField(
137:   decoration: InputDecoration(labelText: "البريد الإلكتروني"),
138:   validator: (value) => FormValidator.emailValidator(
139:     value,
140:     isRequired: true,
141:   ),
142: );
143: */
````

## File: lib/core/utils/image_picker_bottom_sheet_utils.dart
````dart
  1: import 'dart:io';
  2: 
  3: import 'package:flutter/material.dart';
  4: import 'package:image_picker/image_picker.dart';
  5: 
  6: class ImagePickerBottomSheet {
  7:   static Future<void> show(BuildContext context, Function(File?) onPicked) async {
  8:     showModalBottomSheet(
  9:       context: context,
 10:       isScrollControlled: true,
 11:       backgroundColor: Colors.transparent,
 12:       shape: const RoundedRectangleBorder(
 13:         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
 14:       ),
 15:       builder: (context) {
 16:         return Padding(
 17:           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
 18:           child: Material(
 19:             color: Colors.white,
 20:             borderRadius: const BorderRadius.all(Radius.circular(10)),
 21:             child: Column(
 22:               mainAxisSize: MainAxisSize.min,
 23:               children: [
 24:                 const SizedBox(height: 16),
 25:                 Container(
 26:                   width: 40,
 27:                   height: 4,
 28:                   decoration: BoxDecoration(
 29:                     color: Colors.grey[400],
 30:                     borderRadius: BorderRadius.circular(2),
 31:                   ),
 32:                 ),
 33:                 const SizedBox(height: 16),
 34:                 const Text(
 35:                   "اختر صورة",
 36:                   style: TextStyle(
 37:                     fontSize: 18,
 38:                     fontWeight: FontWeight.w600,
 39:                   ),
 40:                 ),
 41:                 const SizedBox(height: 20),
 42:                 Row(
 43:                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 44:                   children: [
 45:                     _buildOption(
 46:                       context,
 47:                       icon: Icons.camera_alt,
 48:                       label: "الكاميرا",
 49:                       color: Colors.blue,
 50:                       onTap: () async {
 51:                         final picked = await ImagePicker().pickImage(source: ImageSource.camera, imageQuality: 70);
 52:                         if(picked != null){
 53:                           Navigator.pop(context);
 54:                           onPicked(File(picked.path.toString() ??''));
 55:                         }
 56: 
 57:                       },
 58:                     ),
 59:                     _buildOption(
 60:                       context,
 61:                       icon: Icons.photo_library,
 62:                       label: "المعرض",
 63:                       color: Colors.green,
 64:                       onTap: () async {
 65:                         final picked = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 70);
 66:                         if(picked != null){
 67:                           Navigator.pop(context);
 68:                           onPicked(File(picked.path.toString() ??''));
 69:                         }
 70:                       },
 71:                     ),
 72:                   ],
 73:                 ),
 74:                 const SizedBox(height: 16),
 75:               ],
 76:             ),
 77:           ),
 78:         );
 79:       },
 80:     );
 81:   }
 82: 
 83:   static Widget _buildOption(BuildContext context,
 84:       {required IconData icon,
 85:         required String label,
 86:         required Color color,
 87:         required VoidCallback onTap}) {
 88:     return GestureDetector(
 89:       onTap: onTap,
 90:       child: Column(
 91:         mainAxisSize: MainAxisSize.min,
 92:         children: [
 93:           CircleAvatar(
 94:             radius: 30,
 95:             backgroundColor: color.withOpacity(0.1),
 96:             child: Icon(icon, color: color, size: 28),
 97:           ),
 98:           const SizedBox(height: 8),
 99:           Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
100:         ],
101:       ),
102:     );
103:   }
104: }
````

## File: lib/core/utils/launcher_url_utils.dart
````dart
  1: import 'dart:io';
  2: 
  3: import 'package:flutter/material.dart';
  4: import 'package:url_launcher/url_launcher.dart';
  5: 
  6: import '../helpers/toast_helper.dart';
  7: 
  8: class LauncherUrlUtils {
  9: 
 10:   // static Future<void> rateApp(BuildContext context) async {
 11:   //   var url = Platform.isAndroid ? Uri.parse('https://play.google.com/store/apps/details?id=${await Utils.getPackageNameApp()}') : Uri.parse('https://apps.apple.com/app/id\$${await Utils.getPackageNameApp()}?action=write-review');
 12:   //   if (await canLaunchUrl(url)) {
 13:   //     await launchUrl(url);
 14:   //   } else {
 15:   //     ToastHelper.showError('Could not launch $url');
 16:   //   }
 17:   // }
 18: 
 19:   static Future<void> makePhoneCall(String phoneNumber) async {
 20:     final Uri launchUri = Uri(
 21:       scheme: 'tel',
 22:       path: phoneNumber,
 23:     );
 24:     await launchUrl(launchUri);
 25:   }
 26:   //
 27:   // static Future<void> sendingMails(BuildContext context,String? mail) async {
 28:   //   if(ValidationUtils.isNullOrEmpty(mail))
 29:   //     return;
 30:   //
 31:   //   var url = Uri.parse("mailto:${mail}");
 32:   //   if (await canLaunchUrl(url)) {
 33:   //     await launchUrl(url);
 34:   //   } else {
 35:   //     showSnackBar(context: context, message: 'Could not launch $url');
 36:   //   }
 37:   // }
 38: 
 39:   /// A utility method to open SMS Messenger on different devices
 40:   /// Optionality you can add [text] message
 41:   // static Future<void> openSMS(BuildContext context, { String? phone,String text ='', LaunchMode mode = LaunchMode.externalApplication,}) async {
 42:   //   if(ValidationUtils.isNullOrEmpty(phone))
 43:   //     return;
 44:   //
 45:   //   final String effectivePhone = Platform.isAndroid
 46:   //       ? phone!.replaceAll('-', ' ')
 47:   //       : phone!.replaceFirst('+', '');
 48:   //
 49:   //   final String effectiveText =
 50:   //   Platform.isAndroid ? '?body=$text' : '&body=$text';
 51:   //
 52:   //   final String url = 'sms:$effectivePhone';
 53:   //
 54:   //   if (await canLaunchUrl(Uri.parse(url))) {
 55:   //     await launchUrl(Uri.parse('$url$effectiveText'), mode: mode);
 56:   //   } else {
 57:   //     showSnackBar(context: context, message: 'We did not find the «SMS Messenger» application on your phone, please install it and try again»');
 58:   //   }
 59:   // }
 60: 
 61:   /// A utility method to open WhatsApp on different devices
 62:   /// Optionality you can add [text] message
 63:   // static Future<void> openWhatsApp(BuildContext context,{String? phone, String? text, LaunchMode mode = LaunchMode.externalApplication,}) async {
 64:   //   if(ValidationUtils.isNullOrEmpty(phone))
 65:   //     return;
 66:   //
 67:   //   final String textIOS = text != null ? Uri.encodeFull('?text=$text') : '';
 68:   //   final String textAndroid = text != null ? Uri.encodeFull('&text=$text') : '';
 69:   //
 70:   //   final String urlIOS = 'https://wa.me/$phone$textIOS';
 71:   //   final String urlAndroid = 'whatsapp://send/?phone=$phone$textAndroid';
 72:   //
 73:   //   final String effectiveURL = Platform.isIOS ? urlIOS : urlAndroid;
 74:   //
 75:   //   if (await canLaunchUrl(Uri.parse(effectiveURL))) {
 76:   //     await launchUrl(Uri.parse(effectiveURL), mode: mode);
 77:   //   } else {
 78:   //     showSnackBar(context: context, message: 'We did not find the «WhatsApp» application on your phone, please install it and try again');
 79:   //   }
 80:   // }
 81: 
 82:   /// A utility method to open WhatsApp on different devices
 83:   /// Optionality you can add [text] message
 84:   // static Future<void> openTelegram(BuildContext context,{ String? phone, String text = '', LaunchMode mode = LaunchMode.externalApplication,}) async {
 85:   //   if(ValidationUtils.isNullOrEmpty(phone))
 86:   //     return;
 87:   //
 88:   //   const String url = 'tg://msg';
 89:   //   final String? effectiveText = text != null && text.isNotEmpty
 90:   //       ? '&text=${Uri.encodeFull(text)}'
 91:   //       : null;
 92:   //
 93:   //   if (await canLaunchUrl(Uri.parse(url))) {
 94:   //     await launchUrl(
 95:   //       Uri.parse('$url?to=+$phone$effectiveText'),
 96:   //       mode: mode,
 97:   //     );
 98:   //   } else {
 99:   //     showSnackBar(context: context, message: 'We did not find the «Telegram» application on your phone, please install it and try again');
100:   //   }
101:   // }
102: }
````

## File: lib/core/utils/permissions_utils.dart
````dart
 1: import 'package:flutter/material.dart';
 2: import 'package:permission_handler/permission_handler.dart';
 3: 
 4: class PermissionsUtils{
 5:   static Future<bool> checkCameraAndGalleryPermission(BuildContext context) async {
 6:     return true;
 7:     FocusScope.of(context).requestFocus(FocusNode());
 8:     Map<Permission, PermissionStatus> statues = await [
 9:       Permission.camera,
10:       Permission.photos,
11:     ].request();
12:     PermissionStatus? statusCamera = statues[Permission.camera];
13:     PermissionStatus? statusStorage = statues[Permission.photos];
14:     bool isGranted = statusCamera == PermissionStatus.granted &&
15:         statusStorage == PermissionStatus.granted ;
16:     if (isGranted) {
17:       return true;
18:     }
19:     bool isPermanentlyDenied =
20:         statusCamera == PermissionStatus.permanentlyDenied ||
21:             statusStorage == PermissionStatus.permanentlyDenied ;
22:     if (isPermanentlyDenied) {
23:       openAppSettings();
24:       return false;
25:     }
26: 
27:     return false;
28:   }
29: }
````

## File: lib/core/utils/size_config.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: class SizeConfig {
 4:   static late MediaQueryData _mediaQuery;
 5:   static late double _screenWidth;
 6:   static late double _screenHeight;
 7:   static late double safeAreaTop;
 8:   static late double safeAreaBottom;
 9:   static late double blockSizeHorizontal;
10:   static late double blockSizeVertical;
11: 
12:   // Initialize once at app startup or once in every page
13:   static void init(BuildContext context) {
14:     _mediaQuery = MediaQuery.of(context);
15:     _screenWidth = _mediaQuery.size.width;
16:     _screenHeight = _mediaQuery.size.height;
17:     safeAreaTop = _mediaQuery.padding.top;
18:     safeAreaBottom = _mediaQuery.padding.bottom;
19: 
20:     // For responsive grid layout (optional)
21:     blockSizeHorizontal = _screenWidth / 100;
22:     blockSizeVertical = (_screenHeight - safeAreaTop - safeAreaBottom) / 100;
23:   }
24: 
25:   // Screen dimensions
26:   static double get width => _screenWidth;
27:   static double get height => _screenHeight;
28: 
29:   // Safe area dimensions
30:   static double get heightSafeArea => _screenHeight - safeAreaTop - safeAreaBottom;
31:   static double get safeAreaTopPadding => safeAreaTop;
32:   static double get safeAreaBottomPadding => safeAreaBottom;
33: 
34:   // Responsive size helpers
35:   static double widthResponsive(double percentage) => _screenWidth * percentage;
36:   static double heightResponsive(double percentage) => _screenHeight * percentage;
37: 
38:   // Text size scaling (optional)
39:   static double textScaleFactor(BuildContext context) =>
40:       MediaQuery.of(context).textScaleFactor;
41: 
42:   // App bar utilities
43:   static double appBarHeight(AppBar appBar) => appBar.preferredSize.height;
44: 
45:   // Screen height without app bar
46:   static double heightWithoutAppBar(AppBar appBar) =>
47:       _screenHeight - appBarHeight(appBar);
48: }
49: /*
50:  Ex:
51:  Scaffold(
52:   appBar: AppBar(),
53:   body: Container(
54:     height: SizeConfig.heightWithoutAppBar(context, appBar),
55:     child: // ...
56:   )
57: )
58: ---------------
59: // Instead of fixed sizes
60: Container(
61:   width: SizeConfig.widthResponsive(0.9),
62:   margin: EdgeInsets.symmetric(
63:     vertical: SizeConfig.blockSizeVertical * 2,
64:   ),
65: )
66: ---------------
67: Container(
68:   width: 10 * SizeConfig.blockSizeHorizontal, // 10% من العرض
69:   height: 15 * SizeConfig.blockSizeVertical,   // 15% من الارتفاع المتاح
70: )
71: ---------------
72: Text(
73:   'Responsive Text',
74:   style: TextStyle(
75:     fontSize: 16 * SizeConfig.textScaleFactor(context),
76:   ),
77: )
78: 
79: */
````

## File: lib/core/utils/utils.dart
````dart
 1: import 'dart:io';
 2: 
 3: import 'package:device_info_plus/device_info_plus.dart';
 4: import 'package:flutter/cupertino.dart';
 5: import 'package:flutter/services.dart';
 6: import 'package:image_picker/image_picker.dart';
 7: import 'package:intl/intl.dart';
 8: 
 9: import 'deviceInfoUtilse.dart';
10: 
11: 
12: class Utils{
13: 
14:   static Future<File?> pickImage(ImageSource source,{double maxWidth = 800, double maxHeight = 600}) async {
15:     final XFile? _photo = await ImagePicker().pickImage(source: source , imageQuality: 80,maxWidth: 800 ,maxHeight: 600,);
16:     if(_photo != null){
17:       return File(_photo.path.toString() ??'');
18:     }
19:     return null;
20:   }
21: 
22:   static Future<String?> getImagePath(ImageSource source,{double maxWidth = 800, double maxHeight = 600}) async {
23:     final XFile? _photo = await ImagePicker().pickImage(
24:       source: ImageSource.gallery,
25:       imageQuality: 80,
26:       maxWidth: 800,
27:       maxHeight: 600,
28:     );
29:     return _photo?.path ?? '';
30:   }
31: 
32:   static String currencyAmount(dynamic num,BuildContext context) {
33:     // return '${numberFormatting(num ?? 0)} ${context.loc.trans('currency_label')}';
34:     return '';
35:   }
36: 
37:   static String numberFormatting(dynamic num){
38:     NumberFormat numberFormat = NumberFormat.decimalPattern('en_US');
39:     return numberFormat.format(num);
40:   }
41: 
42:   static void shareText(BuildContext context ,String text, String url,{bool isListing = true}){
43:     // String data = '';
44:     // if(isListing){
45:     //   data = myLocalizations(context, 'view_this_ads') +' '+ myLocalizations(context, 'appName') +'.\n${text}\n';
46:     // }else{
47:     //   data = myLocalizations(context, 'visit')+' '+'${text}'+' '+ myLocalizations(context, 'in')  +' '+ myLocalizations(context, 'appName') +'.\n';
48:     // }
49:     //
50:     // Share.share(data + '${ApiPath.BASE_HOST}${url}');
51:   }
52: 
53:   // This function is triggered when the copy icon is pressed
54:   static Future<void> copyToClipboard(BuildContext context, String value) async {
55:     await Clipboard.setData(ClipboardData(text: value));
56:     //showSnackBar(context: context, message: 'تم نسخ رقم الحساب');
57:   }
58: 
59:   static Future<String> getPackageNameApp() async {
60:     // final _packageInfo = await PackageInfo.fromPlatform();
61:     // return _packageInfo.packageName;
62:     return '';
63:   }
64: 
65:   static Future<String> getAppVersion() async {
66:     // final _packageInfo = await PackageInfo.fromPlatform();
67:     // return _packageInfo.version;
68:     return '';
69:   }
70: 
71:   static Future<void> shareAppLink (BuildContext context) async {
72:     // String data = '${'أنا أستخدم'} ${myLocalizations(context, 'appName')}'+'.\n';
73:     // final String urlAndroid = 'https://play.google.com/store/apps/details?id=${await getPackageNameApp()}';
74:     // final String urlIOS = 'https://apps.apple.com/app/id\$${await getPackageNameApp()}';
75:     // final String appUrl = Platform.isAndroid ? urlAndroid : urlIOS;
76:     // Share.share(data + appUrl);
77:   }
78: 
79:   static Future<String> getApiKey() async {
80:     String _strKey ='Unknown';
81:     if(Platform.isAndroid){
82:       AndroidDeviceInfo info = await DeviceInfoUtils.androidDeviceInfo();
83:       _strKey = info.brand+'#'+info.device+'#v'+info.version.release;
84:     }else if(Platform.isIOS){
85:       IosDeviceInfo info = await DeviceInfoUtils.iosDeviceInfo();
86:       _strKey = info.model+'#'+info.systemName+'#v'+info.systemVersion;
87:     }
88:     return _strKey.trim();
89:   }
90: 
91: }
````

## File: lib/features/shared/account/screens/account_screen.dart
````dart
  1: import 'package:flutter/material.dart';
  2: import 'package:provider/provider.dart';
  3: 
  4: import '../../../../core/providers/auth_provider.dart';
  5: import '../../../../core/utils/constants/colors_constants.dart';
  6: import '../../../../core/utils/dialogUtils.dart';
  7: import '../../../../core/utils/size_config.dart';
  8: import '../../../../core/utils/utils.dart';
  9: import '../../../../widgets/components.dart';
 10: import '../../../../widgets/item_settings_comp.dart';
 11: import '../../../../widgets/my_account/info_account_card_widget.dart';
 12: import '../../auth/login_screen.dart';
 13: 
 14: class AccountScreen extends StatefulWidget {
 15:   const AccountScreen({super.key});
 16: 
 17:   @override
 18:   State<AccountScreen> createState() => _AccountScreenState();
 19: }
 20: 
 21: class _AccountScreenState extends State<AccountScreen> {
 22: 
 23: 
 24:   @override
 25:   Widget build(BuildContext context) {
 26:     final _authProvider = context.read<AuthProvider>();
 27:     return  ListView(
 28:       shrinkWrap: true,
 29:       padding: const EdgeInsets.symmetric(horizontal: 12),
 30:       children: [
 31:         const SizedBox(height: 15,),
 32:         InfoAccountCardWidget(width: SizeConfig.width,height:SizeConfig.height,),
 33:         const SizedBox(height: 5,),
 34:         // InfoListingsCardWidget(width: _myWidth, height: _myHeight,),
 35:         // const SizedBox(height: 5,),
 36:         // InfoWalletCardWidget(width: _myWidth,),
 37:         const SizedBox(height: 20,),
 38: 
 39:          if(!_authProvider.isLoggedIn)
 40:           ItemSettingsComponent(
 41:             marginTop: 10,
 42:             width: SizeConfig.width,
 43:             label:  'تسجيل الدخول',
 44:             icon: Icon(Icons.login, color: AppColor.primaryColor,),
 45:             onTap: (){
 46:               navigationPush(context, LoginScreen());
 47:             },
 48:           ),
 49: 
 50:         // ItemSettingsComponent(
 51:         //     marginTop: 10,
 52:         //     width: _myWidth,
 53:         //     label: 'تغيير اللغة',
 54:         //     subtitle: 'العربية',
 55:         //     icon: const Icon(Icons.language, color: AppColor.primaryColor,),
 56:         //     onTap: (){
 57:         //
 58:         //     },
 59:         //   ),
 60:         ItemSettingsComponent(
 61:           marginTop: 10,
 62:           width: SizeConfig.width,
 63:           label: 'تواصل معنا',
 64:           icon: const Icon(Icons.add_ic_call, color: AppColor.primaryColor,),
 65:           onTap: () async {
 66:             // await Provider.of<GeneralProvider>(context,listen: false).getContactUsTypes();
 67:             // navigationPush(context, ContactUsScreen());
 68:           },
 69:         ),
 70:         // ItemSettingsComponent(
 71:         //     marginTop: 10,
 72:         //     width: _myWidth,
 73:         //     label: 'المساعدة',
 74:         //     icon: const Icon(Icons.help, color: AppColor.primaryColor,),
 75:         //     onTap: (){
 76:         //
 77:         //     },
 78:         //   ),
 79:         ItemSettingsComponent(
 80:           marginTop: 10,
 81:           width: SizeConfig.width,
 82:           label: 'سياسة الخصوصية',
 83:           icon: const Icon(Icons.privacy_tip, color: AppColor.primaryColor,),
 84:           onTap: () async {
 85:             // if(await Helper.checkInternetConnection()){
 86:             //   final _controller = WebViewController()
 87:             //     ..setJavaScriptMode(JavaScriptMode.unrestricted)
 88:             //     ..setNavigationDelegate(
 89:             //       NavigationDelegate(
 90:             //         onProgress: (int progress) {
 91:             //           // print the loading progress to the console
 92:             //           // you can use this value to show a progress bar if you want
 93:             //           debugPrint("Loading: $progress%");
 94:             //         },
 95:             //         onPageStarted: (String url) {},
 96:             //         onPageFinished: (String url) {},
 97:             //         onWebResourceError: (WebResourceError error) {},
 98:             //         onNavigationRequest: (NavigationRequest request) {
 99:             //           return NavigationDecision.navigate;
100:             //         },
101:             //       ),
102:             //     )
103:             //     ..loadRequest(Uri.parse(ApiPath.privacy_policy));
104:             //   navigationPush(context, WebViewScreen(title: 'عن التطبيق', controller: _controller,));
105:             // }else{
106:             //   DialogUtils().showNoInternetDialog(context);
107:             // }
108:           },
109:         ),
110:         // ItemSettingsComponent(
111:         //   marginTop: 10,
112:         //   width: _myWidth,
113:         //   label: 'إتفاقية الإستخدام',
114:         //   icon: const Icon(Icons.sticky_note_2_outlined, color: AppColor.primaryColor,),
115:         //   onTap: (){
116:         //
117:         //   },
118:         // ),
119:         ItemSettingsComponent(
120:           marginTop: 10,
121:           width: SizeConfig.width,
122:           label: 'عن التطبيق',
123:           icon: const Icon(Icons.info, color: AppColor.primaryColor,),
124:           onTap: () async {
125:             // if(await Helper.checkInternetConnection()){
126:             //   final _controller = WebViewController()
127:             //     ..setJavaScriptMode(JavaScriptMode.unrestricted)
128:             //     ..setNavigationDelegate(
129:             //       NavigationDelegate(
130:             //         onProgress: (int progress) {
131:             //           // print the loading progress to the console
132:             //           // you can use this value to show a progress bar if you want
133:             //           debugPrint("Loading: $progress%");
134:             //         },
135:             //         onPageStarted: (String url) {},
136:             //         onPageFinished: (String url) {},
137:             //         onWebResourceError: (WebResourceError error) {},
138:             //         onNavigationRequest: (NavigationRequest request) {
139:             //           return NavigationDecision.navigate;
140:             //         },
141:             //       ),
142:             //     )
143:             //     ..loadRequest(Uri.parse(ApiPath.about_us));
144:             //   navigationPush(context, WebViewScreen(title: 'عن التطبيق', controller: _controller,));
145:             // }else{
146:             //   DialogUtils().showNoInternetDialog(context);
147:             // }
148:           },
149:         ),
150:         ItemSettingsComponent(
151:           marginTop: 10,
152:           width: SizeConfig.width,
153:           label: 'شارك التطبيق',
154:           icon: const Icon(Icons.share, color: AppColor.primaryColor,),
155:           onTap: () async {
156:             await Utils.shareAppLink(context);
157:           },
158:         ),
159:         ItemSettingsComponent(
160:           marginTop: 10,
161:           width: SizeConfig.width,
162:           label: 'تقييم التطبيق',
163:           icon: const Icon(Icons.star_rate, color: AppColor.primaryColor,),
164:           onTap: () async {
165:             // await LauncherUrlUtils.rateApp(context);
166:           },
167:         ),
168:         // if(_authProvider.isLogIn)
169:         //   ItemSettingsComponent(
170:         //     marginTop: 10,
171:         //     width: _myWidth,
172:         //     label: 'إلغاء حسابي',
173:         //     icon: const Icon(Icons.no_accounts_outlined, color: AppColor.primaryColor,),
174:         //     onTap: (){
175:         //       navigationPush(context, DeleteMyAccountScreen());
176:         //     },
177:         //   ),
178:         if(_authProvider.isLoggedIn)
179:           ItemSettingsComponent(
180:             marginTop: 10,
181:             width: SizeConfig.width,
182:             label: 'تسجيل الخروج',
183:             icon: const Icon(Icons.logout, color: AppColor.primaryColor,),
184:             onTap: (){
185:               DialogUtils().showConfirmDialog(context, message: 'هل تريد تسجيل الخروج', confirm: () async => await _authProvider.logout(context));
186:             },
187:           ),
188:         const SizedBox(height: 20,),
189:       ],
190:     );
191:   }
192: 
193: 
194: }
````

## File: lib/features/shared/auth/login_screen.dart
````dart
  1: import 'package:car_mediator_mobile/core/styles/styles.dart';
  2: import 'package:car_mediator_mobile/core/utils/constants/extensions.dart';
  3: import 'package:car_mediator_mobile/core/utils/form_validator.dart';
  4: import 'package:car_mediator_mobile/widgets/components.dart';
  5: import 'package:flutter/material.dart';
  6: import 'package:provider/provider.dart';
  7: import '../../../core/helpers/helpers.dart';
  8: import '../../../core/helpers/toast_helper.dart';
  9: import '../../../core/providers/auth_provider.dart';
 10: import '../../../core/utils/connection_utils.dart';
 11: import '../../../core/utils/constants/assets_path.dart';
 12: import '../../../core/utils/constants/colors_constants.dart';
 13: import '../../../core/utils/size_config.dart';
 14: import '../../../widgets/custom_button.dart';
 15: import '../../vendor/register/screens/register_vendor_screen.dart';
 16: 
 17: class LoginScreen extends StatefulWidget {
 18:   const LoginScreen({
 19:     Key? key,
 20:   }) : super(key: key);
 21: 
 22:   @override
 23:   State<LoginScreen> createState() => _LoginScreenState();
 24: }
 25: 
 26: class _LoginScreenState extends State<LoginScreen> {
 27:   final _keyForm = GlobalKey<FormState>();
 28:   final phoneNumberController = TextEditingController();
 29: 
 30:   @override
 31:   void initState() {
 32:     // FlutterNativeSplash.remove();
 33:     super.initState();
 34:   }
 35: 
 36:   @override
 37:   void dispose() {
 38:     super.dispose();
 39:     phoneNumberController.dispose();
 40:   }
 41: 
 42:   @override
 43:   Widget build(BuildContext context) {
 44:     SizeConfig.init(context);
 45:     final _authProvider = Provider.of<AuthProvider>(context);
 46: 
 47:     return Scaffold(
 48:       backgroundColor: AppColor.whiteColor,
 49:       body: SingleChildScrollView(
 50:         child: Form(
 51:           key: _keyForm,
 52:           child: Stack(
 53:             children: [
 54:               Image.asset('assets/images/background-top.png',
 55:                   color: AppColor.primaryColor),
 56:               Positioned(
 57:                 child: Image.asset('assets/images/background-bottom.png',
 58:                     color: AppColor.primaryColor),
 59:               ),
 60:               Column(
 61:                 children: [
 62:                   Align(
 63:                     alignment: Alignment.centerRight,
 64:                     child: IconButton(
 65:                         padding:  EdgeInsets.only(
 66:                           top: SizeConfig.heightResponsive(0.05),
 67:                           right: 20,
 68:                         ),
 69:                         onPressed: () {
 70:                           Navigator.of(context).pop();
 71:                         },
 72:                         icon: const Icon(
 73:                           Icons.arrow_back,
 74:                           color: AppColor.primaryColor,
 75:                         )),
 76:                   ),
 77:                   const SizedBox(
 78:                     height: 30,
 79:                   ),
 80:                   Text(context.loc.welcomeToApp, style: txtBold04),
 81:                   SizedBox(
 82:                     height: SizeConfig.heightResponsive(0.06),
 83:                   ),
 84:                   Image.asset(AssetsPath.logo,
 85:                       height: SizeConfig.heightResponsive(0.20),
 86:                       width: SizeConfig.heightResponsive(0.20),
 87:                       fit: BoxFit.fill),
 88:                   SizedBox(
 89:                     height: SizeConfig.heightResponsive(0.06),
 90:                   ),
 91:                   Text('رقم الجوال',
 92:                       style: TextStyle(
 93:                         color: AppColor.primaryColor,
 94:                         fontSize: SizeConfig.widthResponsive(0.04),
 95:                         fontWeight: FontWeight.w600,
 96:                       )),
 97:                   const SizedBox(
 98:                     height: 5,
 99:                   ),
100:                   Text("سيتم إرسال كود التفعيل عبر رسالة نصية",
101:                       style: TextStyle(
102:                         color: AppColor.textColor,
103:                         fontSize: SizeConfig.widthResponsive(0.04),
104:                         fontWeight: FontWeight.w500,
105:                       )),
106:                   const SizedBox(
107:                     height: 20,
108:                   ),
109:                   Directionality(
110:                     textDirection: TextDirection.ltr,
111:                     child: Container(
112:                       margin: const EdgeInsets.symmetric(
113:                         horizontal: 50,
114:                       ),
115:                       padding: const EdgeInsets.symmetric(
116:                         horizontal: 10,
117:                         vertical: 3,
118:                       ),
119:                       decoration: BoxDecoration(
120:                         border: Border.all(
121:                           width: 1,
122:                           color: AppColor.primaryColor,
123:                         ),
124:                         borderRadius: BorderRadius.circular(12),
125:                       ),
126:                       child: Row(
127:                         children: [
128:                           Text(
129:                             '+966',
130:                             textDirection: TextDirection.ltr,
131:                             style: TextStyle(
132:                               color: AppColor.blackColor,
133:                               fontSize: SizeConfig.widthResponsive(0.04),
134:                               fontWeight: FontWeight.w600,
135:                             ),
136:                           ),
137:                           const SizedBox(
138:                             width: 3,
139:                           ),
140:                           Image.asset(
141:                             AssetsPath.saudia_flag,
142:                           ),
143:                           const SizedBox(
144:                             width: 10,
145:                           ),
146:                           Container(
147:                             width: 0.5,
148:                             height: SizeConfig.heightResponsive(0.05),
149:                             color: AppColor.primaryColor,
150:                           ),
151:                           const SizedBox(
152:                             width: 10,
153:                           ),
154:                           Expanded(
155:                               child: TextFormField(
156:                             controller: phoneNumberController,
157:                             validator: (value) =>
158:                                 FormValidatorUtils.phoneValidator(value, isRequired: true),
159:                             textAlign: TextAlign.left,
160:                             keyboardType: TextInputType.phone,
161:                             style: TextStyle(
162:                               fontSize: SizeConfig.widthResponsive(0.05),
163:                               fontWeight: FontWeight.w600,
164:                             ),
165:                                 onChanged: (value){
166:                                   if(value.toString().trim().length == 10){
167:                                     Helper.dismissKeyBoard();
168:                                   }
169:                                 },
170:                             decoration: const InputDecoration(
171:                               contentPadding: EdgeInsets.all(5),
172:                               counterText: '',
173:                               hintText: 'Ex: 05xxxxxxxx',
174:                               hintStyle: TextStyle(
175:                                   fontSize: 15, color: AppColor.greyShade3),
176:                               enabledBorder: OutlineInputBorder(
177:                                 borderSide:
178:                                     BorderSide(color: Colors.transparent),
179:                               ),
180:                               focusedBorder: OutlineInputBorder(
181:                                 borderSide:
182:                                     BorderSide(color: Colors.transparent),
183:                               ),
184:                             ),
185:                           )),
186:                         ],
187:                       ),
188:                     ),
189:                   ),
190:                   Padding(
191:                     padding: const EdgeInsets.symmetric(
192:                       horizontal: 50,
193:                       vertical: 16,
194:                     ),
195:                     child: CustomButton(
196:                       primaryColor:AppColor.primaryColor,
197:                       txtSize: SizeConfig.widthResponsive(0.05),
198:                       loading: _authProvider.isLoading,
199:                       onTap: () async {
200:                          await _execute(context, _authProvider);
201:                       },
202:                       label: 'إرسال',
203:                     ),
204:                   ),
205: 
206:                   SizedBox(height: SizeConfig.heightResponsive(0.10),),
207:                   TextButton(onPressed: () async {
208:                     navigationPush(context, const RegisterVendorScreen());
209:                   },
210:                     style: TextButton.styleFrom(
211:                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
212:                       backgroundColor: AppColor.primaryColor.withOpacity(0.05),
213:                       side: const BorderSide(
214:                         color: AppColor.primaryColor,
215:                         width: 0.5,
216:                       ),
217:                       shape: RoundedRectangleBorder(
218:                         borderRadius: BorderRadius.circular(10),
219:                       ),
220:                     ),
221:                     child: Text('طلب الإنظمام كشركة',
222:                       style: TextStyle(color:AppColor.primaryColor ,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600,),),),
223:                 ],
224:               )
225:             ],
226:           ),
227:         ),
228:       ),
229:     );
230:   }
231:   Future<void> _execute(BuildContext context, AuthProvider myProvider) async {
232:     Helper.dismissKeyBoard();
233:     bool myValid = _keyForm.currentState!.validate();
234:     if (myValid) {
235:       if (!await ConnectionUtils.hasInternetConnection()) {
236:         ToastHelper.showError(context.loc.noInternetConnection);
237:         return;
238:       }
239: 
240:       await myProvider.register(context, body: {
241:         'phoneNumber': phoneNumberController.text.toString().trim(),
242:       });
243:     }
244:   }
245: }
````

## File: lib/features/shared/auth/opt_screen.dart
````dart
  1: import 'package:car_mediator_mobile/core/utils/constants/extensions.dart';
  2: import 'package:flutter/material.dart';
  3: import 'package:provider/provider.dart';
  4: 
  5: import '../../../core/data_sources/remote/firebase/fcm_service.dart';
  6: import '../../../core/helpers/helpers.dart';
  7: import '../../../core/helpers/toast_helper.dart';
  8: import '../../../core/providers/auth_provider.dart';
  9: import '../../../core/utils/connection_utils.dart';
 10: import '../../../core/utils/constants/assets_path.dart';
 11: import '../../../core/utils/constants/colors_constants.dart';
 12: import '../../../core/utils/form_validator.dart';
 13: import '../../../core/utils/size_config.dart';
 14: import '../../../core/utils/utils.dart';
 15: import '../../../widgets/custom_button.dart';
 16: 
 17: class OptScreen extends StatefulWidget {
 18:   const OptScreen({Key? key, required this.phoneNumber}) : super(key: key);
 19:   final String phoneNumber;
 20: 
 21:   @override
 22:   State<OptScreen> createState() => _OptScreenState();
 23: }
 24: 
 25: class _OptScreenState extends State<OptScreen> {
 26: 
 27:   final _keyForm = GlobalKey<FormState>();
 28:   final codeController = TextEditingController();
 29: 
 30:   @override
 31:   void dispose() {
 32:     super.dispose();
 33:     codeController.dispose();
 34:   }
 35: 
 36:   @override
 37:   Widget build(BuildContext context) {
 38:     final _authProvider = Provider.of<AuthProvider>(context);
 39:     return Scaffold(
 40:       backgroundColor: AppColor.whiteColor,
 41:       body: SingleChildScrollView(
 42:         child: Form(
 43:           key: _keyForm,
 44:           child: Stack(
 45:             children: [
 46:               Image.asset('assets/images/background-top.png',color: AppColor.primaryColor),
 47:               Positioned(child: Image.asset('assets/images/background-bottom.png',color: AppColor.primaryColor),),
 48:               Column(
 49:                 children: [
 50:                   Align(
 51:                     alignment: Alignment.centerRight,
 52:                     child: IconButton(
 53:                         padding: EdgeInsets.only(top: SizeConfig.heightResponsive(0.05),right: 20,),
 54:                         onPressed: (){
 55:                           Navigator.of(context).pop();
 56:                         },icon: const Icon(Icons.arrow_back ,color: AppColor.primaryColor,)),
 57:                   ),
 58: 
 59:                   SizedBox(height: SizeConfig.heightResponsive(0.10),),
 60:                   Image.asset(AssetsPath.logo,height: SizeConfig.heightResponsive(0.20), width: SizeConfig.heightResponsive(0.20),fit: BoxFit.fill),
 61:                   SizedBox(height: SizeConfig.heightResponsive(0.05),),
 62:                   Text(context.loc.appName,style: TextStyle(color:AppColor.primaryColor ,fontSize:SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600,)),
 63:                   const SizedBox(height: 20,),
 64:                   Directionality(textDirection: TextDirection.ltr,
 65:                     child: Padding(
 66:                       padding : const EdgeInsets.symmetric(horizontal: 50,),
 67:                       child: TextFormField(
 68:                         controller: codeController,
 69:                         validator: (value) => FormValidatorUtils.numberValidator(value, isRequired: true),
 70:                         maxLength: 5,
 71:                         textAlign: TextAlign.center,
 72:                         keyboardType: TextInputType.phone,
 73:                         style: TextStyle(
 74:                           fontSize: SizeConfig.widthResponsive(0.05),
 75:                           fontWeight: FontWeight.w600,
 76:                         ),
 77:                         onChanged: (value){
 78:                           if(value.toString().trim().length == 5){
 79:                             Helper.dismissKeyBoard();
 80:                           }
 81:                         },
 82:                         decoration: InputDecoration(
 83:                           contentPadding: const EdgeInsets.all(10),
 84:                           counterText: '',
 85:                           hintText: '- - - - -',
 86:                           hintStyle: TextStyle(fontSize: SizeConfig.widthResponsive(0.05),fontWeight: FontWeight.bold,color: AppColor.greyShade3),
 87:                           enabledBorder: OutlineInputBorder(
 88:                               borderSide: const BorderSide(color: AppColor.primaryColor),
 89:                               borderRadius: BorderRadius.circular(12)),
 90:                           focusedBorder: OutlineInputBorder(
 91:                               borderSide: const BorderSide(color:AppColor.primaryColor),
 92:                               borderRadius: BorderRadius.circular(12)),
 93:                         ),
 94:                       ),
 95:                     ),),
 96: 
 97:                   Padding(padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 16,),
 98:                     child: CustomButton(
 99:                       txtSize: SizeConfig.widthResponsive(0.05),
100:                       loading: _authProvider.isLoading,
101:                       onTap: ()  async {
102:                         await _execute(context, _authProvider);
103:                       },
104:                       label: "تحقق"
105:                     ),
106:                   ),
107:                   Text("ألم يصلك الرمز ؟"),
108:                   const SizedBox(height: 10,),
109:                   SizedBox(
110:                     width: SizeConfig.widthResponsive(0.40) ,
111:                     child: TextButton(onPressed: () async {
112:                       await _resend(context, _authProvider);
113:                     },
114:                       child: Text("إعادة الإرسال",style: TextStyle(color:AppColor.primaryColor, decoration: TextDecoration.underline ,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w500,),),),
115:                   ),
116:                 ],
117:               )
118:             ],
119:           ),
120:         ),
121:       ),
122:     );
123:   }
124: 
125:   Future _execute(BuildContext context, AuthProvider myProvider) async {
126:     Helper.dismissKeyBoard();
127:     bool myValid = _keyForm.currentState!.validate();
128:     if (myValid) {
129:       if (!await ConnectionUtils.hasInternetConnection()) {
130:         ToastHelper.showError(context.loc.noInternetConnection);
131:         return;
132:       }
133: 
134:       await myProvider.loginWithOtp(context, body: {
135:         'otp': int.parse(codeController.text.toString().trim()).toString(),
136:         'phoneNumber': widget.phoneNumber,
137:         'fcmToken': await FcmService.getDeviceTokenFCM() ?? '',
138:         'apiKey': await Utils.getApiKey(),
139:       });
140:     }
141:   }
142: 
143:   Future<void> _resend(BuildContext context, AuthProvider myProvider) async {
144:     Helper.dismissKeyBoard();
145: 
146:       if (!await ConnectionUtils.hasInternetConnection()) {
147:         ToastHelper.showError(context.loc.noInternetConnection);
148:         return;
149:       }
150: 
151:       await myProvider.register(context, body: {
152:         'phoneNumber': widget.phoneNumber,
153:       });
154:   }
155: 
156: }
````

## File: lib/features/shared/cache/init_cache.dart
````dart
 1: import 'package:car_mediator_mobile/core/utils/constants/extensions.dart';
 2: import 'package:flutter/material.dart';
 3: import 'package:provider/provider.dart';
 4: import '../../../core/providers/cache_provider.dart';
 5: import '../../../core/utils/constants/assets_path.dart';
 6: import '../../../core/utils/constants/colors_constants.dart';
 7: import '../../../core/utils/size_config.dart';
 8: 
 9: class InitCache extends StatefulWidget {
10:   const InitCache({super.key, required this.userRole});
11:   final String? userRole;
12:   @override
13:   State<InitCache> createState() => _InitCacheState();
14: }
15: 
16: class _InitCacheState extends State<InitCache> {
17: 
18:   @override
19:   void initState() {
20:     // FlutterNativeSplash.remove();
21:     super.initState();
22: 
23:     WidgetsBinding.instance.addPostFrameCallback((_) async {
24:        Provider.of<CacheProvider>(context, listen: false).refreshCache(userRole: widget.userRole);
25:     });
26:   }
27: 
28:   @override
29:   Widget build(BuildContext context) {
30:     SizeConfig.init(context);
31: 
32:     return Scaffold(
33:       backgroundColor: AppColor.whiteColor,
34:       body: SizedBox(
35:         width: SizeConfig.width,
36:         child: Stack(
37:           alignment: Alignment.center,
38:           children: [
39:             Positioned(
40:               top: 0,
41:               left: 0,
42:               child: Image.asset('assets/images/background-top.png',color: AppColor.primaryColor),),
43:             Positioned(
44:               bottom: 0,
45:               left: 0,
46:               child: Image.asset('assets/images/background-bottom.png',color: AppColor.primaryColor),),
47: 
48:             Column(
49:               children: [
50:                 SizedBox(height: SizeConfig.heightResponsive(0.16),),
51:                 Image.asset(AssetsPath.logo,height: SizeConfig.heightResponsive(0.20),width: SizeConfig.widthResponsive(0.8),),
52:                 SizedBox(height: SizeConfig.heightResponsive(0.06),),
53:                 Text(context.loc.welcomeToApp,style: TextStyle(color:AppColor.primaryColor ,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600,)),
54:                 const SizedBox(height:10,),
55:               ],
56:             ),
57: 
58:             Positioned(
59:               bottom: SizeConfig.heightResponsive(0.08),
60:               width: SizeConfig.width,
61:               child: Column(
62:                 mainAxisAlignment: MainAxisAlignment.center,
63:                 crossAxisAlignment: CrossAxisAlignment.center,
64:                 children: [
65:                   SizedBox(width: SizeConfig.widthResponsive(0.80), child:  const LinearProgressIndicator(color: AppColor.primaryColor),),
66:                   const SizedBox(height:16,),
67:                   Text(context.loc.dataIsBeingFormatted,style: TextStyle(color: AppColor.primaryColor ,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w500),)
68:                 ],
69:               ),),],
70:         ),
71:       ),
72:     );
73:   }
74: }
````

## File: lib/features/shared/chat/screens/chat_screen.dart
````dart
  1: import 'dart:async';
  2: import 'dart:convert';
  3: import 'package:cached_network_image/cached_network_image.dart';
  4: import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
  5: import 'package:car_mediator_mobile/widgets/components.dart';
  6: import 'package:car_mediator_mobile/widgets/custom_button.dart';
  7: import 'package:car_mediator_mobile/widgets/custom_loading.dart';
  8: import 'package:dropdown_search/dropdown_search.dart';
  9: import 'package:flutter/material.dart';
 10: import 'package:provider/provider.dart';
 11: 
 12: import '../../../../core/data_sources/local/secure_storage.dart';
 13: import '../../../../core/data_sources/remote/api_path.dart';
 14: import '../../../../core/localization/app_language_provider.dart';
 15: import '../../../../core/providers/cache_provider.dart';
 16: import '../../../../core/providers/conversation_provider.dart';
 17: import '../../../../core/providers/shipping_provider.dart';
 18: import '../../../../core/styles/styles.dart';
 19: import '../../../../core/utils/connection_utils.dart';
 20: import '../../../../core/utils/constants/colors_constants.dart';
 21: import '../../../../core/utils/dialogUtils.dart';
 22: import '../../../../core/utils/form_validator.dart';
 23: import '../../../../core/utils/image_picker_bottom_sheet_utils.dart';
 24: import '../../../../core/utils/size_config.dart';
 25: import '../../../../models/city_model.dart';
 26: import '../../../../widgets/container_fields_widget.dart';
 27: import '../../../../widgets/custom_container_listtile_widget.dart';
 28: import '../../../../widgets/custom_textfield.dart';
 29: import '../../../../widgets/images/custom_image.dart';
 30: import '../../../user/shipping_request/screens/confirm_shipping_request_screen.dart';
 31: 
 32: class ChatScreen extends StatefulWidget {
 33:   final int conversationId;
 34:   final int requestId;
 35:   final int responseId;
 36:   final int vendorId;
 37:   final String receiverName;
 38:   final String receiverLogo;
 39:   final int myUserId;
 40:   final bool isVendor;
 41: 
 42:   const ChatScreen({
 43:     required this.conversationId,
 44:     required this.requestId,
 45:     required this.receiverName,
 46:     required this.receiverLogo,
 47:     required this.myUserId,
 48:      this.isVendor = false,
 49:     required this.responseId,
 50:     required this.vendorId,
 51:   });
 52: 
 53:   @override
 54:   _ChatScreenState createState() => _ChatScreenState();
 55: }
 56: 
 57: class _ChatScreenState extends State<ChatScreen> {
 58:   TextEditingController controller = TextEditingController();
 59:   Timer? timer;
 60: 
 61:   @override
 62:   void initState() {
 63:     super.initState();
 64:     WidgetsBinding.instance.addPostFrameCallback((_) async {
 65:       final prov = Provider.of<ConversationProvider>(context, listen: false);
 66:       prov.initProvider();
 67:       await prov.loadInitialMessages(conversationId: widget.conversationId);
 68:       startPolling(prov);
 69:     });
 70:   }
 71: 
 72:   @override
 73:   void dispose() {
 74:     timer?.cancel();
 75:     super.dispose();
 76:   }
 77: 
 78:   void startPolling(ConversationProvider provider) {
 79:     timer = Timer.periodic(const Duration(seconds: 3), (timer) async {
 80:       await provider.fetchNewMessages(conversationId: widget.conversationId);
 81:     });
 82:   }
 83: 
 84:   @override
 85:   Widget build(BuildContext context) {
 86:     return Scaffold(
 87:       appBar: AppBar(
 88:           backgroundColor: Colors.white,
 89:           title: Row(
 90:             children: [
 91:               const SizedBox(width: 5),
 92:               Column(
 93:                 crossAxisAlignment: CrossAxisAlignment.start,
 94:                 children: [
 95:                   Text('رقم الطلب : ${widget.requestId}', style: txtLightSemiBold035,),
 96:                   Text(
 97:                     '${widget.receiverName}',
 98:                     style: txtSemiBold033,
 99:                   ),
100:                 ],
101:               ),
102:             ],
103:           ),
104:           elevation: 0,
105:           actions:  [
106:             if(widget.isVendor)
107:             IconButton(onPressed: (){
108:               showModalBottomSheet(
109:                 context: context,
110:                 isScrollControlled: true,
111:                 backgroundColor: Colors.transparent,
112:                 builder: (context) {
113:                   return Scaffold(
114:                     backgroundColor: Colors.transparent,
115:                     body: DraggableScrollableSheet(
116:                       expand: false,
117:                       initialChildSize: 0.9,
118:                       minChildSize: 0.6,
119:                       maxChildSize: 0.95,
120:                       builder: (context, scrollController) {
121:                         return _SendShippingInfoBottomSheet(
122:                           onSend: (value) async {
123:                             Navigator.pop(context);
124:                              await onSendMessage(Provider.of<ConversationProvider>(context, listen: false), isSendShippingRequest: true, shippingInfo: value);
125:                           },
126:                           scrollController: scrollController,
127:                         );
128:                       },
129:                     ),
130:                   );
131:                 },
132:               );
133:             },
134:                 icon: Row(
135:               mainAxisSize: MainAxisSize.min,
136:               children: [
137:                 const Icon(Icons.local_shipping, color: AppColor.primaryColor,),
138:                 const SizedBox(width: 5,),
139:                 Text('طلب شحن', style: txtSemiBold033,)
140:               ],
141:             )),
142:           ],
143:           leadingWidth: SizeConfig.widthResponsive(0.18),
144:           titleSpacing: 0,
145:           leading:  Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
146:             child: CustomImageWidget(urlImage: widget.receiverLogo),
147:           )),
148:       body: Consumer<ConversationProvider>(
149:         builder: (context, provider, child) {
150:           return provider.isLoading ? const CustomLoading() : Column(
151:             children: [
152:               Expanded(
153:                 child: ListView.builder(
154:                   reverse: true,
155:                   itemCount: provider.messagesList.length,
156:                   itemBuilder: (context, index) {
157:                     final msg = provider.messagesList[provider.messagesList.length - 1 - index];
158:                     final isMe = msg.senderId == widget.myUserId;
159:                     return Align(
160:                       alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
161:                       child: Container(
162:                         margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
163:                         padding: const EdgeInsets.all(8),
164:                         decoration: BoxDecoration(
165:                           color: isMe ? AppColor.primaryColor : Colors.grey[300],
166:                           borderRadius: BorderRadius.circular(10),
167:                         ),
168:                         child: Column(
169:                           crossAxisAlignment: CrossAxisAlignment.end,
170:                           children: [
171:                             if (msg.body != null && (msg.body?.isNotEmpty ?? false))
172:                             Text(
173:                               msg.body,
174:                               style: TextStyle(
175:                                 color: isMe ? Colors.white : Colors.black,
176:                                 fontSize: 16,
177:                               ),
178:                             ),
179:                             if (msg.image != null && (msg.image?.isNotEmpty ?? false))
180:                               FutureBuilder<String?>(
181:                                 future: SecureStorage.getToken(),
182:                                 builder: (context, snapshot) {
183:                                   if (!snapshot.hasData) {
184:                                     return const CustomLoading(radius: 18,);
185:                                   }
186:                                   final token = snapshot.data ?? '';
187: 
188:                                   return GestureDetector(
189:                                     onTap: () {
190:                                       Navigator.push(
191:                                         context,
192:                                         MaterialPageRoute(
193:                                           builder: (_) => FullImagePage(imageUrl: "${ApiPath.uploads}${msg.image}", token: token),
194:                                         ),
195:                                       );
196:                                     },
197:                                     child: CachedNetworkImage(
198:                                       height: SizeConfig.heightResponsive(0.30),
199:                                       width: SizeConfig.widthResponsive(0.50),
200:                                       imageUrl: "${ApiPath.uploads}${msg.image}",
201:                                       httpHeaders: {"Authorization": "Bearer $token"},
202:                                       placeholder: (context, url) => const CustomLoading(radius: 18),
203:                                       errorWidget: (context, url, error) => const Icon(Icons.error),
204:                                     ),
205:                                   );
206:                                 },
207:                               ),
208: 
209:                             if(msg.isShippingRequest)
210:                               SizedBox(
211:                                 width: SizeConfig.widthResponsive(0.60),
212:                                 child: Column(
213:                                   mainAxisSize: MainAxisSize.min,
214:                                   children: [
215:                                     const SizedBox(height: 10,),
216:                                     Text('الموافقة على طلب الشحن', style: TextStyle(color: AppColor.accentColor, fontSize: 16),),
217:                                     const SizedBox(height: 10,),
218:                                     CustomButton(
219:                                       label: widget.isVendor ? 'تم إرسال طلب الشحن': 'طلب الشحن',
220:                                       onTap: (){
221:                                         if(!widget.isVendor)
222:                                         navigationPush(context, ConfirmShippingRequestScreen(requestId: widget.requestId, responseId: widget.responseId, vendorId: widget.responseId,));
223:                                       },
224:                                       textColor: AppColor.accentColor,
225:                                       primaryColor: Colors.transparent,
226:                                       borderColor: AppColor.accentColor ,
227:                                       txtSize: 16,),
228:                                     const SizedBox(height: 10,),
229:                                   ],
230:                                 ),
231:                               ),
232: 
233:                             const SizedBox(height: 5),
234:                             Text(
235:                               msg.createdAt,
236:                               textDirection: TextDirection.ltr,
237:                               style: TextStyle(
238:                                 color: isMe ? Colors.white70 : Colors.black54,
239:                                 fontSize: 12,
240:                               ),
241:                             ),
242:                           ],
243:                         ),
244:                       ),
245:                     );
246:                   },
247:                 ),
248:               ),
249:               Padding(
250:                 padding: const EdgeInsets.all(8),
251:                 child: Row(
252:                   children: [
253:                     Expanded(
254:                       child: TextField(
255:                         controller: controller,
256:                         decoration: const InputDecoration(
257:                           hintText: "مراسلة...",
258:                           border: OutlineInputBorder(
259:                             borderRadius: BorderRadius.all(Radius.circular(10)),
260:                           ),
261:                         ),
262:                       ),
263:                     ),
264:                     IconButton(
265:                       icon: const Icon(Icons.camera_alt, color: AppColor.primaryColor),
266:                       onPressed: () async {
267:                         ImagePickerBottomSheet.show(context, (picked) async {
268:                           if (picked != null) {
269:                             provider.changeSelectedConversationImage(picked);
270:                             await onSendMessage(provider);
271:                           }
272:                         });
273:                       },
274:                     ),
275:                     const SizedBox(width: 5),
276:                     IconButton(
277:                       icon: provider.isLoadingSend ? const CustomLoading(radius: 10) : const Icon(Icons.send, color: AppColor.primaryColor),
278:                       onPressed: () async {
279:                         await onSendMessage(provider);
280:                       },
281:                     )
282:                   ],
283:                 ),
284:               ),
285:             ],
286:           );
287:         }
288:       ),
289:     );
290:   }
291: 
292:   Future<void> onSendMessage(ConversationProvider provider, {bool isSendShippingRequest = false, String? shippingInfo}) async {
293:     if(! await ConnectionUtils.hasInternetConnection()){
294:       DialogUtils().showNoInternetDialog(context);
295:       return;
296:     }
297: 
298:     final text = (isSendShippingRequest == false) ? controller.text.trim() : '';
299:     
300:     if(!(text.isNotEmpty || provider.fileImage != null) && (isSendShippingRequest == false)){
301:       ToastHelper.showWarning('لا توجد بيانات للإرسال');
302:       return;
303:     }
304: 
305:     await provider.sendMessage(context, body: {
306:       'conversationId': widget.conversationId.toString(),
307:       'body': text ?? '',
308:       'isSendShippingRequest': isSendShippingRequest ? '1' : '0',
309:       'shippingInfo': shippingInfo ?? '',
310:       'requestId' : widget.requestId.toString(),
311:       'responseId' : widget.responseId.toString(),
312:     },);
313:     controller.clear();
314:     // await loadMessages();
315:   }
316: }
317: 
318: class FullImagePage extends StatelessWidget {
319:   final String imageUrl;
320:   final String token;
321: 
322:   const FullImagePage({super.key, required this.imageUrl, required this.token});
323: 
324:   @override
325:   Widget build(BuildContext context) {
326:     return Scaffold(
327:       backgroundColor: Colors.black,
328:       body: GestureDetector(
329:         onTap: () => Navigator.pop(context),
330:         child: Center(
331:           child: InteractiveViewer(
332:             minScale: 1,
333:             maxScale: 4,
334:             child: CachedNetworkImage(
335:               imageUrl: imageUrl,
336:               httpHeaders: {"Authorization": "Bearer $token"},
337:               fit: BoxFit.contain,
338:             ),
339:           ),
340:         ),
341:       ),
342:     );
343:   }
344: }
345: 
346: 
347: class _SendShippingInfoBottomSheet extends StatefulWidget {
348:   const _SendShippingInfoBottomSheet({super.key, required this.onSend, required this.scrollController});
349:   final Function(String detailShipping) onSend;
350:   final ScrollController scrollController;
351: 
352:   @override
353:   State<_SendShippingInfoBottomSheet> createState() => _SendShippingInfoBottomSheetState();
354: }
355: 
356: class _SendShippingInfoBottomSheetState extends State<_SendShippingInfoBottomSheet> {
357:   final _formKey = GlobalKey<FormState>();
358:   final _addressController = TextEditingController();
359:   final _phoneController = TextEditingController();
360:   final _lengthController = TextEditingController();
361:   final _widthController = TextEditingController();
362:   final _heightController = TextEditingController();
363:   final _weightController = TextEditingController();
364: 
365:   @override
366:   void dispose() {
367:     _addressController.dispose();
368:     _phoneController.dispose();
369:     _lengthController.dispose();
370:     _widthController.dispose();
371:     _heightController.dispose();
372:     _weightController.dispose();
373:     super.dispose();
374:   }
375: 
376:   @override
377:   Widget build(BuildContext context) {
378:     final _isArabic = context.read<AppLanguageProvider>().isArabic;
379:     final _cacheProvider = context.read<CacheProvider>();
380:     final _shippingProvider = Provider.of<ShippingProvider>(context);
381: 
382:     return SingleChildScrollView(
383:       controller: widget.scrollController,
384:       padding: EdgeInsets.only(
385:         bottom: MediaQuery.of(context).viewInsets.bottom,
386:       ),
387:       child: Container(
388:         width: SizeConfig.width,
389:         margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
390:         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
391:         decoration: BoxDecoration(
392:             color: Colors.white,
393:             borderRadius: BorderRadius.circular(20)
394:         ),
395:         child: Form(
396:           key: _formKey,
397:           child: Column(
398:             children: [
399:               Align(
400:                 alignment: Alignment.centerLeft,
401:                 child: IconButton(
402:                     onPressed: () => Navigator.pop(context),
403:                     icon: const Icon(
404:                       Icons.close,
405:                       color: AppColor.primaryColor,
406:                     )),
407:               ),
408:               Text('تفاصيل الشحنة', style: txtBold05,),
409:               const SizedBox(height: 10),
410:               ContainerFieldsWidget(
411:                 title: 'عنوانك',
412:                 children: [
413:                   DropdownSearch<CityModel>(
414:                     dropdownDecoratorProps: customDropdownDecoratorProps(
415:                         label: 'مدينتك', hint: 'إختر مدينتك'),
416:                     popupProps: popupPropsBottomSheet<CityModel>(
417:                       titleBottomSheet: 'مدينتك',
418:                       itemBuilder: (BuildContext context, CityModel item,
419:                           bool isSelected) {
420:                         return CustomContainerListTileWidget(
421:                           title:
422:                           _isArabic ? item.cityNameAr : item.cityNameEn,
423:                         );
424:                       },
425:                     ),
426:                     items: _cacheProvider.citiesList,
427:                     selectedItem: _shippingProvider.myCitySelectedModel,
428:                     itemAsString: (CityModel? u) =>
429:                     (_isArabic ? u?.cityNameAr : u?.cityNameEn) ?? '',
430:                     validator: FormValidatorUtils.objectValidator,
431:                     onChanged: (CityModel? selection) =>
432:                         _shippingProvider.selectedMyCity(selection),
433:                   ),
434:                   const SizedBox(height: 16,),
435:                   CustomTextField(
436:                     label:'الحي - الشارع',
437:                     controller: _addressController,
438:                     validator: (value) => FormValidatorUtils.textValidator(value,
439:                       isRequired: true,
440:                       maxLength: 255,),
441:                   ),
442:                   const SizedBox(height: 16,),
443:                   CustomTextField(
444:                     label:'رقم الجوال',
445:                     controller: _phoneController,
446:                     keyboardType: TextInputType.phone,
447:                     validator: (value) => FormValidatorUtils.phoneValidator(value,
448:                       isRequired: true,),
449:                   ),
450:                 ],
451:               ),
452:               const SizedBox(height: 16),
453:               ContainerFieldsWidget(
454:                   title: 'التفاصيل',
455:                   children: [
456:                     Row(
457:                       children: [
458:                         Expanded(flex:1, child: CustomTextField(
459:                           label: 'الطول ( سم )',
460:                           controller: _lengthController,
461:                           keyboardType: TextInputType.number,
462:                           validator: (value) => FormValidatorUtils.textValidator(value,
463:                             isRequired: true,),
464:                         )),
465:                         const SizedBox(width: 10,),
466:                         Expanded(flex:1, child: CustomTextField(
467:                           label: 'العرض ( سم )',
468:                           controller: _widthController,
469:                           keyboardType: TextInputType.number,
470:                           validator: (value) => FormValidatorUtils.textValidator(value,
471:                             isRequired: true,),
472:                         )),
473:                       ],
474:                     ),
475:                     const SizedBox(height: 10),
476:                     Row(
477:                       children: [
478:                         Expanded(flex:1, child: CustomTextField(
479:                           label: 'الإرتفاع ( سم )',
480:                           controller: _heightController,
481:                           keyboardType: TextInputType.number,
482:                           validator: (value) => FormValidatorUtils.textValidator(value,
483:                             isRequired: true,),
484:                         )),
485:                         const SizedBox(width: 10,),
486:                         Expanded(flex:1, child: CustomTextField(
487:                           label: 'الوزن ( كغم )',
488:                           controller: _weightController,
489:                           keyboardType: TextInputType.number,
490:                           validator: (value) => FormValidatorUtils.textValidator(value,
491:                             isRequired: true,),
492:                         )),
493: 
494:                       ],
495:                     ),
496:                   ]
497:               ),
498:               const SizedBox(height: 10),
499:               // button
500:               CustomButton(
501:                 label: 'إرسال',
502:                 onTap: (){
503:                   if(_formKey.currentState?.validate() ?? false){
504:                     widget.onSend(jsonEncode({
505:                       'city': _shippingProvider.myCitySelectedModel?.cityNameEn ?? '',
506:                       'address' : _addressController.text.toString(),
507:                       'phone' : _phoneController.text.toString(),
508:                       'length' : _lengthController.text.toString(),
509:                       'width' : _widthController.text.toString(),
510:                       'height' : _heightController.text.toString(),
511:                       'weight' : _weightController.text.toString(),
512:                     }));
513:                   }
514:                 },
515:                 txtSize: SizeConfig.widthResponsive(0.04),
516:               )
517:             ],
518:           ),
519:         ),
520:       ),
521:     );
522:   }
523: }
````

## File: lib/features/shared/notifications/screens/notifications_screen.dart
````dart
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
````

## File: lib/features/user/home/screens/home_user_screen.dart
````dart
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
````

## File: lib/features/user/home/widgets/categories_gridview_widget.dart
````dart
  1: import 'package:car_mediator_mobile/core/localization/app_language_provider.dart';
  2: import 'package:car_mediator_mobile/features/user/orders/screens/create_order/create_order_screen.dart';
  3: import 'package:car_mediator_mobile/widgets/components.dart';
  4: import 'package:flutter/material.dart';
  5: import 'package:provider/provider.dart';
  6: 
  7: import '../../../../core/data_sources/remote/api_path.dart';
  8: import '../../../../core/providers/cache_provider.dart';
  9: import '../../../../core/providers/orders/create_order_provider.dart';
 10: import '../../../../core/utils/constants/colors_constants.dart';
 11: import '../../../../core/utils/constants/constants.dart';
 12: import '../../../../core/utils/constants/enumeration.dart';
 13: import '../../../../core/utils/size_config.dart';
 14: import '../../../../models/category_model.dart';
 15: import '../../../../widgets/images/custom_image.dart';
 16: import '../../../../widgets/ontap_container_widget.dart';
 17: 
 18: class CategoriesGridviewWidget extends StatelessWidget {
 19:   const CategoriesGridviewWidget({super.key});
 20: 
 21:   @override
 22:   Widget build(BuildContext context) {
 23:     return Selector<CacheProvider, List<CategoryModel>>(
 24:       selector: (context, cacheProvider) => cacheProvider.categoriesList,
 25:       builder: (context, categoriesList, child) => GridView.builder(
 26:           shrinkWrap: true,
 27:           physics: const ScrollPhysics(),
 28:           padding: const EdgeInsets.symmetric(horizontal: paddingHorizontalConst,),
 29:           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
 30:             crossAxisCount: 3,
 31:             mainAxisExtent: SizeConfig.heightResponsive(0.16),
 32:              crossAxisSpacing: 5,
 33:              mainAxisSpacing: 5,
 34:           ),
 35:           itemCount: categoriesList.length ?? 0,
 36:           itemBuilder: (BuildContext ctx, index) {
 37:             final categoryModel = categoriesList[index];
 38:             return _CategoryItem(
 39:               model: categoryModel,
 40:               index: index,
 41:             );
 42:           }),
 43:     );
 44:   }
 45: }
 46: 
 47: class _CategoryItem extends StatelessWidget {
 48:   final CategoryModel model;
 49:   final int index;
 50: 
 51:   const _CategoryItem({
 52:     required this.model,
 53:     required this.index,
 54:   });
 55: 
 56:   @override
 57:   Widget build(BuildContext context) {
 58: 
 59:     return OnTapContainerWidget(
 60:       onTap: () {
 61:         if(model.active == CategoryStatusEnum.Soon.name){
 62:           return;
 63:         }
 64:         final _provider = context.read<CreateOrderProvider>();
 65:         _provider.setCategorySelected(model);
 66:         _provider.setIsCategoryHasBrand(context, model.id);
 67:         navigationPush(context, CreateOrderScreen(customFieldsList: context.read<CacheProvider>().getCustomFieldsByCategoryId(model.id),));
 68:       },
 69:       child: Column(
 70:         mainAxisAlignment: MainAxisAlignment.center,
 71:         crossAxisAlignment: CrossAxisAlignment.center,
 72:         children: [
 73:           Align(
 74:             alignment: Alignment.centerLeft,
 75:             child: Padding(padding: EdgeInsets.only(left: SizeConfig.widthResponsive(0.03)), child: Text(model.active == CategoryStatusEnum.Soon.name ? 'قريـبـاً' : '', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), fontWeight: FontWeight.bold, color: Colors.grey),)),
 76:           ),
 77:           CircleAvatar(
 78:             radius: SizeConfig.widthResponsive(0.06),
 79:             backgroundColor: Colors.white,
 80:             child: CustomImageWidget(
 81:               urlImage: ApiPath.categoriesIcon + (model.catIconPath ?? ''),
 82:               height: SizeConfig.widthResponsive(0.06),
 83:               width: SizeConfig.widthResponsive(0.06),
 84:               fit: BoxFit.fill,
 85:             ),
 86:           ),
 87:           const SizedBox(height: 6),
 88:           Text(
 89:             model.getName(context.read<AppLanguageProvider>().appLocal.languageCode),
 90:             textAlign: TextAlign.center,
 91:             style: TextStyle(
 92:               fontSize: SizeConfig.widthResponsive(0.03),
 93:               fontWeight: FontWeight.w700,
 94:               color: AppColor.textColor,
 95:             ),
 96:           ),
 97:         ],
 98:       )
 99:     );
100:   }
101: }
````

## File: lib/features/user/my_conversations/screens/user_conversations_screen.dart
````dart
  1: import 'package:car_mediator_mobile/core/helpers/helpers.dart';
  2: import 'package:car_mediator_mobile/core/styles/styles.dart';
  3: import 'package:car_mediator_mobile/core/utils/utils.dart';
  4: import 'package:flutter/material.dart';
  5: import 'package:provider/provider.dart';
  6: 
  7: import '../../../../core/data_sources/remote/api_endpoints.dart';
  8: import '../../../../core/providers/auth_provider.dart';
  9: import '../../../../core/providers/conversation_provider.dart';
 10: import '../../../../core/providers/users/my_request_user_provider.dart';
 11: import '../../../../core/utils/connection_utils.dart';
 12: import '../../../../core/utils/constants/colors_constants.dart';
 13: import '../../../../core/utils/dialogUtils.dart';
 14: import '../../../../core/utils/size_config.dart';
 15: import '../../../../widgets/components.dart';
 16: import '../../../../widgets/custom_empty_widget.dart';
 17: import '../../../../widgets/custom_loading.dart';
 18: import '../../../../widgets/images/custom_image.dart';
 19: import '../../../shared/chat/screens/chat_screen.dart';
 20: 
 21: class UserConversationScreen extends StatefulWidget {
 22:   const UserConversationScreen({super.key});
 23: 
 24:   @override
 25:   _UserConversationScreenState createState() => _UserConversationScreenState();
 26: }
 27: 
 28: class _UserConversationScreenState extends State<UserConversationScreen> {
 29: 
 30:   final ScrollController _scrollController = ScrollController();
 31: 
 32:   @override
 33:   void initState() {
 34:     super.initState();
 35: 
 36:     WidgetsBinding.instance.addPostFrameCallback((_) async {
 37:       final provider = Provider.of<ConversationProvider>(context, listen: false);
 38:       provider.resetPagination();
 39:       await provider.getMyConversations(path: ApiEndpoints.userConversations);
 40:     });
 41:     
 42:     _scrollController.addListener(() {
 43:       final p = Provider.of<ConversationProvider>(context, listen: false);
 44:       if (_scrollController.position.pixels ==
 45:           _scrollController.position.maxScrollExtent &&
 46:           !p.isLoading &&
 47:           p.hasMore) {
 48:         p.getMyConversations( path: ApiEndpoints.userConversations,loadMore: true);
 49:       }
 50:     });
 51:   }
 52: 
 53:   @override
 54:   void dispose() {
 55:     super.dispose();
 56:     _scrollController.dispose();
 57:   }
 58: 
 59:   @override
 60:   Widget build(BuildContext context) {
 61:     SizeConfig.init(context);
 62: 
 63:     return Consumer<ConversationProvider>(
 64:       builder: (context, provider, child) {
 65: 
 66:         if ( provider.conversationModelList.isEmpty && provider.isLoading) {
 67:           return const CustomLoading();
 68:         }
 69: 
 70:         return RefreshIndicator(
 71:           onRefresh: () => provider.refreshGetMyConversations(ApiEndpoints.userConversations),
 72:           child: provider.conversationModelList.isNotEmpty ? ListView.builder(
 73:             controller: _scrollController,
 74:             physics: const AlwaysScrollableScrollPhysics(),
 75:             itemCount: provider.conversationModelList.length + (provider.isLoading ? 1 : 0),
 76:             shrinkWrap: true,
 77:             padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
 78:             itemBuilder: (context, index) {
 79:               if (index < provider.conversationModelList.length) {
 80:                 return Padding(padding: const EdgeInsets.only(bottom: 12),
 81:                   child: Material(
 82:                     color: Colors.white,
 83:                     borderRadius: BorderRadius.circular(12),
 84:                     child: ListTile(
 85:                       onTap: () async {
 86:                         if(! await ConnectionUtils.hasInternetConnection()){
 87:                         DialogUtils().showNoInternetDialog(context);
 88:                         return;
 89:                         }
 90:                         navigationPush(context, ChatScreen(
 91:                           conversationId: provider.conversationModelList[index].conversationId ?? 0,
 92:                           requestId: provider.conversationModelList[index].requestId ?? 0,
 93:                           responseId: provider.conversationModelList[index].responseId ?? 0,
 94:                           vendorId: provider.conversationModelList[index].vendorId ?? 0,
 95:                           receiverName: provider.conversationModelList[index].receiverName ?? '',
 96:                           receiverLogo: provider.conversationModelList[index].receiverLogo ?? '',
 97:                           myUserId: context.read<AuthProvider>().currentUseModel?.id ?? 0,
 98:                         ));
 99:                       },
100:                       shape: RoundedRectangleBorder(
101:                         borderRadius: BorderRadius.circular(12),
102:                       ),
103:                       contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
104:                       leading: CustomImageWidget(
105:                         urlImage: provider.conversationModelList[index].receiverLogo,
106:                         width: SizeConfig.widthResponsive(0.15),
107:                         height: SizeConfig.widthResponsive(0.15),
108:                         radius: 60,
109:                       ),
110:                       title: Text('${provider.conversationModelList[index].receiverName}', style: txtSemiBold035,),
111:                       subtitle: Text('رقم الطلب : ${Utils.numberFormatting(provider.conversationModelList[index].requestId)}'),
112:                       trailing: const Icon(Icons.arrow_forward_ios_rounded, color: AppColor.primaryColor, size: 18,),
113:                     ),
114:                   ),);
115:               } else {
116:                 return const Padding(padding: EdgeInsets.only(bottom: 10),
117:                   child: CustomLoading(radius: 18,),
118:                 );
119:               }
120:             },
121:           ) : const CustomEmptyWidget(label: 'لا توجد محادثات للعرض حالياً',),);
122:       },
123:     );
124:   }
125: }
````

## File: lib/features/user/my_requests/screens/details_my_request_screen.dart
````dart
  1: import 'package:cached_network_image/cached_network_image.dart';
  2: import 'package:car_mediator_mobile/core/styles/styles.dart';
  3: import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
  4: import 'package:car_mediator_mobile/widgets/container_fields_widget.dart';
  5: import 'package:flutter/material.dart';
  6: import 'package:provider/provider.dart';
  7: 
  8: import '../../../../core/data_sources/local/secure_storage.dart';
  9: import '../../../../core/data_sources/remote/api_path.dart';
 10: import '../../../../core/providers/users/my_request_user_provider.dart';
 11: import '../../../../core/utils/date_parser_utils.dart';
 12: import '../../../../core/utils/size_config.dart';
 13: import '../../../../core/utils/utils.dart';
 14: import '../../../../widgets/custom_loading.dart';
 15: import '../../../../widgets/item_table_widget.dart';
 16: import '../widgets/status_my_request_widget.dart';
 17: 
 18: class DetailsMyRequestScreen extends StatefulWidget {
 19:   const DetailsMyRequestScreen({super.key, required this.requestId});
 20:   final int requestId;
 21: 
 22:   @override
 23:   _DetailsMyRequestScreenState createState() => _DetailsMyRequestScreenState();
 24: }
 25: 
 26: class _DetailsMyRequestScreenState extends State<DetailsMyRequestScreen> {
 27: 
 28:   @override
 29:   void initState() {
 30:     super.initState();
 31: 
 32:     WidgetsBinding.instance.addPostFrameCallback((_) async {
 33:       final provider = Provider.of<MyRequestUserProvider>(context, listen: false);
 34:       await provider.getMyRequestById(requestId: widget.requestId);
 35:     });
 36:   }
 37: 
 38:   @override
 39:   Widget build(BuildContext context) {
 40:     SizeConfig.init(context);
 41: 
 42:     return Scaffold(
 43:       appBar: AppBar(
 44:         backgroundColor: Colors.white,
 45:         title: Text('تفاصيل الطلب : '+ ' ${Utils.numberFormatting(widget.requestId)}', style: txtMedium05,),
 46:         leading: ArrowBackWidget(myContext: context),
 47:         centerTitle: true,
 48:         elevation: 0,
 49:       ),
 50:       body: Consumer<MyRequestUserProvider>(
 51:         builder: (context, provider, child) {
 52: 
 53:           if (provider.isLoading) {
 54:             return const CustomLoading();
 55:           }
 56: 
 57:           return RefreshIndicator(
 58:             onRefresh: (){
 59:               return provider.getMyRequestById(requestId: widget.requestId);
 60:             },
 61:             child: ListView(
 62:               padding: const EdgeInsets.all(12),
 63:               shrinkWrap: true,
 64:               children: [
 65:                 StatusMyRequestWidget(status: provider.detailsMyRequestModel?.requestStatus ?? '',),
 66:                 const SizedBox(height: 20,),
 67:                 ContainerFieldsWidget(
 68:                     title: 'تفاصيل الطلب',
 69:                     children: [
 70:                       ItemTableWidget(
 71:                         keyString: 'القسم',
 72:                         value: provider.detailsMyRequestModel?.catNameAr ?? '',
 73:                       ),
 74:                       ItemTableWidget(
 75:                         keyString: 'مدينة العميل',
 76:                         value: provider.detailsMyRequestModel?.cityCustomerNameAr ?? '',
 77:                       ),
 78:                       ItemTableWidget(
 79:                         keyString: 'نطاق المدن',
 80:                         value: provider.detailsMyRequestModel?.cities.join(" - ") ?? '',
 81:                       ),
 82:                       if(provider.detailsMyRequestModel?.brandsNames.isNotEmpty ?? false)
 83:                         ItemTableWidget(
 84:                           keyString: 'الماركة',
 85:                           value: provider.detailsMyRequestModel?.brandsNames.join(" - ") ?? '',
 86:                         ),
 87: 
 88:                       ItemTableWidget(
 89:                         keyString: 'تاريخ الطلب',
 90:                         value: DateParserUtils.getDateWithTimeFromString(provider.detailsMyRequestModel?.requestDate ?? ''),
 91:                       ),
 92: 
 93:                       Column(
 94:                         mainAxisSize: MainAxisSize.min,
 95:                         children: provider.detailsMyRequestModel?.fields.map((e) => ItemTableWidget(keyString: e['key'], value: e['value'],)).toList() ?? [],
 96:                       ),
 97:                       ItemTableWidget(
 98:                         keyString: 'تفاصيل الطلب',
 99:                         value: provider.detailsMyRequestModel?.description ?? '',
100:                       ),
101:                       const SizedBox(height: 10,),
102:                       Column(
103:                         mainAxisSize: MainAxisSize.min,
104:                         children: provider.detailsMyRequestModel?.images.map((e) => FutureBuilder<String?>(
105:                           future: SecureStorage.getToken(),
106:                           builder: (context, snapshot) {
107:                             if (!snapshot.hasData) {
108:                               return const CustomLoading(radius: 18,);
109:                             }
110:                             final token = snapshot.data ?? '';
111: 
112:                             return CachedNetworkImage(
113:                               height: SizeConfig.heightResponsive(0.30),
114:                               width: SizeConfig.width,
115:                               imageUrl: "${ApiPath.uploadsPrivate}${e['image_name']}",
116:                               httpHeaders: {
117:                                 "Authorization": "Bearer $token",
118:                               },
119:                               placeholder: (context, url) => const CustomLoading(radius: 18,),
120:                               errorWidget: (context, url, error) => const Icon(Icons.error),
121:                             );
122:                           },
123:                         )).toList() ?? [],
124:                       ),
125:                       const SizedBox(height: 20,),
126:                     ]
127:                 ),
128: 
129:                 const SizedBox(height: 20,),
130:               ],
131:             ),
132:           );
133:         },
134:       ),
135:     );
136:   }
137: }
````

## File: lib/features/user/my_requests/screens/details_response_my_request_screen.dart
````dart
  1: import 'package:car_mediator_mobile/core/providers/common_provider.dart';
  2: import 'package:car_mediator_mobile/core/styles/styles.dart';
  3: import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
  4: import 'package:flutter/material.dart';
  5: import 'package:provider/provider.dart';
  6: import '../../../../core/providers/users/responses_my_request_provider.dart';
  7: import '../../../../core/utils/constants/colors_constants.dart';
  8: import '../../../../core/utils/constants/enumeration.dart';
  9: import '../../../../core/utils/date_parser_utils.dart';
 10: import '../../../../core/utils/size_config.dart';
 11: import '../../../../core/utils/utils.dart';
 12: import '../../../../models/response_request_model.dart';
 13: import '../../../../widgets/components.dart';
 14: import '../../../../widgets/container_fields_widget.dart';
 15: import '../../../../widgets/custom_button.dart';
 16: import '../../../../widgets/custom_loading.dart';
 17: import '../../../../widgets/item_table_widget.dart';
 18: import '../../../../widgets/shared/complaint_vendor_service_widget.dart';
 19: import '../widgets/build_vendor_details_response_widget.dart';
 20: 
 21: class DetailsResponseMyRequestScreen extends StatefulWidget {
 22:   const DetailsResponseMyRequestScreen({super.key, required this.responseId});
 23:   final int responseId;
 24: 
 25:   @override
 26:   _DetailsResponseMyRequestScreenState createState() =>
 27:       _DetailsResponseMyRequestScreenState();
 28: }
 29: 
 30: class _DetailsResponseMyRequestScreenState
 31:     extends State<DetailsResponseMyRequestScreen> {
 32:   @override
 33:   void initState() {
 34:     super.initState();
 35: 
 36:     WidgetsBinding.instance.addPostFrameCallback((_) async {
 37:       final provider =
 38:           Provider.of<ResponsesMyRequestProvider>(context, listen: false);
 39:       await provider.getResponseRequestById(responseId: widget.responseId);
 40:     });
 41:   }
 42: 
 43:   @override
 44:   Widget build(BuildContext context) {
 45:     SizeConfig.init(context);
 46: 
 47:     return Scaffold(
 48:       appBar: AppBar(
 49:         backgroundColor: Colors.white,
 50:         title: Text(
 51:           'تفاصيل الرد' + ' ${Utils.numberFormatting(widget.responseId)}',
 52:           style: txtMedium05,
 53:         ),
 54:         leading: ArrowBackWidget(myContext: context),
 55:         centerTitle: true,
 56:         elevation: 0,
 57:       ),
 58:       body: Consumer<ResponsesMyRequestProvider>(
 59:         builder: (context, provider, child) {
 60:           if (provider.isLoading) {
 61:             return const CustomLoading();
 62:           }
 63: 
 64:           return RefreshIndicator(
 65:             onRefresh: () {
 66:               return provider.getResponseRequestById(
 67:                   responseId: widget.responseId);
 68:             },
 69:             child: ListView(
 70:               padding: const EdgeInsets.all(12),
 71:               shrinkWrap: true,
 72:               children: [
 73:                 BuildVendorDetailsResponseWidget(
 74:                   model: provider.detailsResponseRequestModel,
 75:                     responseId: widget.responseId,
 76:                 ),
 77:                 // const SizedBox(
 78:                 //   height: 20,
 79:                 // ),
 80:                 // BuildRequestDetailsResponseWidget(
 81:                 //   model: provider.detailsResponseRequestModel,
 82:                 // ),
 83:                 const SizedBox(
 84:                   height: 20,
 85:                 ),
 86:                 _BuildResponseDetailsVendorWidget(
 87:                   model: provider.detailsResponseRequestModel,
 88:                 ),
 89:                 SizedBox(
 90:                   height: SizeConfig.heightResponsive(0.05),
 91:                 ),
 92:                 Padding(padding: EdgeInsets.symmetric(horizontal: 30),
 93:                 child: CustomButton(
 94:                   label: 'إبلاغ عن إساءة',
 95:                   onTap: () async {
 96:                     customBottomSheet(context,
 97:                         child: ComplaintVendorServiceWidget(
 98:                           requestId:
 99:                           provider.detailsResponseRequestModel?.requestId ??
100:                               0,
101:                           responseId: widget.responseId,
102:                         ),
103:                         isDismissible: false);
104:                   },
105:                   txtSize: SizeConfig.widthResponsive(0.04),
106:                   primaryColor: Colors.transparent,
107:                   borderColor: Colors.red,
108:                   textColor: Colors.red,
109:                   bgOverlayColor: AppColor.primaryColor.withOpacity(0.2),
110:                   icon: const Icon(Icons.flag, color: Colors.red),
111:                 ),),
112:               ],
113:             ),
114:           );
115:         },
116:       ),
117: 
118:       // bottomNavigationBar: BottomAppBar(
119:       //   child: Padding(
120:       //     padding: const EdgeInsets.symmetric(
121:       //       horizontal: 0,
122:       //     ),
123:       //     child: CustomButton(
124:       //       label: 'الرد على الطلب',
125:       //       txtSize: SizeConfig.widthResponsive(0.04),
126:       //       onTap: (){
127:       //         customBottomSheet(context,
128:       //             child: const BuildResponseRequestBottomSheet(),
129:       //             isDismissible: false);
130:       //       },
131:       //     ),
132:       //   ),
133:       // ),
134:     );
135:   }
136: }
137: 
138: class _BuildResponseDetailsVendorWidget extends StatelessWidget {
139:   const _BuildResponseDetailsVendorWidget({super.key, required this.model});
140:   final ResponseRequestModel? model;
141: 
142:   @override
143:   Widget build(BuildContext context) {
144:     return ContainerFieldsWidget(title: 'تفاصيل رد الشركة', children: [
145:       ItemTableWidget(
146:         keyString: 'رقم الرد',
147:         value: Utils.numberFormatting(model?.responseId ?? 0),
148:       ),
149:       ItemTableWidget(
150:         keyString: 'تاريخ الرد',
151:         value: DateParserUtils.timeAgoFormat(model?.responseDate),
152:       ),
153:       ItemTableWidget(
154:         keyString: 'حالة الرد',
155:         value: (model?.responseStatus ?? '') ==
156:                 ResponseRequestAvailabilityEnum.available.name
157:             ? 'متوفر'
158:             : (model?.responseStatus ?? '') ==
159:                     ResponseRequestAvailabilityEnum
160:                         .available_with_difference.name
161:                 ? 'متوفر مع إختلاف'
162:                 : 'لم يتم الرد',
163:       ),
164:       ItemTableWidget(
165:         keyString: 'السعر',
166:         value: '${model?.priceResponse ?? 0}  ر.س',
167:       ),
168:       ItemTableWidget(
169:         keyString: 'مدة الضمان',
170:         value: model?.warrantyResponse ?? 'لا يوجد',
171:       ),
172:       ItemTableWidget(
173:         keyString: 'ملاحظات الرد',
174:         value: model?.noteResponse ?? '',
175:       ),
176:       const SizedBox(
177:         height: 10,
178:       ),
179:     ]);
180:   }
181: }
````

## File: lib/features/user/my_requests/screens/my_requests_user_screen.dart
````dart
 1: import 'package:flutter/material.dart';
 2: import 'package:provider/provider.dart';
 3: 
 4: import '../../../../core/providers/users/my_request_user_provider.dart';
 5: import '../../../../core/utils/size_config.dart';
 6: import '../../../../widgets/custom_empty_widget.dart';
 7: import '../../../../widgets/custom_loading.dart';
 8: import '../widgets/my_request_user_card.dart';
 9: 
10: class MyRequestUserScreen extends StatefulWidget {
11:   const MyRequestUserScreen({super.key});
12: 
13:   @override
14:   _MyRequestUserScreenState createState() => _MyRequestUserScreenState();
15: }
16: 
17: class _MyRequestUserScreenState extends State<MyRequestUserScreen> {
18: 
19:   final ScrollController _scrollController = ScrollController();
20: 
21:   @override
22:   void initState() {
23:     super.initState();
24: 
25:     WidgetsBinding.instance.addPostFrameCallback((_) async {
26:       final provider = Provider.of<MyRequestUserProvider>(context, listen: false);
27:       provider.resetPagination();
28:       await provider.getMyRequests();
29:     });
30: 
31:     _scrollController.addListener(() {
32:       final p = Provider.of<MyRequestUserProvider>(context, listen: false);
33:       if (_scrollController.position.pixels ==
34:           _scrollController.position.maxScrollExtent &&
35:           !p.isLoading &&
36:           p.hasMore) {
37:         p.getMyRequests(loadMore: true);
38:       }
39:     });
40:   }
41: 
42:   @override
43:   void dispose() {
44:     super.dispose();
45:     _scrollController.dispose();
46:   }
47: 
48:   @override
49:   Widget build(BuildContext context) {
50:     SizeConfig.init(context);
51: 
52:     return Consumer<MyRequestUserProvider>(
53:       builder: (context, provider, child) {
54: 
55:         if ( provider.requestModelList.isEmpty && provider.isLoading) {
56:           return const CustomLoading();
57:         }
58: 
59:         return RefreshIndicator(
60:           onRefresh: provider.refreshGetMyRequests,
61:           child: provider.requestModelList.isNotEmpty ? ListView.builder(
62:             controller: _scrollController,
63:             physics: const AlwaysScrollableScrollPhysics(),
64:             itemCount: provider.requestModelList.length + (provider.isLoading ? 1 : 0),
65:             shrinkWrap: true,
66:             padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
67:             itemBuilder: (context, index) {
68:               if (index < provider.requestModelList.length) {
69:                 return Padding(padding: const EdgeInsets.only(bottom: 12),
70:                   child: MyRequestUserCard(model: provider.requestModelList[index],),);
71:               } else {
72:                 return const Padding(padding: EdgeInsets.only(bottom: 10),
73:                   child: CustomLoading(radius: 18,),
74:                 );
75:               }
76:             },
77:           ) : const CustomEmptyWidget(label: 'لا توجد طلبات للعرض حالياً',),);
78:       },
79:     );
80:   }
81: }
````

## File: lib/features/user/my_requests/screens/responses_my_request_screen.dart
````dart
  1: import 'package:car_mediator_mobile/widgets/components.dart';
  2: import 'package:flutter/material.dart';
  3: import 'package:provider/provider.dart';
  4: 
  5: import '../../../../core/providers/users/my_request_user_provider.dart';
  6: import '../../../../core/providers/users/responses_my_request_provider.dart';
  7: import '../../../../core/styles/styles.dart';
  8: import '../../../../core/utils/constants/assets_path.dart';
  9: import '../../../../core/utils/constants/colors_constants.dart';
 10: import '../../../../core/utils/constants/enumeration.dart';
 11: import '../../../../core/utils/date_parser_utils.dart';
 12: import '../../../../core/utils/size_config.dart';
 13: import '../../../../core/utils/utils.dart';
 14: import '../../../../models/response_request_model.dart';
 15: import '../../../../widgets/arrow_back_widget.dart';
 16: import '../../../../widgets/custom_button.dart';
 17: import '../../../../widgets/custom_empty_widget.dart';
 18: import '../../../../widgets/custom_loading.dart';
 19: import '../../../../widgets/images/custom_image.dart';
 20: import 'details_response_my_request_screen.dart';
 21: 
 22: class ResponsesMyRequestScreen extends StatefulWidget {
 23:   const ResponsesMyRequestScreen({super.key, required this.requestId});
 24:   final int requestId;
 25: 
 26:   @override
 27:   _ResponsesMyRequestScreenState createState() => _ResponsesMyRequestScreenState();
 28: }
 29: 
 30: class _ResponsesMyRequestScreenState extends State<ResponsesMyRequestScreen> {
 31: 
 32:   final ScrollController _scrollController = ScrollController();
 33: 
 34:   @override
 35:   void initState() {
 36:     super.initState();
 37: 
 38:     WidgetsBinding.instance.addPostFrameCallback((_) async {
 39:       final provider = Provider.of<ResponsesMyRequestProvider>(context, listen: false);
 40:       provider.resetPagination();
 41:       await provider.getResponsesMyRequest(requestId: widget.requestId);
 42:     });
 43: 
 44:     _scrollController.addListener(() {
 45:       final p = Provider.of<ResponsesMyRequestProvider>(context, listen: false);
 46:       if (_scrollController.position.pixels ==
 47:           _scrollController.position.maxScrollExtent &&
 48:           !p.isLoading &&
 49:           p.hasMore) {
 50:         p.getResponsesMyRequest(loadMore: true, requestId: widget.requestId);
 51:       }
 52:     });
 53:   }
 54: 
 55:   @override
 56:   void dispose() {
 57:     super.dispose();
 58:     _scrollController.dispose();
 59:   }
 60: 
 61:   @override
 62:   Widget build(BuildContext context) {
 63:     SizeConfig.init(context);
 64: 
 65:     return Scaffold(
 66:         appBar: AppBar(
 67:           backgroundColor: Colors.white,
 68:           title: Text('ردود الطلب :  ${widget.requestId}', style: txtMedium05,),
 69:           leading: ArrowBackWidget(myContext: context),
 70:           centerTitle: true,
 71:           elevation: 0,
 72:         ),
 73:         body: Consumer<ResponsesMyRequestProvider>(
 74:           builder: (context, provider, child) {
 75: 
 76:             if ( provider.responseRequestModelList.isEmpty && provider.isLoading) {
 77:               return const CustomLoading();
 78:             }
 79: 
 80:             return RefreshIndicator(
 81:               onRefresh: (){
 82:                 return provider.refreshGetResponsesMyRequest(requestId: widget.requestId);
 83:               },
 84:               child: provider.responseRequestModelList.isNotEmpty ? ListView.builder(
 85:                 controller: _scrollController,
 86:                 physics: const AlwaysScrollableScrollPhysics(),
 87:                 itemCount: provider.responseRequestModelList.length + (provider.isLoading ? 1 : 0),
 88:                 shrinkWrap: true,
 89:                 padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
 90:                 itemBuilder: (context, index) {
 91:                   if (index < provider.responseRequestModelList.length) {
 92:                     return Padding(padding: const EdgeInsets.only(bottom: 12),
 93:                       child: _ResponseMyRequestCard(model: provider.responseRequestModelList[index],),);
 94:                   } else {
 95:                     return const Padding(padding: EdgeInsets.only(bottom: 10),
 96:                       child: CustomLoading(radius: 18,),
 97:                     );
 98:                   }
 99:                 },
100:               ) : const CustomEmptyWidget(label: 'لا توجد ردود للعرض حاليا',),);
101:           },
102:         )
103:     );
104: 
105:   }
106: }
107: 
108: class _ResponseMyRequestCard extends StatelessWidget {
109:   const _ResponseMyRequestCard({super.key, required this.model});
110:   final ResponseRequestModel model;
111: 
112:   @override
113:   Widget build(BuildContext context) {
114:     return Material(
115:       color: Colors.white,
116:       borderRadius: BorderRadius.circular(10),
117:       elevation: 1,
118:       child: Padding(
119:         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
120:         child: Column(
121:           mainAxisSize: MainAxisSize.min,
122:           crossAxisAlignment: CrossAxisAlignment.start,
123:           children: [
124:             Row(
125:               children: [
126:                 Expanded(
127:                     flex: 1,
128:                     child: Align(
129:                       alignment: Alignment.centerRight,
130:                       child: Text(
131:                         'رقم الرد :  ${Utils.numberFormatting(model.responseId)}',
132:                         style: txtMedium04,
133:                       ),
134:                     )),
135:                 const SizedBox(
136:                   width: 5,
137:                 ),
138:                 Expanded(
139:                     flex: 1,
140:                     child: Align(
141:                       alignment: Alignment.centerLeft,
142:                       child: Text(DateParserUtils.timeAgoFormat(model.responseDate)),
143:                     )),
144:               ],
145:             ),
146:             const Divider(
147:               color: AppColor.grey200,
148:             ),
149:             const SizedBox(height: 5,),
150:             Row(
151:               children: [
152:                 CustomImageWidget(
153:                   urlImage: model.vendorLogo,
154:                   width: SizeConfig.widthResponsive(0.20),
155:                   height: SizeConfig.widthResponsive(0.20),
156:                   assetDefaultPath: AssetsPath.user_image,
157:                 ),
158:                 const SizedBox(width: 10,),
159:                 Expanded(child: Column(
160:                   mainAxisSize: MainAxisSize.min,
161:                   children: [
162:                     Row(
163:                       mainAxisSize: MainAxisSize.min,
164:                       children: [
165:                         Text('الشركة : ', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
166:                         const SizedBox(width: 5,),
167:                         Expanded(child: Text(model.companyNameAr, style: txtMedium04,),)
168:                       ],
169:                     ),
170:                     const SizedBox(height: 5,),
171:                     Row(
172:                       mainAxisSize: MainAxisSize.min,
173:                       children: [
174:                         Text('حالة الرد : ', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
175:                         const SizedBox(width: 5,),
176:                         Expanded(child: Text(model.responseStatus ==
177:                             ResponseRequestAvailabilityEnum.available.name
178:                             ? 'متوفر'
179:                             : model.responseStatus ==
180:                             ResponseRequestAvailabilityEnum
181:                                 .available_with_difference.name
182:                             ? 'متوفر مع إختلاف'
183:                             : 'لم يتم الرد', style: txtMedium04,),)
184:                       ],
185:                     ),
186:                     const SizedBox(height: 5,),
187:                     Row(
188:                       mainAxisSize: MainAxisSize.min,
189:                       children: [
190:                         Text('السعر : ', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
191:                         const SizedBox(width: 5,),
192:                         Expanded(child: Row(
193:                           mainAxisSize: MainAxisSize.min,
194:                           children: [
195:                             Text(Utils.numberFormatting(model.priceResponse), style: txtMedium04,),
196:                             const SizedBox(width: 5,),
197:                             Image.asset(AssetsPath.icon_riyal, width: 14, height: 14, color: AppColor.primaryColor)
198:                           ],
199:                         ))
200:                       ],
201:                     ),
202:                   ],
203:                 )),
204:               ],
205:             ),
206: 
207:             if(model.warrantyResponse != null && model.warrantyResponse != '')
208:             Padding(padding: EdgeInsets.only(top: 12),
209:             child: Row(
210:               mainAxisSize: MainAxisSize.min,
211:               children: [
212:                 Text('الضمان : ', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
213:                 const SizedBox(width: 5,),
214:                 Expanded(child: Text(model.warrantyResponse, style: txtMedium04,),)
215:               ],
216:             ),),
217:             if(model.shippingRequestId != null && model.shippingRequestId != 0)
218:             Padding(padding: EdgeInsets.only(top: 12),
219:               child: Row(
220:                 mainAxisSize: MainAxisSize.min,
221:                 children: [
222:                   Text('طلب الشحن : ', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
223:                   const SizedBox(width: 5,),
224:                   Expanded(child: Text('${model.shippingRequestStatus == StatusShippingRequestEnum.Pending.name ? 'قيد المعالجة' : 'تم الشحن'}', style: txtMedium04,),)
225:                 ],
226:               ),),
227:             const SizedBox(height: 10,),
228:             CustomButton(
229:               label: 'تفاصيل الرد',
230:               txtSize: SizeConfig.widthResponsive(0.04),
231:               primaryColor: Colors.transparent,
232:               textColor: AppColor.primaryColor,
233:               borderColor: AppColor.primaryColor,
234:               bgOverlayColor: AppColor.primaryColor.withOpacity(0.08),
235:               onTap: () {
236:                 navigationPush(context, DetailsResponseMyRequestScreen(responseId: model.responseId,));
237:               },
238:             )
239:           ]
240:         ),
241:       ),
242:     );
243:   }
244: }
````

## File: lib/features/user/my_requests/widgets/build_vendor_details_response_widget.dart
````dart
  1: import 'package:car_mediator_mobile/core/styles/styles.dart';
  2: import 'package:car_mediator_mobile/core/utils/constants/assets_path.dart';
  3: import 'package:car_mediator_mobile/core/utils/date_parser_utils.dart';
  4: import 'package:car_mediator_mobile/core/utils/size_config.dart';
  5: import 'package:car_mediator_mobile/widgets/custom_button.dart';
  6: import 'package:flutter/material.dart';
  7: import 'package:provider/provider.dart';
  8: 
  9: import '../../../../core/providers/conversation_provider.dart';
 10: import '../../../../core/utils/constants/colors_constants.dart';
 11: import '../../../../core/utils/launcher_url_utils.dart';
 12: import '../../../../models/response_request_model.dart';
 13: import '../../../../widgets/container_fields_widget.dart';
 14: import '../../../../widgets/images/custom_image.dart';
 15: 
 16: class BuildVendorDetailsResponseWidget extends StatelessWidget {
 17:   const BuildVendorDetailsResponseWidget({super.key, required this.model, required this.responseId});
 18:   final ResponseRequestModel? model;
 19:   final int responseId;
 20: 
 21:   @override
 22:   Widget build(BuildContext context) {
 23:     return ContainerFieldsWidget(title: 'بيانات الشركة', children: [
 24:       Row(
 25:         children: [
 26:           CustomImageWidget(
 27:             urlImage: model?.vendorLogo,
 28:             width: SizeConfig.widthResponsive(0.20),
 29:             height: SizeConfig.widthResponsive(0.20),
 30:             radius: 60,
 31:             assetDefaultPath: AssetsPath.user_image,
 32:           ),
 33:           const SizedBox(
 34:             width: 16,
 35:           ),
 36:           Expanded(
 37:               child: Column(
 38:                 mainAxisSize: MainAxisSize.min,
 39:                 crossAxisAlignment: CrossAxisAlignment.start,
 40:                 mainAxisAlignment: MainAxisAlignment.start,
 41:                 children: [
 42:                   Text(
 43:                     '${model?.companyNameAr ?? ''}',
 44:                     style: txtBold04,
 45:                   ),
 46:                   const SizedBox(
 47:                     height: 10,
 48:                   ),
 49:                   Row(
 50:                     mainAxisSize: MainAxisSize.min,
 51:                     children: [
 52:                       Text('عضو منذ : ', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
 53:                       const SizedBox(width: 5,),
 54:                       Expanded(child: Text(DateParserUtils.getDateFromString(model?.vendorMemberSince ?? ''), style: txtMedium04,),)
 55:                     ],
 56:                   ),
 57:                   const SizedBox(
 58:                     height: 10,
 59:                   ),
 60:                   Row(
 61:                     children: [
 62:                       if(!(model?.isHidePhoneContact == true))
 63:                       Expanded(flex:1, child: CustomButton(
 64:                         label: 'إتصال',
 65:                         onTap: () async {
 66:                           await LauncherUrlUtils.makePhoneCall(model?.phoneContact ?? '');
 67:                         },
 68:                         txtSize: SizeConfig.widthResponsive(0.04),
 69:                         icon: const Icon(Icons.phone,color: Colors.white),
 70:                       ),),
 71:                       if(!(model?.isHidePhoneContact == true))
 72:                       SizedBox(
 73:                         width: 10,
 74:                       ),
 75:                       Expanded(flex:1, child: Consumer<ConversationProvider>(
 76:                         builder: (context, provider, child) {
 77:                           return CustomButton(
 78:                             label: 'دردشة',
 79:                             onTap: (){
 80:                               provider.createConversation(context, body: {
 81:                                 'vendorId': model?.vendorId ?? 0,
 82:                                 'requestId': model?.requestId ?? 0,
 83:                                 'responseId': responseId ?? 0,
 84:                               },
 85:                                 requestId: model?.requestId ?? 0,
 86:                                 responseId: responseId ?? 0,
 87:                                 vendorId: model?.vendorId ?? 0,
 88:                                 receiverName: model?.companyNameAr ?? '',
 89:                                 receiverLogo:  model?.vendorLogo ?? '',
 90:                               );
 91:                             },
 92:                             loading: provider.isLoading,
 93:                             txtSize: SizeConfig.widthResponsive(0.04),
 94:                             primaryColor: Colors.transparent,
 95:                             borderColor: AppColor.primaryColor,
 96:                             textColor: AppColor.primaryColor,
 97:                             bgOverlayColor: AppColor.primaryColor.withOpacity(0.2),
 98:                             icon: const Icon(Icons.chat_outlined,color: AppColor.primaryColor),
 99:                           );
100:                         }
101:                       ),),
102:                     ],
103:                   )
104:                 ],
105:               ))
106:         ],
107:       ),
108:     ]);
109:   }
110: }
````

## File: lib/features/user/my_requests/widgets/my_request_user_card.dart
````dart
  1: import 'package:car_mediator_mobile/core/styles/styles.dart';
  2: import 'package:car_mediator_mobile/core/utils/size_config.dart';
  3: import 'package:car_mediator_mobile/widgets/components.dart';
  4: 
  5: import 'package:car_mediator_mobile/widgets/custom_button.dart';
  6: import 'package:flutter/material.dart';
  7: 
  8: import '../../../../core/utils/constants/colors_constants.dart';
  9: import '../../../../core/utils/date_parser_utils.dart';
 10: import '../../../../core/utils/utils.dart';
 11: import '../../../../models/request_model.dart';
 12: import '../../../../widgets/request_status_widget.dart';
 13: import '../screens/details_my_request_screen.dart';
 14: import '../screens/responses_my_request_screen.dart';
 15: 
 16: 
 17: class MyRequestUserCard extends StatelessWidget {
 18:   const MyRequestUserCard({super.key, required this.model});
 19:   final RequestModel model;
 20: 
 21:   @override
 22:   Widget build(BuildContext context) {
 23:     return Material(
 24:       color: Colors.white,
 25:       borderRadius: BorderRadius.circular(10),
 26:       elevation: 1,
 27:       child: Padding(
 28:         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
 29:         child: Column(
 30:           mainAxisSize: MainAxisSize.min,
 31:           crossAxisAlignment: CrossAxisAlignment.start,
 32:           children: [
 33:             Row(
 34:               children: [
 35:                 Expanded(
 36:                     flex: 1,
 37:                     child: Align(
 38:                       alignment: Alignment.centerRight,
 39:                       child: Text(
 40:                         'رقم الطلب :  ${Utils.numberFormatting(model.requestId)}',
 41:                         style: txtMedium04,
 42:                       ),
 43:                     )),
 44:                 const SizedBox(
 45:                   width: 5,
 46:                 ),
 47:                 Expanded(
 48:                     flex: 1,
 49:                     child: Align(
 50:                       alignment: Alignment.centerLeft,
 51:                       child: RequestStatusWidget(
 52:                         status: model.requestStatus,
 53:                       ),
 54:                     )),
 55:               ],
 56:             ),
 57:             const Divider(
 58:               color: AppColor.grey200,
 59:             ),
 60:             _BuildRequestCardItem(
 61:               icon: Icons.category,
 62:               label: 'القسم :',
 63:               value: model.catNameAr,
 64:             ),
 65:             const SizedBox(
 66:               height: 5,
 67:             ),
 68:             _BuildRequestCardItem(
 69:               icon: Icons.location_on,
 70:               label: 'مدينة الطلب :',
 71:               value: model.cityCustomerNameAr,
 72:             ),
 73:             const SizedBox(
 74:               height: 5,
 75:             ),
 76:             _BuildRequestCardItem(
 77:               icon: Icons.date_range,
 78:               label: 'تاريخ الطلب :',
 79:               value:DateParserUtils.timeAgoFormat(model.requestDate),
 80:             ),
 81:             const SizedBox(
 82:               height: 5,
 83:             ),
 84:             _BuildRequestCardItem(
 85:               icon: Icons.reply,
 86:               label: 'عدد الردود :',
 87:               value: model.countResponse.toString(),
 88:             ),
 89: 
 90:             const SizedBox(
 91:               height: 8,
 92:             ),
 93:             Row(
 94:               children: [
 95:                 Expanded(flex:1, child: CustomButton(
 96:                   label: 'إستعراض الردود',
 97:                   txtSize: SizeConfig.widthResponsive(0.04),
 98:                   onTap: () {
 99:                     navigationPush(context, ResponsesMyRequestScreen(requestId: model.requestId,));
100:                   },
101:                 )),
102:                 const SizedBox(width: 10,),
103:                 Expanded(flex:1, child: CustomButton(
104:                   label: 'تفاصيل الطلب',
105:                   txtSize: SizeConfig.widthResponsive(0.04),
106:                   primaryColor: Colors.transparent,
107:                   textColor: AppColor.primaryColor,
108:                   borderColor: AppColor.primaryColor,
109:                   bgOverlayColor: AppColor.primaryColor.withOpacity(0.08),
110:                   onTap: () {
111:                     navigationPush(context, DetailsMyRequestScreen(requestId: model.requestId,));
112:                   },
113:                 )),
114:               ],
115:             ),
116:             const SizedBox(height: 5,),
117:           ],
118:         ),
119:       ),
120:     );
121:   }
122: }
123: 
124: class _BuildRequestCardItem extends StatelessWidget {
125:   const _BuildRequestCardItem(
126:       {super.key,
127:         required this.icon,
128:         required this.label,
129:         required this.value,
130:         this.textColor = AppColor.primaryColor});
131:   final IconData icon;
132:   final String label;
133:   final String value;
134:   final Color textColor;
135: 
136:   @override
137:   Widget build(BuildContext context) {
138:     return Row(
139:       mainAxisSize: MainAxisSize.min,
140:       children: [
141:         Icon(
142:           icon,
143:           color: AppColor.grey350,
144:           size: 18,
145:         ),
146:         const SizedBox(
147:           width: 5,
148:         ),
149:         Text(
150:           label,
151:           style: TextStyle(
152:               fontSize: SizeConfig.widthResponsive(0.04),
153:               color: AppColor.greyColor,
154:               fontWeight: FontWeight.w500),
155:         ),
156:         const SizedBox(
157:           width: 5,
158:         ),
159:         Text(
160:           value,
161:           style: TextStyle(
162:             color: textColor,fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w500,
163:           ),
164:         ),
165:       ],
166:     );
167:   }
168: }
````

## File: lib/features/user/my_requests/widgets/status_my_request_widget.dart
````dart
  1: import 'package:car_mediator_mobile/core/utils/dialogUtils.dart';
  2: import 'package:car_mediator_mobile/widgets/container_fields_widget.dart';
  3: import 'package:car_mediator_mobile/widgets/custom_loading.dart';
  4: import 'package:flutter/material.dart';
  5: import 'package:provider/provider.dart';
  6: 
  7: import '../../../../core/providers/users/my_request_user_provider.dart';
  8: import '../../../../core/utils/constants/enumeration.dart';
  9: 
 10: class StatusMyRequestWidget extends StatelessWidget {
 11:   const StatusMyRequestWidget({super.key, required this.status});
 12:   final String status;
 13: 
 14:   @override
 15:   Widget build(BuildContext context) {
 16:     return Consumer<MyRequestUserProvider>(
 17:       builder: (context, provider, child) {
 18: 
 19:         return ContainerFieldsWidget(title: 'حالة الطلب', children: provider.isLoadingUpdate ? [const CustomLoading()] : RequestCustomerStatusEnum.values.map((status) {
 20:           final isSelected = provider.statusMyRequestSelected == status.name;
 21: 
 22:           return GestureDetector(
 23:             onTap: () {
 24:               DialogUtils().showConfirmDialog(context, message: 'تأكيد حالة الطلب', confirm: (){
 25:                provider.updateResponseRequest(body: {
 26:                  'id': provider.detailsMyRequestModel?.requestId ?? 0,
 27:                  'status': status.name,
 28:                }, status: status.name);
 29:               });
 30:             },
 31:             child: Container(
 32:               margin: const EdgeInsets.symmetric(vertical: 10),
 33:               padding: const EdgeInsets.all(4),
 34:               decoration: BoxDecoration(
 35:                 borderRadius: BorderRadius.circular(12),
 36:                 border: Border.all(
 37:                   color: isSelected ? status.color : Colors.grey.shade300,
 38:                   width: isSelected ? 2 : 1,
 39:                 ),
 40:                 color: isSelected ? status.color.withOpacity(0.1) : Colors.white,
 41:               ),
 42:               child: Row(
 43:                 children: [
 44:                   Radio<String>(
 45:                     value: status.name,
 46:                     groupValue: provider.statusMyRequestSelected,
 47:                     onChanged: (value) {
 48:                       DialogUtils().showConfirmDialog(context, message: 'تأكيد حالة الطلب', confirm: (){
 49:                         provider.updateResponseRequest(body: {
 50:                           'id': provider.detailsMyRequestModel?.requestId ?? 0,
 51:                           'status': status.name,
 52:                         }, status: status.name);
 53:                       });
 54:                     },
 55:                     activeColor: status.color,
 56:                   ),
 57:                   Icon(status.icon, color: status.color),
 58:                   const SizedBox(width: 10),
 59:                   Text(
 60:                     status.label,
 61:                     style: TextStyle(
 62:                       fontSize: 16,
 63:                       color: isSelected ? status.color : Colors.black87,
 64:                       fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
 65:                     ),
 66:                   ),
 67:                 ],
 68:               ),
 69:             ),
 70:           );
 71:         }).toList());
 72:       },
 73:     );
 74:   }
 75: }
 76: 
 77: 
 78: // class StatusRadioButtons extends StatefulWidget {
 79: //   final RequestCustomerStatusEnum? initialValue;
 80: //   final Function(RequestCustomerStatusEnum)? onChanged;
 81: //
 82: //   const StatusRadioButtons({super.key, this.initialValue, this.onChanged});
 83: //
 84: //   @override
 85: //   _StatusRadioButtonsState createState() => _StatusRadioButtonsState();
 86: // }
 87: //
 88: // class _StatusRadioButtonsState extends State<StatusRadioButtons> {
 89: //   RequestCustomerStatusEnum? selected;
 90: //
 91: //   @override
 92: //   void initState() {
 93: //     super.initState();
 94: //     selected = widget.initialValue ?? RequestCustomerStatusEnum.open;
 95: //   }
 96: //
 97: //   @override
 98: //   Widget build(BuildContext context) {
 99: //     return Column(
100: //       children: RequestCustomerStatusEnum.values.map((status) {
101: //         final isSelected = selected == status;
102: //
103: //         return GestureDetector(
104: //           onTap: () {
105: //             setState(() => selected = status);
106: //             widget.onChanged?.call(status);
107: //           },
108: //           child: Container(
109: //             margin: const EdgeInsets.symmetric(vertical: 6),
110: //             padding: const EdgeInsets.all(12),
111: //             decoration: BoxDecoration(
112: //               borderRadius: BorderRadius.circular(12),
113: //               border: Border.all(
114: //                 color: isSelected ? status.color : Colors.grey.shade300,
115: //                 width: isSelected ? 2 : 1,
116: //               ),
117: //               color: isSelected ? status.color.withOpacity(0.1) : Colors.white,
118: //             ),
119: //             child: Row(
120: //               children: [
121: //                 Radio<RequestCustomerStatusEnum>(
122: //                   value: status,
123: //                   groupValue: selected,
124: //                   onChanged: (value) {
125: //                     setState(() => selected = value);
126: //                     widget.onChanged?.call(value!);
127: //                   },
128: //                   activeColor: status.color,
129: //                 ),
130: //                 Icon(status.icon, color: status.color),
131: //                 const SizedBox(width: 10),
132: //                 Text(
133: //                   status.label,
134: //                   style: TextStyle(
135: //                     fontSize: 16,
136: //                     color: isSelected ? status.color : Colors.black87,
137: //                     fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
138: //                   ),
139: //                 ),
140: //               ],
141: //             ),
142: //           ),
143: //         );
144: //       }).toList(),
145: //     );
146: //   }
147: // }
````

## File: lib/features/user/orders/screens/create_order/create_order_screen.dart
````dart
 1: import 'package:car_mediator_mobile/features/user/orders/screens/create_order/send_order_screen.dart';
 2: import 'package:car_mediator_mobile/models/custom_field_model.dart';
 3: import 'package:car_mediator_mobile/widgets/components.dart';
 4: import 'package:flutter/material.dart';
 5: import 'package:provider/provider.dart';
 6: 
 7: import '../../../../../core/providers/orders/create_order_provider.dart';
 8: import '../../../../../core/utils/constants/constants.dart';
 9: import '../../widgets/app_bar_create_order_widget.dart';
10: import '../../widgets/build_bottom_app_bar_create_order.dart';
11: import '../../widgets/form_create_order.dart';
12: 
13: class CreateOrderScreen extends StatefulWidget {
14:   const CreateOrderScreen({super.key, required this.customFieldsList});
15:   final List<CustomFieldModel> customFieldsList;
16: 
17:   @override
18:   State<CreateOrderScreen> createState() => _CreateOrderScreenState();
19: }
20: 
21: class _CreateOrderScreenState extends State<CreateOrderScreen> {
22:   final _formKey = GlobalKey<FormState>();
23:   final descriptionController = TextEditingController();
24:   final myCityController = TextEditingController();
25: 
26:   @override
27:   void dispose() {
28:     super.dispose();
29:     descriptionController.dispose();
30:     myCityController.dispose();
31:   }
32: 
33:   @override
34:   Widget build(BuildContext context) {
35:     final _createOrderProvider = context.read<CreateOrderProvider>();
36: 
37:     return Scaffold(
38:         appBar: const AppBarCreateOrderWidget(),
39:         body: Form(
40:             key: _formKey,
41:             child: ListView(
42:               shrinkWrap: true,
43:               physics: const ScrollPhysics(),
44:               padding: const EdgeInsets.all(paddingConst),
45:               children: [
46:                 FormCreateOrderWidget(
47:                   customFieldsList: widget.customFieldsList,
48:                   descriptionController: descriptionController,
49:                   myCityController: myCityController,
50:                 ),
51:               ],
52:             )),
53:         bottomNavigationBar: BuildBottomAppBarCreateOrder(onTap: () {
54: 
55:           if (_formKey.currentState!.validate()) {
56:             _createOrderProvider.descriptionRequest = descriptionController.text.toString();
57:             navigationPush(context, SendOrderScreen());
58:           }
59:         }));
60:   }
61: }
````

## File: lib/features/user/orders/screens/create_order/send_order_screen.dart
````dart
  1: import 'package:car_mediator_mobile/core/utils/connection_utils.dart';
  2: import 'package:dropdown_search/dropdown_search.dart';
  3: import 'package:flutter/cupertino.dart';
  4: import 'package:flutter/material.dart';
  5: import 'package:provider/provider.dart';
  6: 
  7: import '../../../../../core/data_sources/local/secure_storage.dart';
  8: import '../../../../../core/helpers/toast_helper.dart';
  9: import '../../../../../core/localization/app_language_provider.dart';
 10: import '../../../../../core/providers/auth_provider.dart';
 11: import '../../../../../core/providers/cache_provider.dart';
 12: import '../../../../../core/providers/orders/create_order_provider.dart';
 13: import '../../../../../core/styles/styles.dart';
 14: import '../../../../../core/utils/constants/colors_constants.dart';
 15: import '../../../../../core/utils/constants/constants.dart';
 16: import '../../../../../core/utils/dialogUtils.dart';
 17: import '../../../../../core/utils/form_validator.dart';
 18: import '../../../../../core/utils/size_config.dart';
 19: import '../../../../../models/city_model.dart';
 20: import '../../../../../widgets/card_container_widget.dart';
 21: import '../../../../../widgets/components.dart';
 22: import '../../../../../widgets/custom_button.dart';
 23: import '../../../../../widgets/dropdown_search/city_dropdown_builder_multiselection_widget.dart';
 24: import '../../../../../widgets/custom_loading.dart';
 25: import '../../../../../widgets/section_label_widget.dart';
 26: import '../../widgets/app_bar_create_order_widget.dart';
 27: import '../../widgets/build_bottom_app_bar_send_order.dart';
 28: import '../../widgets/details_order_widget.dart';
 29: import '../../widgets/send_range_card.dart';
 30: 
 31: class SendOrderScreen extends StatefulWidget {
 32:   const SendOrderScreen({super.key});
 33: 
 34:   @override
 35:   State<SendOrderScreen> createState() => _SendOrderScreenState();
 36: }
 37: 
 38: class _SendOrderScreenState extends State<SendOrderScreen> {
 39: 
 40:   @override
 41:   void initState() {
 42:     super.initState();
 43:   }
 44: 
 45:   @override
 46:   Widget build(BuildContext context) {
 47:     return Scaffold(
 48:         appBar: const AppBarCreateOrderWidget(),
 49:         body: ListView(
 50:           shrinkWrap: true,
 51:           physics: const ScrollPhysics(),
 52:           padding: const EdgeInsets.all(paddingConst),
 53:           children:  [
 54:             SectionLabelWidget(
 55:               label: 'إرسال الطلب ومشاركته مع الشركات',
 56:               fontSize: 0.04,
 57:             ),
 58:             SizedBox(
 59:               height: 10,
 60:             ),
 61:             SendRangeCard(),
 62:             SizedBox(
 63:               height: 20,
 64:             ),
 65:             DetailsOrderWidget(),
 66:             SizedBox(
 67:               height: 20,
 68:             ),
 69:             Padding(
 70:               padding:  EdgeInsets.symmetric(
 71:                 horizontal: 0,
 72:               ),
 73:               child: CustomButton(
 74:                 label: 'إرسال الطلب',
 75:                 txtSize: SizeConfig.widthResponsive(0.04),
 76:                 onTap: () async {
 77:                   final _prov = context.read<CreateOrderProvider>();
 78: 
 79:                   if(!await SecureStorage.isLoggedIn()){
 80:                     DialogUtils().showLoginDialog(context);
 81:                     return;
 82:                   }
 83: 
 84:                   if (!await ConnectionUtils.hasInternetConnection()) {
 85:                     DialogUtils().showNoInternetDialog(context);
 86:                     return;
 87:                   }
 88:                   if(_prov.selectedCitiesRequestList == null || _prov.selectedCitiesRequestList!.isEmpty){
 89:                     ToastHelper.showInfo('يجب اختيار مدينة واحدة على الأقل لتحديد نطاق الإرسال.');
 90:                     return;
 91:                   }
 92:                   customBottomSheet(context,
 93:                       child: const BuildRequestOrderBottomSheet(),
 94:                       isDismissible: false);
 95:                 },
 96:               ),
 97:             ),
 98:           ],
 99:         ),
100:      );
101:   }
102: }
103: 
104: class BuildRequestOrderBottomSheet extends StatefulWidget {
105:   const BuildRequestOrderBottomSheet({super.key});
106: 
107:   @override
108:   State<BuildRequestOrderBottomSheet> createState() =>
109:       _BuildRequestOrderBottomSheetState();
110: }
111: 
112: class _BuildRequestOrderBottomSheetState
113:     extends State<BuildRequestOrderBottomSheet> {
114:   @override
115:   void initState() {
116:     super.initState();
117:     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
118:       Provider.of<CreateOrderProvider>(context, listen: false)
119:           .checkEligibleVendors();
120:     });
121:   }
122: 
123:   @override
124:   Widget build(BuildContext context) {
125:     final _prov = Provider.of<CreateOrderProvider>(context);
126:     return Container(
127:       width: SizeConfig.width,
128:       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
129:       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
130:       decoration: BoxDecoration(
131:         color: Colors.white,
132:         borderRadius: BorderRadius.circular(20)
133:       ),
134:       child: Column(
135:         mainAxisSize: MainAxisSize.min,
136:         children: [
137:           Align(
138:             alignment: Alignment.centerLeft,
139:             child: IconButton(
140:                 onPressed: () => Navigator.pop(context),
141:                 icon: const Icon(
142:                   Icons.close,
143:                   color: AppColor.primaryColor,
144:                 )),
145:           ),
146:           SizedBox(
147:             height: SizeConfig.heightResponsive(0.02),
148:           ),
149:           if (_prov.isLoading)
150:             Column(
151:               mainAxisSize: MainAxisSize.min,
152:               children: [
153:                 const CustomLoading(),
154:                 SizedBox(
155:                   height: SizeConfig.heightResponsive(0.02),
156:                 ),
157:                 Text(
158:                   'جارٍ البحث عن عروض ...',
159:                   style: txtMedium04,
160:                 ),
161:                 SizedBox(
162:                   height: SizeConfig.heightResponsive(0.04),
163:                 ),
164:               ],
165:             ),
166:           if (_prov.checkEligibleVendorsResult?.success ?? false)
167:             Column(
168:               mainAxisSize: MainAxisSize.min,
169:               children: [
170:                 Text(
171:                   '${_prov.messageCheckEligibleVendorsResult}',
172:                   textAlign: TextAlign.center,
173:                   style: txtMedium04,
174:                 ),
175:                 SizedBox(
176:                   height: SizeConfig.heightResponsive(0.04),
177:                 ),
178:                 CustomButton(
179:                   label: 'تأكيد الطلب',
180:                   txtSize: SizeConfig.widthResponsive(0.04),
181:                   onTap: () async {
182:                     if (!await ConnectionUtils.hasInternetConnection()) {
183:                     DialogUtils().showNoInternetDialog(context);
184:                     return;
185:                     }
186:                     _prov.confirmOrderRequest(context);
187:                   },
188:                 ),
189:                 SizedBox(
190:                   height: SizeConfig.heightResponsive(0.04),
191:                 ),
192:               ],
193:             ),
194:           if ((_prov.checkEligibleVendorsResult?.success ?? false) == false &&
195:               _prov.isLoading == false)
196:             Column(
197:               mainAxisSize: MainAxisSize.min,
198:               children: [
199:                 Text(
200:                   '${_prov.messageCheckEligibleVendorsResult}',
201:                   style: txtMedium04,
202:                 ),
203:                 SizedBox(
204:                   height: SizeConfig.heightResponsive(0.04),
205:                 ),
206:                 CustomButton(
207:                   label: 'إعادة الإرسال',
208:                   txtSize: SizeConfig.widthResponsive(0.04),
209:                   onTap: () async {
210:                    // Provider.of<AuthProvider>(context, listen: false).logout(context);
211:                      _prov.checkEligibleVendors();
212:                   },
213:                 ),
214:                 SizedBox(
215:                   height: SizeConfig.heightResponsive(0.04),
216:                 ),
217:               ],
218:             ),
219:         ],
220:       ),
221:     );
222:   }
223: }
````

## File: lib/features/user/orders/widgets/app_bar_create_order_widget.dart
````dart
 1: import 'package:car_mediator_mobile/core/styles/styles.dart';
 2: import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
 3: import 'package:car_mediator_mobile/widgets/images/custom_image.dart';
 4: import 'package:flutter/material.dart';
 5: import 'package:provider/provider.dart';
 6: 
 7: import '../../../../core/data_sources/remote/api_path.dart';
 8: import '../../../../core/localization/app_language_provider.dart';
 9: import '../../../../core/providers/orders/create_order_provider.dart';
10: import '../../../../core/utils/constants/colors_constants.dart';
11: import '../../../../core/utils/size_config.dart';
12: 
13: class AppBarCreateOrderWidget extends StatelessWidget implements PreferredSizeWidget {
14:   const AppBarCreateOrderWidget({super.key});
15: 
16:   @override
17:   Widget build(BuildContext context) {
18:     return AppBar(
19:         backgroundColor: Colors.white,
20:         title: Consumer<CreateOrderProvider>(
21:         builder: (context, provider, child) {
22:           final categorySelectedModel = provider.categorySelectedModel;
23:           return ListTile(
24:             title: Text('القسم', style: txtLightRegular035,),
25:             subtitle: Text(
26:               categorySelectedModel != null ? categorySelectedModel.getName(context.read<AppLanguageProvider>().appLocal.languageCode) : '',
27:               style: txtSemiBold033,
28:             ),
29:             leading: CustomImageWidget(
30:               urlImage: ApiPath.categoriesIcon + (categorySelectedModel?.catIconPath ?? '') ,
31:               bgColor: AppColor.secondaryColor,
32:               color: AppColor.primaryColor,
33:               height: SizeConfig.widthResponsive(0.08),
34:               width: SizeConfig.widthResponsive(0.08),),
35:           );
36:         }),
37:         elevation: 0,
38:         titleSpacing: - SizeConfig.widthResponsive(0.04),
39:         leading: ArrowBackWidget(myContext: context),
40:         );
41:   }
42: 
43:   @override
44:   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
45: }
````

## File: lib/features/user/orders/widgets/build_bottom_app_bar_create_order.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../../../../core/utils/size_config.dart';
 4: import '../../../../widgets/custom_button.dart';
 5: 
 6: class BuildBottomAppBarCreateOrder extends StatelessWidget {
 7:   const BuildBottomAppBarCreateOrder({super.key, this.onTap,});
 8:   final void Function()? onTap;
 9: 
10:   @override
11:   Widget build(BuildContext context) {
12:     return BottomAppBar(
13:       child: Padding(
14:         padding: const EdgeInsets.symmetric(
15:           horizontal: 0,
16:         ),
17:         child: CustomButton(
18:           label: 'التالي',
19:           txtSize: SizeConfig.widthResponsive(0.04),
20:           onTap: onTap,
21:         ),
22:       ),
23:     );
24:   }
25: }
````

## File: lib/features/user/orders/widgets/build_bottom_app_bar_send_order.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../../../../core/utils/size_config.dart';
 4: import '../../../../widgets/custom_button.dart';
 5: 
 6: class BuildBottomAppBarSendOrder extends StatelessWidget {
 7:   const BuildBottomAppBarSendOrder({super.key, this.onTap});
 8:   final void Function()? onTap;
 9: 
10:   @override
11:   Widget build(BuildContext context) {
12:     return BottomAppBar(
13:       child: Padding(
14:         padding: const EdgeInsets.symmetric(
15:           horizontal: 0,
16:         ),
17:         child: CustomButton(
18:           label: 'إرسال الطلب',
19:           txtSize: SizeConfig.widthResponsive(0.04),
20:           onTap: onTap,
21:         ),
22:       ),
23:     );
24:   }
25: }
````

## File: lib/features/user/orders/widgets/details_order_widget.dart
````dart
 1: import 'dart:io';
 2: 
 3: import 'package:car_mediator_mobile/widgets/images/custom_image.dart';
 4: import 'package:car_mediator_mobile/widgets/item_table_widget.dart';
 5: import 'package:flutter/material.dart';
 6: import 'package:provider/provider.dart';
 7: 
 8: import '../../../../core/localization/app_language_provider.dart';
 9: import '../../../../core/providers/cache_provider.dart';
10: import '../../../../core/providers/dynamic_form_provider.dart';
11: import '../../../../core/providers/orders/create_order_provider.dart';
12: import '../../../../core/styles/styles.dart';
13: import '../../../../core/utils/size_config.dart';
14: import '../../../../widgets/card_container_widget.dart';
15: 
16: class DetailsOrderWidget extends StatelessWidget {
17:   const DetailsOrderWidget({super.key});
18: 
19:   @override
20:   Widget build(BuildContext context) {
21:     final _isArabic = context.read<AppLanguageProvider>().isArabic;
22:     final _cacheProvider = context.read<CacheProvider>();
23:     final _createOrderProvider = context.read<CreateOrderProvider>();
24:     final _dynamicFormProvider = context.read<DynamicFormProvider>();
25: 
26:     return CardContainerWidget(
27:       children: [
28:         const SizedBox(
29:           height: 10,
30:         ),
31:         Text(
32:           'تفاصيل الطلب',
33:           style: txtBold04,
34:         ),
35:         const SizedBox(
36:           height: 20,
37:         ),
38:         ItemTableWidget(
39:           keyString: 'وصف الطلب',
40:           value: _createOrderProvider.descriptionRequest ?? '',
41:         ),
42:         if (_createOrderProvider.isCategoryHasBrand)
43:           ItemTableWidget(
44:             keyString: 'الموديل',
45:             value: _isArabic
46:                 ? _createOrderProvider.brandSelectedModel?.brandCarNameAr
47:                 : _createOrderProvider.brandSelectedModel?.brandCarNameEn,
48:           ),
49:         ItemTableWidget(
50:           keyString: 'مدينتك',
51:           value: _isArabic
52:               ? _createOrderProvider.myCitySelectedModel?.cityNameAr
53:               : _createOrderProvider.myCitySelectedModel?.cityNameEn,
54:         ),
55:         Column(
56:           mainAxisSize: MainAxisSize.min,
57:           children: _dynamicFormProvider.controllersMap.entries.map((entry) {
58:             return ItemTableWidget(
59:               keyString: _dynamicFormProvider.getLabelName(context, entry.key),
60:               value: _dynamicFormProvider.getValue(entry.key),
61:             );
62:           }).toList(),
63:         ),
64:         Column(
65:           mainAxisSize: MainAxisSize.min,
66:           crossAxisAlignment: CrossAxisAlignment.center,
67:           mainAxisAlignment: MainAxisAlignment.center,
68:           children: _dynamicFormProvider.valuesMap.entries.map((entry) {
69:             return (_dynamicFormProvider.isFileByFieldName(context, entry.key))
70:                 ? Align(
71:               alignment: Alignment.center,
72:               child: Padding(
73:                 padding: const EdgeInsets.only(top: 10),
74:                 child: CustomImageWidget(
75:                   fileImage: File(entry.value),
76:                   height: SizeConfig.heightResponsive(0.20),
77:                   width: SizeConfig.widthResponsive(0.50),
78:                 ),
79:               ),
80:             )
81:                 : ItemTableWidget(
82:                     keyString:
83:                         _dynamicFormProvider.getLabelName(context, entry.key),
84:                     value: entry.value,
85:                   );
86:           }).toList(),
87:         ),
88:       ],
89:     );
90:   }
91: }
````

## File: lib/features/user/orders/widgets/form_create_order.dart
````dart
  1: import 'dart:io';
  2: 
  3: import 'package:car_mediator_mobile/core/localization/app_language_provider.dart';
  4: import 'package:car_mediator_mobile/models/city_model.dart';
  5: import 'package:dropdown_search/dropdown_search.dart';
  6: import 'package:flutter/material.dart';
  7: import 'package:provider/provider.dart';
  8: 
  9: import '../../../../core/providers/cache_provider.dart';
 10: import '../../../../core/providers/dynamic_form_provider.dart';
 11: import '../../../../core/providers/orders/create_order_provider.dart';
 12: import '../../../../core/utils/constants/enumeration.dart';
 13: import '../../../../core/utils/form_validator.dart';
 14: import '../../../../models/brand_car_model.dart';
 15: import '../../../../models/custom_field_model.dart';
 16: import '../../../../widgets/components.dart';
 17: import '../../../../widgets/container_fields_widget.dart';
 18: import '../../../../widgets/custom_container_listtile_widget.dart';
 19: import '../../../../widgets/custom_fields/build_dynamic_fields_widget.dart';
 20: import '../../../../widgets/custom_textfield.dart';
 21: 
 22: class FormCreateOrderWidget extends StatelessWidget {
 23:   const FormCreateOrderWidget(
 24:       {super.key,
 25:       required this.customFieldsList,
 26:       required this.descriptionController,
 27:       required this.myCityController});
 28:   final List<CustomFieldModel> customFieldsList;
 29:   final TextEditingController descriptionController;
 30:   final TextEditingController myCityController;
 31: 
 32:   @override
 33:   Widget build(BuildContext context) {
 34:     final _isArabic = context.read<AppLanguageProvider>().isArabic;
 35:     final _createOrderProvider = context.read<CreateOrderProvider>();
 36:     final _cacheProvider = context.read<CacheProvider>();
 37: 
 38:     return ListView(
 39:       shrinkWrap: true,
 40:       physics: const ScrollPhysics(),
 41:       children: [
 42:         if (_createOrderProvider.isCategoryHasBrand)
 43:           ContainerFieldsWidget(
 44:             title: 'الموديل',
 45:             children: [
 46:               DropdownSearch<BrandCarModel>(
 47:                 dropdownDecoratorProps: customDropdownDecoratorProps(
 48:                     label: 'الموديل', hint: 'إختر الموديل'),
 49:                 popupProps: popupPropsBottomSheet<BrandCarModel>(
 50:                   titleBottomSheet: 'الموديل',
 51:                   itemBuilder: (BuildContext context, BrandCarModel item,
 52:                       bool isSelected) {
 53:                     return CustomContainerListTileWidget(
 54:                       title:
 55:                           _isArabic ? item.brandCarNameAr : item.brandCarNameEn,
 56:                     );
 57:                   },
 58:                 ),
 59:                 items: _cacheProvider.brandsCarsList,
 60:                 selectedItem: _createOrderProvider.brandSelectedModel,
 61:                 itemAsString: (BrandCarModel? u) =>
 62:                     (_isArabic ? u?.brandCarNameAr : u?.brandCarNameEn) ?? '',
 63:                 validator: FormValidatorUtils.objectValidator,
 64:                 onChanged: (BrandCarModel? selection) =>
 65:                     _createOrderProvider.selectedBrand(selection),
 66:               ),
 67:             ],
 68:           ),
 69:         _buildFieldsByType(
 70:           customFieldsList: customFieldsList,
 71:           isArabic: _isArabic,
 72:           showFileFields: false,
 73:         ),
 74:         const SizedBox(
 75:           height: 16,
 76:         ),
 77:         ContainerFieldsWidget(
 78:           title: 'تفاصيل الطلب',
 79:           children: [
 80:             CustomTextField(
 81:               label: 'التفاصيل',
 82:               hint: 'إكتب وصف وتفاصيل الطلب...',
 83:               maxLines: 8,
 84:               controller: descriptionController,
 85:               validator: (value) => FormValidatorUtils.textValidator(value,
 86:                   isRequired: true, minLength: 15, maxLength: 4000),
 87:               maxLength: 4000,
 88:             ),
 89:           ],
 90:         ),
 91:         const SizedBox(
 92:           height: 16,
 93:         ),
 94:         ContainerFieldsWidget(
 95:           title: 'مدينتك',
 96:           children: [
 97:             DropdownSearch<CityModel>(
 98:               dropdownDecoratorProps: customDropdownDecoratorProps(
 99:                   label: 'مدينتك', hint: 'إختر مدينتك'),
100:               popupProps: popupPropsBottomSheet<CityModel>(
101:                 titleBottomSheet: 'مدينتك',
102:                 itemBuilder: (BuildContext context, CityModel item,
103:                     bool isSelected) {
104:                   return CustomContainerListTileWidget(
105:                     title:
106:                     _isArabic ? item.cityNameAr : item.cityNameEn,
107:                   );
108:                 },
109:               ),
110:               items: _cacheProvider.citiesList,
111:               selectedItem: _createOrderProvider.myCitySelectedModel,
112:               itemAsString: (CityModel? u) =>
113:               (_isArabic ? u?.cityNameAr : u?.cityNameEn) ?? '',
114:               validator: FormValidatorUtils.objectValidator,
115:               onChanged: (CityModel? selection) =>
116:                   _createOrderProvider.selectedMyCity(selection),
117:             ),
118:             const SizedBox(height: 16,),
119:             Align(
120:               alignment: Alignment.centerRight,
121:               child: Text(
122:                 'تحديد مدينتك لتقديم أسعار شحن دقيقة',
123:                 style: TextStyle(
124:                   fontSize: 14,
125:                   color: Colors.grey[700],
126:                   height: 1.5,
127:                 ),
128:               ),
129:             )
130:           ],
131:         ),
132:         _buildFieldsByType(
133:           customFieldsList: customFieldsList,
134:           isArabic: _isArabic,
135:           showFileFields: true,
136:         ),
137:       ],
138:     );
139:   }
140: }
141: 
142: class _buildFieldsByType extends StatelessWidget {
143:   const _buildFieldsByType(
144:       {super.key,
145:       required this.isArabic,
146:       required this.showFileFields,
147:       required this.customFieldsList});
148:   final List<CustomFieldModel> customFieldsList;
149:   final bool isArabic;
150:   final bool showFileFields;
151: 
152:   @override
153:   Widget build(BuildContext context) {
154:     return Consumer<DynamicFormProvider>(
155:       builder: (context, dynamicFormProv, child) {
156:         final filteredFields = customFieldsList.where((field) {
157:           final isFileField = field.fieldType == CustomFieldTypeEnum.file.name;
158:           return showFileFields ? isFileField : !isFileField;
159:         }).toList();
160: 
161:         if (filteredFields.isEmpty) return const SizedBox.shrink();
162: 
163:         return ListView.builder(
164:           shrinkWrap: true,
165:           physics: const ScrollPhysics(),
166:           itemCount: filteredFields.length,
167:           itemBuilder: (context, index) {
168:             final field = filteredFields[index];
169:             final label = isArabic ? field.labelAr : field.labelEn;
170: 
171:             return Padding(
172:               padding: const EdgeInsets.only(top: 16),
173:               child: ContainerFieldsWidget(
174:                 title: label,
175:                 children: [
176:                   BuildDynamicFieldsWidget(
177:                     label: label,
178:                     fieldModel: field,
179:                     provider: dynamicFormProv,
180:                   ),
181:                 ],
182:               ),
183:             );
184:           },
185:         );
186:       },
187:     );
188:   }
189: }
````

## File: lib/features/user/orders/widgets/send_range_card.dart
````dart
  1: import 'package:dropdown_search/dropdown_search.dart';
  2: import 'package:flutter/material.dart';
  3: import 'package:provider/provider.dart';
  4: 
  5: import '../../../../core/localization/app_language_provider.dart';
  6: import '../../../../core/providers/cache_provider.dart';
  7: import '../../../../core/providers/orders/create_order_provider.dart';
  8: import '../../../../core/styles/styles.dart';
  9: import '../../../../core/utils/constants/colors_constants.dart';
 10: import '../../../../core/utils/form_validator.dart';
 11: import '../../../../core/utils/size_config.dart';
 12: import '../../../../models/city_model.dart';
 13: import '../../../../widgets/card_container_widget.dart';
 14: import '../../../../widgets/components.dart';
 15: import '../../../../widgets/dropdown_search/city_dropdown_builder_multiselection_widget.dart';
 16: 
 17: class SendRangeCard extends StatelessWidget {
 18:   const SendRangeCard({super.key});
 19: 
 20:   void _showCitiesBottomSheet(BuildContext context, CacheProvider cacheProvider, CreateOrderProvider createOrderProvider) {
 21:     final allCities = cacheProvider.citiesList;
 22:     final List<CityModel> tempSelected = List<CityModel>.from(createOrderProvider.selectedCitiesRequestList ?? []);
 23:     final _isArabic = context.read<AppLanguageProvider>().isArabic;
 24: 
 25:     showModalBottomSheet(
 26:       context: context,
 27:       isScrollControlled: true,
 28:       backgroundColor: Colors.transparent,
 29:       builder: (context) {
 30:         return StatefulBuilder(
 31:           builder: (context, setState) {
 32:             final bool isAllSelected = tempSelected.length == allCities.length && allCities.isNotEmpty;
 33: 
 34:             return Container(
 35:               height: MediaQuery.of(context).size.height * 0.70,
 36:               decoration: const BoxDecoration(
 37:                 color: Colors.white,
 38:                 borderRadius: BorderRadius.only(
 39:                   topLeft: Radius.circular(30.0),
 40:                   topRight: Radius.circular(30.0),
 41:                 ),
 42:               ),
 43:               child: Column(
 44:                 children: [
 45:                   Container(
 46:                     padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 8),
 47:                     child: Column(
 48:                       children: [
 49:                         Container(
 50:                           width: SizeConfig.widthResponsive(0.40),
 51:                           height: 3,
 52:                           decoration: BoxDecoration(
 53:                             color: AppColor.primaryColor,
 54:                             borderRadius: BorderRadius.circular(8),
 55:                           ),
 56:                         ),
 57:                         const SizedBox(height: 12),
 58:                         Row(
 59:                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
 60:                           children: [
 61:                             InkWell(
 62:                               onTap: () {
 63:                                 setState(() {
 64:                                   if (isAllSelected) {
 65:                                     tempSelected.clear();
 66:                                   } else {
 67:                                     tempSelected.clear();
 68:                                     tempSelected.addAll(allCities);
 69:                                   }
 70:                                 });
 71:                               },
 72:                               child: Row(
 73:                                 children: [
 74:                                   Checkbox(
 75:                                     value: isAllSelected,
 76:                                     activeColor: AppColor.primaryColor,
 77:                                     shape: RoundedRectangleBorder(
 78:                                       borderRadius: BorderRadius.circular(4),
 79:                                     ),
 80:                                     onChanged: (bool? checked) {
 81:                                       setState(() {
 82:                                         if (checked == true) {
 83:                                           tempSelected.clear();
 84:                                           tempSelected.addAll(allCities);
 85:                                         } else {
 86:                                           tempSelected.clear();
 87:                                         }
 88:                                       });
 89:                                     },
 90:                                   ),
 91:                                   const Text(
 92:                                     'تحديد الكل',
 93:                                     style: TextStyle(
 94:                                       fontSize: 15,
 95:                                       fontWeight: FontWeight.bold,
 96:                                       color: Colors.black87,
 97:                                     ),
 98:                                   ),
 99:                                 ],
100:                               ),
101:                             ),
102:                             Text(
103:                               'المدن',
104:                               style: TextStyle(
105:                                 color: AppColor.primaryColor,
106:                                 fontSize: SizeConfig.widthResponsive(0.05),
107:                                 fontWeight: FontWeight.w600,
108:                               ),
109:                             ),
110:                           ],
111:                         ),
112:                       ],
113:                     ),
114:                   ),
115:                   const Divider(height: 1),
116:                   Expanded(
117:                     child: ListView.builder(
118:                       itemCount: allCities.length,
119:                       itemBuilder: (context, index) {
120:                         final city = allCities[index];
121:                         final bool isSelected = tempSelected.any((e) => e.id == city.id);
122:                         final cityName = (_isArabic ? city.cityNameAr : city.cityNameEn) ?? '';
123: 
124:                         return CheckboxListTile(
125:                           value: isSelected,
126:                           activeColor: AppColor.primaryColor,
127:                           title: Text(
128:                             cityName,
129:                             style: const TextStyle(
130:                               fontSize: 16,
131:                               fontWeight: FontWeight.w500,
132:                             ),
133:                           ),
134:                           onChanged: (bool? checked) {
135:                             setState(() {
136:                               if (checked == true) {
137:                                 if (!tempSelected.any((e) => e.id == city.id)) {
138:                                   tempSelected.add(city);
139:                                 }
140:                               } else {
141:                                 tempSelected.removeWhere((e) => e.id == city.id);
142:                               }
143:                             });
144:                           },
145:                         );
146:                       },
147:                     ),
148:                   ),
149:                   const Divider(height: 1),
150:                   Padding(
151:                     padding: EdgeInsets.only(
152:                       bottom: SizeConfig.heightResponsive(0.04),
153:                       left: 20,
154:                       right: 20,
155:                       top: 10,
156:                     ),
157:                     child: SizedBox(
158:                       width: double.infinity,
159:                       height: 48,
160:                       child: ElevatedButton(
161:                         style: ElevatedButton.styleFrom(
162:                           backgroundColor: Colors.blue,
163:                           shape: RoundedRectangleBorder(
164:                             borderRadius: BorderRadius.circular(10),
165:                           ),
166:                         ),
167:                         onPressed: () {
168:                           createOrderProvider.changeCitiesRequest(tempSelected);
169:                           Navigator.pop(context);
170:                         },
171:                         child: Text(
172:                           'تحديد',
173:                           style: TextStyle(
174:                             color: Colors.white,
175:                             fontSize: SizeConfig.widthResponsive(0.04),
176:                             fontWeight: FontWeight.bold,
177:                           ),
178:                         ),
179:                       ),
180:                     ),
181:                   ),
182:                 ],
183:               ),
184:             );
185:           },
186:         );
187:       },
188:     );
189:   }
190: 
191:   @override
192:   Widget build(BuildContext context) {
193:     final _cacheProvider = context.read<CacheProvider>();
194:     final _createOrderProvider = Provider.of<CreateOrderProvider>(context);
195: 
196:     return CardContainerWidget(
197:       children: [
198:         const SizedBox(
199:           height: 10,
200:         ),
201:         Text(
202:           'تحديد نطاق الإرسال',
203:           style: txtBold04,
204:         ),
205:         const SizedBox(
206:           height: 20,
207:         ),
208:         InkWell(
209:           onTap: () => _showCitiesBottomSheet(context, _cacheProvider, _createOrderProvider),
210:           child: InputDecorator(
211:             decoration: customDropdownDecoratorProps(label: 'المدن', hint: 'إختر المدن').dropdownSearchDecoration!,
212:             child: CityDropDownBuilderMultiSelectionWidget(
213:               selectedItems: _createOrderProvider.selectedCitiesRequestList ?? [],
214:               hint: 'إختر المدن',
215:             ),
216:           ),
217:         ),
218:         const SizedBox(height: 30,),
219:         Align(
220:           alignment: Alignment.centerRight,
221:           child: Text(
222:             ' إمكانية اختيار إرسال الطلب لجميع المدن , أو لمدينة معينة',
223:             style: TextStyle(
224:               fontSize: 14,
225:               color: Colors.grey[700],
226:               height: 1.5,
227:             ),
228:           ),
229:         ),
230:         const SizedBox(height: 10,),
231:       ],
232:     );
233:   }
234: }
````

## File: lib/features/user/profile/screens/profile_user_screen.dart
````dart
 1: import 'package:car_mediator_mobile/core/providers/vendors/profile_vendor_provider.dart';
 2: import 'package:car_mediator_mobile/features/vendor/profile/screens/update_commercial_number_image_widget.dart';
 3: import 'package:car_mediator_mobile/widgets/custom_loading.dart';
 4: import 'package:flutter/material.dart';
 5: import 'package:provider/provider.dart';
 6: 
 7: import '../../../../core/providers/users/profile_user_provider.dart';
 8: import '../../../../core/styles/styles.dart';
 9: import '../../../../core/utils/date_parser_utils.dart';
10: import '../../../../core/utils/size_config.dart';
11: import '../../../../widgets/arrow_back_widget.dart';
12: import '../widgets/build_manage_profile_user_widget.dart';
13: 
14: class ProfileVendorScreen extends StatefulWidget {
15:   const ProfileVendorScreen({super.key,});
16: 
17:   @override
18:   State<ProfileVendorScreen> createState() => _ProfileVendorScreenState();
19: }
20: 
21: class _ProfileVendorScreenState extends State<ProfileVendorScreen> {
22:   final _formKey = GlobalKey<FormState>();
23:   final nameController = TextEditingController();
24: 
25:   @override
26:   void initState() {
27:     super.initState();
28:     WidgetsBinding.instance.addPostFrameCallback((_) async {
29:       final provider = Provider.of<ProfileUserProvider>(context, listen: false);
30:       await provider.getUserProfile();
31:       initValuesProfile(provider);
32: 
33:     });
34:   }
35: 
36:   void initValuesProfile(ProfileUserProvider provider){
37:     nameController.text = provider.profileUserModel?.name ?? '';
38:   }
39: 
40:   @override
41:   void dispose() {
42:     super.dispose();
43:     nameController.dispose();
44:   }
45: 
46:   @override
47:   Widget build(BuildContext context) {
48:     SizeConfig.init(context);
49:     final _provider = Provider.of<ProfileUserProvider>(context);
50: 
51:     return Scaffold(
52:       appBar: AppBar(
53:         title: Text('إدارة الحساب', style: txtBold05,),
54:         centerTitle: true,
55:         elevation: 0,
56:         leading: ArrowBackWidget(myContext: context),
57:       ),
58:       body: _provider.isLoadingRefresh ? const CustomLoading() : Form(
59:           key: _formKey,
60:           child: RefreshIndicator(
61:             onRefresh: () async {
62:               await _provider.getUserProfile();
63:               initValuesProfile(_provider);
64:             },
65:             child: ListView(
66:               physics: ScrollPhysics(),
67:               shrinkWrap: true,
68:               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
69:               children: [
70:                 BuildManageProfileUserWidget(
71:                   formKey: _formKey,
72:                   provider: _provider,
73:                   nameController: nameController,
74:                 ),
75:                 const SizedBox(height: 30,),
76: 
77:                 const SizedBox(height: 20,),
78:               ],
79:             ),)),
80:     );
81:   }
82: }
````

## File: lib/features/user/profile/widgets/build_manage_profile_user_widget.dart
````dart
  1: import 'package:flutter/material.dart';
  2: 
  3: import '../../../../core/helpers/helpers.dart';
  4: import '../../../../core/providers/users/profile_user_provider.dart';
  5: import '../../../../core/utils/connection_utils.dart';
  6: import '../../../../core/utils/constants/assets_path.dart';
  7: import '../../../../core/utils/constants/colors_constants.dart';
  8: import '../../../../core/utils/dialogUtils.dart';
  9: import '../../../../core/utils/form_validator.dart';
 10: import '../../../../core/utils/image_picker_bottom_sheet_utils.dart';
 11: import '../../../../core/utils/size_config.dart';
 12: import '../../../../widgets/container_fields_widget.dart';
 13: import '../../../../widgets/custom_button.dart';
 14: import '../../../../widgets/custom_textfield.dart';
 15: import '../../../../widgets/icon_comp.dart';
 16: import '../../../../widgets/images/custom_image.dart';
 17: 
 18: class BuildManageProfileUserWidget extends StatelessWidget {
 19:   const BuildManageProfileUserWidget({super.key, required this.formKey , required this.provider, required this.nameController});
 20:   final GlobalKey<FormState> formKey;
 21:   final ProfileUserProvider provider;
 22:   final TextEditingController nameController;
 23: 
 24:   @override
 25:   Widget build(BuildContext context) {
 26:     return Column(
 27:       children: [
 28:         ContainerFieldsWidget(
 29:             title: 'إدارة الملف الشخصي',
 30:             children: [
 31:               CustomImageWidget(
 32:                 fileImage: provider.logo,
 33:                 urlImage: provider.profileUserModel?.logo,
 34:                 width: SizeConfig.widthResponsive(0.25),
 35:                 height: SizeConfig.widthResponsive(0.25),
 36:                 radius: 60,
 37:                 assetDefaultPath: AssetsPath.user_image,
 38:               ),
 39:               Padding(padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthResponsive(0.20),),
 40:                 child: TextButton(
 41:                   onPressed: (){
 42:                     ImagePickerBottomSheet.show(context, (picked) {
 43:                       if (picked != null) {
 44:                         provider.changeLogo(picked);
 45:                       }
 46:                     });
 47:                   },
 48:                   child:  Text('+  إضافة الصورة الشخصية', style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.w600),),
 49:                 ),
 50:               ),
 51:               const SizedBox(height: 10,),
 52:               Row(
 53:                 children: [
 54:                   const IconComponent(icon: Icon(Icons.business_sharp, color: AppColor.primaryColor,),),
 55:                   const SizedBox(width: 10,),
 56:                   Expanded(child: CustomTextField(
 57:                     label: 'الإسم',
 58:                     hint: 'الإسم',
 59:                     controller: nameController,
 60:                     validator: (value) => FormValidatorUtils.textValidator(value, isRequired: true),
 61:                     fillColor: AppColor.secondaryColor,
 62:                     filled: true,
 63:                   ),)
 64:                 ],
 65:               ),
 66:               const SizedBox(height: 15,),
 67:               SizedBox(height: SizeConfig.heightResponsive(0.01),),
 68:               Padding(padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthResponsive(0.20),),
 69:                 child: CustomButton(
 70:                   primaryColor:AppColor.primaryColor,
 71:                   txtSize: SizeConfig.widthResponsive(0.04),
 72:                   loading: provider.isLoading,
 73:                   onTap: () async {
 74:                     await _execute(context);
 75:                   },
 76:                   label: 'تعديل',
 77:                 ),)
 78:             ]
 79:         ),
 80:       ],
 81:     );
 82:   }
 83: 
 84: Future<void> _execute(BuildContext context)async {
 85:   Helper.dismissKeyBoard();
 86: 
 87:   bool myValid = formKey.currentState!.validate();
 88:   if (myValid) {
 89: 
 90:     if(! await ConnectionUtils.hasInternetConnection()){
 91:       DialogUtils().showNoInternetDialog(context);
 92:       return;
 93:     }
 94: 
 95:     await provider.updateUserProfile(context,{
 96:       'name' : nameController.text,
 97:     });
 98:   }
 99: }
100: }
````

## File: lib/features/user/shipping_request/screens/confirm_shipping_request_screen.dart
````dart
  1: import 'package:car_mediator_mobile/core/helpers/helpers.dart';
  2: import 'package:car_mediator_mobile/core/utils/connection_utils.dart';
  3: import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
  4: import 'package:dropdown_search/dropdown_search.dart';
  5: import 'package:flutter/cupertino.dart';
  6: import 'package:flutter/material.dart';
  7: import 'package:provider/provider.dart';
  8: 
  9: import '../../../../../core/providers/orders/create_order_provider.dart';
 10: import '../../../../../core/styles/styles.dart';
 11: import '../../../../../core/utils/constants/colors_constants.dart';
 12: import '../../../../../core/utils/constants/constants.dart';
 13: import '../../../../../core/utils/dialogUtils.dart';
 14: import '../../../../../core/utils/size_config.dart';
 15: import '../../../../../widgets/card_container_widget.dart';
 16: import '../../../../../widgets/custom_button.dart';
 17: import '../../../../../widgets/custom_loading.dart';
 18: import '../../../../core/localization/app_language_provider.dart';
 19: import '../../../../core/providers/cache_provider.dart';
 20: import '../../../../core/providers/shipping_provider.dart';
 21: import '../../../../core/utils/form_validator.dart';
 22: import '../../../../models/city_model.dart';
 23: import '../../../../widgets/components.dart';
 24: import '../../../../widgets/custom_container_listtile_widget.dart';
 25: import '../../../../widgets/custom_textfield.dart';
 26: 
 27: class ConfirmShippingRequestScreen extends StatefulWidget {
 28:   const ConfirmShippingRequestScreen({super.key, required this.requestId, required this.responseId, required this.vendorId});
 29:   final int requestId;
 30:   final int responseId;
 31:   final int vendorId;
 32: 
 33:   @override
 34:   State<ConfirmShippingRequestScreen> createState() => _ConfirmShippingRequestScreenState();
 35: }
 36: 
 37: class _ConfirmShippingRequestScreenState extends State<ConfirmShippingRequestScreen> {
 38: 
 39:   final _formKey = GlobalKey<FormState>();
 40:   final idNumberController = TextEditingController();
 41:   final addressController = TextEditingController();
 42:   final _phoneController = TextEditingController();
 43:   @override
 44:   void initState() {
 45:     super.initState();
 46:   }
 47: 
 48:   @override
 49:   void dispose() {
 50:     super.dispose();
 51:     idNumberController.dispose();
 52:     addressController.dispose();
 53:     _phoneController.dispose();
 54:   }
 55: 
 56: 
 57:   @override
 58:   Widget build(BuildContext context) {
 59:     final _provider = Provider.of<CreateOrderProvider>(context);
 60:     final _isArabic = context.read<AppLanguageProvider>().isArabic;
 61:     final _cacheProvider = context.read<CacheProvider>();
 62:     final _shippingProvider = Provider.of<ShippingProvider>(context);
 63:     return Scaffold(
 64:       appBar: AppBar(
 65:         backgroundColor: Colors.white,
 66:         leading: ArrowBackWidget(myContext: context),
 67:         title: Text('شحن الطلب : ' + '${widget.requestId}', style: txtBold04,),
 68:       ),
 69:         body: Form(
 70:           key: _formKey,
 71:             child: ListView(
 72:           shrinkWrap: true,
 73:           physics: const ScrollPhysics(),
 74:           padding: const EdgeInsets.all(paddingConst),
 75:           children: [
 76: 
 77:             SizedBox(
 78:               height: 20,
 79:             ),
 80:             CardContainerWidget(
 81:               children: [
 82:                 const SizedBox(
 83:                   height: 10,
 84:                 ),
 85:                 Text(
 86:                   'بيانات الشحن',
 87:                   textAlign: TextAlign.center,
 88:                   style: txtBold04,
 89:                 ),
 90:                 const SizedBox(
 91:                   height: 20,
 92:                 ),
 93:                 CustomTextField(
 94:                   label: 'رقم الهوية',
 95:                   hint: 'أدخل رقم هويتك',
 96:                   controller: idNumberController,
 97:                   keyboardType: TextInputType.number,
 98:                   validator: (value) => FormValidatorUtils.numberValidator(value,
 99:                       isRequired: true),
100:                 ),
101:                 const SizedBox(
102:                   height: 20,
103:                 ),
104:                 DropdownSearch<CityModel>(
105:                   dropdownDecoratorProps: customDropdownDecoratorProps(
106:                       label: 'مدينتك', hint: 'إختر مدينتك'),
107:                   popupProps: popupPropsBottomSheet<CityModel>(
108:                     titleBottomSheet: 'مدينتك',
109:                     itemBuilder: (BuildContext context, CityModel item,
110:                         bool isSelected) {
111:                       return CustomContainerListTileWidget(
112:                         title:
113:                         _isArabic ? item.cityNameAr : item.cityNameEn,
114:                       );
115:                     },
116:                   ),
117:                   items: _cacheProvider.citiesList,
118:                   selectedItem: _shippingProvider.myCitySelectedModel,
119:                   itemAsString: (CityModel? u) =>
120:                   (_isArabic ? u?.cityNameAr : u?.cityNameEn) ?? '',
121:                   validator: FormValidatorUtils.objectValidator,
122:                   onChanged: (CityModel? selection) =>
123:                       _shippingProvider.selectedMyCity(selection),
124:                 ),
125:                 const SizedBox(
126:                   height: 20,
127:                 ),
128:                 CustomTextField(
129:                   label: 'الحي - الشارع',
130:                   hint: 'الحي - الشارع',
131:                   controller: addressController,
132:                   validator: (value) => FormValidatorUtils.textValidator(value,
133:                       isRequired: true,maxLength: 255),
134:                 ),
135:                 const SizedBox(
136:                   height: 20,
137:                 ),
138:                 CustomTextField(
139:                   label:'رقم الجوال',
140:                   controller: _phoneController,
141:                   keyboardType: TextInputType.phone,
142:                   validator: (value) => FormValidatorUtils.phoneValidator(value,
143:                     isRequired: true,),
144:                 ),
145:                 const SizedBox(
146:                   height: 20,
147:                 ),
148:               ],
149:             )
150:           ],
151:         )),
152:         bottomNavigationBar: BottomAppBar(
153:           child: Padding(
154:             padding: const EdgeInsets.symmetric(
155:               horizontal: 0,
156:             ),
157:             child: CustomButton(
158:               label: 'تأكيد الشحن',
159:               txtSize: SizeConfig.widthResponsive(0.04),
160:               loading: _provider.isLoading,
161:               onTap: ()  {
162:                 Helper.dismissKeyBoard();
163:                 DialogUtils().showConfirmDialog(context, message: 'تأكيد العملية', confirm: () async {
164:                   Helper.dismissKeyBoard();
165:                   if(!await ConnectionUtils.hasInternetConnection()){
166:                   DialogUtils().showNoInternetDialog(context);
167:                   return;
168:                   }
169:                   if (_formKey.currentState!.validate()){
170:                   await _provider.ConfirmShippingRequest(context,body: {
171:                   'requestId' : widget.requestId,
172:                   'responseId': widget.responseId,
173:                   'vendorId' : widget.vendorId,
174:                   'idNumberUser' : idNumberController.text.trim().toString(),
175:                     'cityOriginDimensions': _shippingProvider.myCitySelectedModel?.cityNameEn ?? '',
176:                   'addressOriginDimensions' : addressController.text.trim().toString(),
177:                   'phoneOriginDimensions' : _phoneController.text.trim().toString(),
178:                   });
179:                   }
180:                 });
181:               },
182:             ),
183:           ),
184:         ));
185:   }
186: }
````

## File: lib/features/vendor/app_commission/screens/app_commission_screen.dart
````dart
  1: import 'package:car_mediator_mobile/core/utils/constants/assets_path.dart';
  2: import 'package:car_mediator_mobile/core/utils/constants/colors_constants.dart';
  3: import 'package:car_mediator_mobile/features/vendor/app_commission/screens/payment_transfer_bank_screen.dart';
  4: import 'package:dropdown_search/dropdown_search.dart';
  5: import 'package:flutter/material.dart';
  6: import 'package:provider/provider.dart';
  7: 
  8: import '../../../../core/helpers/helpers.dart';
  9: import '../../../../core/localization/app_language_provider.dart';
 10: import '../../../../core/providers/cache_provider.dart';
 11: import '../../../../core/providers/vendors/app_commission_provider.dart';
 12: import '../../../../core/styles/styles.dart';
 13: import '../../../../core/utils/form_validator.dart';
 14: import '../../../../core/utils/size_config.dart';
 15: import '../../../../models/category_model.dart';
 16: import '../../../../widgets/arrow_back_widget.dart';
 17: import '../../../../widgets/components.dart';
 18: import '../../../../widgets/custom_button.dart';
 19: import '../../../../widgets/custom_container_listtile_widget.dart';
 20: import '../../../../widgets/custom_textfield.dart';
 21: import '../../../../widgets/info_widget.dart';
 22: 
 23: class AppCommissionScreen extends StatefulWidget {
 24:   const AppCommissionScreen({super.key});
 25: 
 26:   @override
 27:   State<AppCommissionScreen> createState() => _AppCommissionScreenState();
 28: }
 29: 
 30: class _AppCommissionScreenState extends State<AppCommissionScreen> {
 31:   final _formKey = GlobalKey<FormState>();
 32:   final _priceController = TextEditingController();
 33: 
 34:   @override
 35:   void dispose() {
 36:     super.dispose();
 37:     _priceController.dispose();
 38:   }
 39: 
 40:   @override
 41:   Widget build(BuildContext context) {
 42:     SizeConfig.init(context);
 43:     final _isArabic = context.read<AppLanguageProvider>().isArabic;
 44:     final _cacheProvider = context.read<CacheProvider>();
 45:     final _appCommissionProvider = Provider.of<AppCommissionProvider>(context);
 46: 
 47:     return Scaffold(
 48:       backgroundColor: AppColor.secondaryColor,
 49:       appBar: AppBar(
 50:         title: Text('حساب عمولة التطبيق', style: txtBold05,),
 51:         centerTitle: true,
 52:         elevation: 0,
 53:         leading: ArrowBackWidget(myContext: context),
 54:       ),
 55: 
 56:       body: Form(
 57:         key: _formKey,
 58:           child: ListView(
 59:         shrinkWrap: true,
 60:         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
 61:         children: [
 62:           const InfoWidget(text: 'الرسوم أمانة في ذمة الشركة سواء تمت المبايعة عن طريق التطبيق أو بسببة.',),
 63:           const SizedBox(height: 20,),
 64:           Container(
 65:             padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
 66:             decoration: BoxDecoration(
 67:               color: Colors.white,
 68:               borderRadius: BorderRadius.circular(10),
 69:               boxShadow: [
 70:                 BoxShadow(
 71:                   color: Colors.grey.withOpacity(0.1),
 72:                   spreadRadius: 3,
 73:                   blurRadius: 5,
 74:                   offset: const Offset(0, 3),
 75:                 ),
 76:               ],
 77:             ),
 78:             child: Column(
 79:               mainAxisSize: MainAxisSize.min,
 80:               crossAxisAlignment: CrossAxisAlignment.center,
 81:               children: [
 82:                 Text('حساب الرسوم', style: txtBold04,),
 83:                 const SizedBox(height: 10,),
 84:                 DropdownSearch<CategoryModel>(
 85:                   dropdownDecoratorProps: customDropdownDecoratorProps(
 86:                       label: 'القسم', hint: 'إختر القسم'),
 87:                   popupProps: popupPropsBottomSheet<CategoryModel>(
 88:                     titleBottomSheet: 'القسم',
 89:                     itemBuilder: (BuildContext context, CategoryModel item,
 90:                         bool isSelected) {
 91:                       return CustomContainerListTileWidget(
 92:                         title:
 93:                         _isArabic ? item.catNameAr : item.catNameEn,
 94:                       );
 95:                     },
 96:                   ),
 97:                   items: _cacheProvider.categoriesList,
 98:                   selectedItem: _appCommissionProvider.categoryModelSelected,
 99:                   itemAsString: (CategoryModel? u) =>
100:                   (_isArabic ? u?.catNameAr : u?.catNameEn) ?? '',
101:                   validator: FormValidatorUtils.objectValidator,
102:                   onChanged: (CategoryModel? selection) =>
103:                       _appCommissionProvider.selectedCategory(selection),
104:                 ),
105:                 const SizedBox(height: 20,),
106:                 CustomTextField(
107:                   label: 'سعر البيع',
108:                   hint: 'ادخل سعر البيع',
109:                   controller: _priceController,
110:                   validator: (value) => FormValidatorUtils.textValidator(value,
111:                       isRequired: true
112:                 ),),
113:                 const SizedBox(height: 20,),
114:                 CustomButton(
115:                   label: 'إحسب',
116:                   primaryColor: AppColor.primaryColor,
117:                   txtSize: SizeConfig.widthResponsive(0.05),
118:                   loading: false,
119:                   onTap: () {
120:                     Helper.dismissKeyBoard();
121:                     if (_formKey.currentState!.validate()) {
122:                       _appCommissionProvider.calculateCommission(double.parse(_priceController.text));
123:                     }
124:                   }
125:                 ),
126: 
127:                 const SizedBox(height: 50,),
128:                 Row(
129:                   crossAxisAlignment: CrossAxisAlignment.center,
130:                   mainAxisAlignment: MainAxisAlignment.center,
131:                   mainAxisSize: MainAxisSize.min,
132:                   children: [
133:                     Text('الرسوم المستحقة   : ', style: txtBold04,),
134:                     const SizedBox(width: 10,),
135:                     Text('${_appCommissionProvider.commissionFees}', style: TextStyle(fontSize: 32),),
136:                     const SizedBox(width: 10,),
137:                     Image.asset(AssetsPath.icon_riyal, height: 20, width: 20,),
138:                   ],
139:                 ),
140:                 const SizedBox(height: 60,),
141:                 CustomButton(
142:                     label: 'الدفع البنكي لسداد العمولة',
143:                     primaryColor: AppColor.primaryColor,
144:                     txtSize: SizeConfig.widthResponsive(0.05),
145:                     loading: false,
146:                     onTap: () {
147:                       Helper.dismissKeyBoard();
148:                       navigationPush(context, PaymentTransferBankScreen());
149:                     }
150:                 ),
151:               ],
152:             ),
153:           ),
154:         ],
155:       )),
156:     );
157:   }
158: }
````

## File: lib/features/vendor/app_commission/screens/payment_transfer_bank_screen.dart
````dart
  1: import 'package:flutter/material.dart';
  2: import 'package:provider/provider.dart';
  3: 
  4: import '../../../../core/helpers/helpers.dart';
  5: import '../../../../core/helpers/toast_helper.dart';
  6: import '../../../../core/providers/vendors/app_commission_provider.dart';
  7: import '../../../../core/styles/styles.dart';
  8: import '../../../../core/utils/connection_utils.dart';
  9: import '../../../../core/utils/constants/colors_constants.dart';
 10: import '../../../../core/utils/date_parser_utils.dart';
 11: import '../../../../core/utils/dialogUtils.dart';
 12: import '../../../../core/utils/form_validator.dart';
 13: import '../../../../core/utils/image_picker_bottom_sheet_utils.dart';
 14: import '../../../../core/utils/size_config.dart';
 15: import '../../../../widgets/arrow_back_widget.dart';
 16: import '../../../../widgets/custom_button.dart';
 17: import '../../../../widgets/custom_textfield.dart';
 18: import '../../../../widgets/images/add_image_widget.dart';
 19: 
 20: class PaymentTransferBankScreen extends StatefulWidget {
 21:   const PaymentTransferBankScreen({super.key});
 22: 
 23:   @override
 24:   State<PaymentTransferBankScreen> createState() => _PaymentTransferBankScreenState();
 25: }
 26: 
 27: class _PaymentTransferBankScreenState extends State<PaymentTransferBankScreen> {
 28:   final _formKey = GlobalKey<FormState>();
 29:   final _amountController = TextEditingController();
 30:   final _dateController = TextEditingController();
 31:   final _nameController = TextEditingController();
 32:   final _numberRequestController = TextEditingController();
 33:   final _noteController = TextEditingController();
 34: 
 35:   @override
 36:   void dispose() {
 37:     super.dispose();
 38:     _amountController.dispose();
 39:     _dateController.dispose();
 40:     _nameController.dispose();
 41:     _numberRequestController.dispose();
 42:     _noteController.dispose();
 43:   }
 44: 
 45:   @override
 46:   Widget build(BuildContext context) {
 47:     final _appCommissionProvider = Provider.of<AppCommissionProvider>(context);
 48: 
 49:     return Scaffold(
 50:       backgroundColor: AppColor.secondaryColor,
 51:       appBar: AppBar(
 52:         title: Text('تحويل بنكي', style: txtBold05,),
 53:         centerTitle: true,
 54:         elevation: 0,
 55:         leading: ArrowBackWidget(myContext: context),
 56:       ),
 57: 
 58:       body: Form(
 59:           key: _formKey,
 60:           child: ListView(
 61:             shrinkWrap: true,
 62:             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
 63:             children: [
 64: 
 65:               Container(
 66:                 padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
 67:                 decoration: BoxDecoration(
 68:                   color: Colors.white,
 69:                   borderRadius: BorderRadius.circular(10),
 70:                   boxShadow: [
 71:                     BoxShadow(
 72:                       color: Colors.grey.withOpacity(0.1),
 73:                       spreadRadius: 3,
 74:                       blurRadius: 5,
 75:                       offset: const Offset(0, 3),
 76:                     ),
 77:                   ],
 78:                 ),
 79:                 child: Column(
 80:                   mainAxisSize: MainAxisSize.min,
 81:                   crossAxisAlignment: CrossAxisAlignment.center,
 82:                   children: [
 83:                     Text('نموذج التحويل البنكي', style: txtBold04,),
 84:                     const SizedBox(height: 30,),
 85:                     CustomTextField(
 86:                       label: 'مبلغ التحويل',
 87:                       hint: 'إدخل المبلغ',
 88:                       controller: _amountController,
 89:                       keyboardType: TextInputType.number,
 90:                       validator: (value) => FormValidatorUtils.textValidator(value,
 91:                           isRequired: true
 92:                       ),),
 93:                     const SizedBox(height: 16,),
 94:                     CustomTextField(
 95:                       label: 'تاريخ التحويل',
 96:                       hint: 'إدخل تاريخ',
 97:                       controller: _dateController,
 98:                       readOnly: true,
 99:                       onTap: () async {
100:                         String _date = await DateParserUtils.getDateFormattedController(context);
101:                         setState(() {
102:                           _dateController.text = _date;
103:                         });
104:                       },
105:                       validator: (value) => FormValidatorUtils.textValidator(value,
106:                           isRequired: true
107:                       ),),
108:                     const SizedBox(height: 16,),
109:                     CustomTextField(
110:                       label: 'إسم المحول',
111:                       hint: 'إدخل الإسم',
112:                       controller: _nameController,
113:                       validator: (value) => FormValidatorUtils.textValidator(value,
114:                           isRequired: true
115:                       ),),
116:                     const SizedBox(height: 16,),
117:                     CustomTextField(
118:                       label: 'رقم الإعلان (الطلب)',
119:                       hint: 'رقم الإعلان (الطلب)',
120:                       controller: _numberRequestController,
121:                       keyboardType: TextInputType.number,
122:                       validator: (value) => FormValidatorUtils.textValidator(value,
123:                           isRequired: true
124:                       ),),
125:                     const SizedBox(height: 16,),
126:                     CustomTextField(
127:                       label: 'ملاحظات',
128:                       hint: 'ملاحظات',
129:                       controller: _noteController,
130:                       maxLines: 3,
131:                       maxLength: 500,
132:                      ),
133:                     const SizedBox(height: 16,),
134:                     AddImageWidget(
135:                         height: SizeConfig.heightResponsive(0.20),
136:                         file: _appCommissionProvider.invoiceTransferBankImageSelected,
137:                         onTap: () async {
138:                           ImagePickerBottomSheet.show(context, (picked) {
139:                             if (picked != null) {
140:                               _appCommissionProvider.changeInvoiceTransferBankImage(picked);
141:                             }
142:                           });
143:                         },
144:                         deleteImage : () {
145:                           _appCommissionProvider.changeInvoiceTransferBankImage(null);
146:                         }
147:                     ),
148:                     const SizedBox(height: 30,),
149:                     CustomButton(
150:                       primaryColor:AppColor.primaryColor,
151:                       txtSize: SizeConfig.widthResponsive(0.05),
152:                       loading: _appCommissionProvider.isLoading,
153:                       onTap: () async {
154:                         await _execute(context, _appCommissionProvider);
155:                       },
156:                       label: 'إرسال',
157:                     ),
158:                     const SizedBox(height: 30,),
159: 
160:                   ],
161:                 ),
162:               ),
163:             ],
164:           )),
165:     );
166:   }
167: 
168:   Future<void> _execute(BuildContext context, AppCommissionProvider myProvider) async {
169:     Helper.dismissKeyBoard();
170: 
171:     bool myValid = _formKey.currentState!.validate();
172:     if (myValid) {
173: 
174:       if(myProvider.invoiceTransferBankImageSelected == null || myProvider.invoiceTransferBankImageSelected!.path.isEmpty){
175:         ToastHelper.showInfo('الرجاء إختيار صورة الإيصال');
176:         return;
177:       }
178: 
179:       if(! await ConnectionUtils.hasInternetConnection()){
180:         DialogUtils().showNoInternetDialog(context);
181:         return;
182:       }
183: 
184:       await myProvider.payAppCommission(context,{
185:         'amount' : _amountController.text,
186:         'date' : _dateController.text,
187:         'nameTransfer' : _nameController.text,
188:         'numberRequest' : _numberRequestController.text,
189:         'notes' : _noteController.text,
190:       });
191:     }
192:   }
193: 
194: }
````

## File: lib/features/vendor/my_conversations/screens/vendor_conversations_screen.dart
````dart
  1: import 'package:car_mediator_mobile/core/helpers/helpers.dart';
  2: import 'package:car_mediator_mobile/core/styles/styles.dart';
  3: import 'package:car_mediator_mobile/core/utils/utils.dart';
  4: import 'package:flutter/material.dart';
  5: import 'package:provider/provider.dart';
  6: 
  7: import '../../../../core/data_sources/remote/api_endpoints.dart';
  8: import '../../../../core/providers/auth_provider.dart';
  9: import '../../../../core/providers/conversation_provider.dart';
 10: import '../../../../core/providers/users/my_request_user_provider.dart';
 11: import '../../../../core/utils/connection_utils.dart';
 12: import '../../../../core/utils/constants/colors_constants.dart';
 13: import '../../../../core/utils/dialogUtils.dart';
 14: import '../../../../core/utils/size_config.dart';
 15: import '../../../../widgets/arrow_back_widget.dart';
 16: import '../../../../widgets/components.dart';
 17: import '../../../../widgets/custom_empty_widget.dart';
 18: import '../../../../widgets/custom_loading.dart';
 19: import '../../../../widgets/images/custom_image.dart';
 20: import '../../../shared/chat/screens/chat_screen.dart';
 21: 
 22: class VendorConversationScreen extends StatefulWidget {
 23:   const VendorConversationScreen({super.key});
 24: 
 25:   @override
 26:   _VendorConversationScreenState createState() => _VendorConversationScreenState();
 27: }
 28: 
 29: class _VendorConversationScreenState extends State<VendorConversationScreen> {
 30: 
 31:   final ScrollController _scrollController = ScrollController();
 32: 
 33:   @override
 34:   void initState() {
 35:     super.initState();
 36: 
 37:     WidgetsBinding.instance.addPostFrameCallback((_) async {
 38:       final provider = Provider.of<ConversationProvider>(context, listen: false);
 39:       provider.resetPagination();
 40:       await provider.getMyConversations(path: ApiEndpoints.vendorConversations);
 41:     });
 42:     
 43:     _scrollController.addListener(() {
 44:       final p = Provider.of<ConversationProvider>(context, listen: false);
 45:       if (_scrollController.position.pixels ==
 46:           _scrollController.position.maxScrollExtent &&
 47:           !p.isLoading &&
 48:           p.hasMore) {
 49:         p.getMyConversations( path: ApiEndpoints.vendorConversations,loadMore: true);
 50:       }
 51:     });
 52:   }
 53: 
 54:   @override
 55:   void dispose() {
 56:     super.dispose();
 57:     _scrollController.dispose();
 58:   }
 59: 
 60:   @override
 61:   Widget build(BuildContext context) {
 62:     SizeConfig.init(context);
 63: 
 64:     return Scaffold(
 65:       appBar: AppBar(
 66:         backgroundColor: Colors.white,
 67:         title: Text("محادثاتي", style: txtMedium05,),
 68:         leading: ArrowBackWidget(myContext: context),
 69:         centerTitle: true,
 70:         elevation: 0,
 71:       ),
 72:       body: Consumer<ConversationProvider>(
 73:         builder: (context, provider, child) {
 74: 
 75:           if ( provider.conversationModelList.isEmpty && provider.isLoading) {
 76:             return const CustomLoading();
 77:           }
 78: 
 79:           return RefreshIndicator(
 80:             onRefresh: () => provider.refreshGetMyConversations(ApiEndpoints.vendorConversations),
 81:             child: provider.conversationModelList.isNotEmpty ? ListView.builder(
 82:               controller: _scrollController,
 83:               physics: const AlwaysScrollableScrollPhysics(),
 84:               itemCount: provider.conversationModelList.length + (provider.isLoading ? 1 : 0),
 85:               shrinkWrap: true,
 86:               padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
 87:               itemBuilder: (context, index) {
 88:                 if (index < provider.conversationModelList.length) {
 89:                   return Padding(padding: const EdgeInsets.only(bottom: 12),
 90:                     child: Material(
 91:                       color: Colors.white,
 92:                       borderRadius: BorderRadius.circular(12),
 93:                       child: ListTile(
 94:                         onTap: () async {
 95:                           if(! await ConnectionUtils.hasInternetConnection()){
 96:                             DialogUtils().showNoInternetDialog(context);
 97:                             return;
 98:                           }
 99:                           navigationPush(context, ChatScreen(
100:                             conversationId: provider.conversationModelList[index].conversationId ?? 0,
101:                             requestId: provider.conversationModelList[index].requestId ?? 0,
102:                             responseId: provider.conversationModelList[index].responseId ?? 0,
103:                             vendorId: provider.conversationModelList[index].vendorId ?? 0,
104:                             receiverName: provider.conversationModelList[index].receiverName ?? '',
105:                             receiverLogo: provider.conversationModelList[index].receiverLogo ?? '',
106:                             myUserId: context.read<AuthProvider>().currentUseModel?.id ?? 0,
107:                             isVendor: true,
108:                           ));
109:                         },
110:                         shape: RoundedRectangleBorder(
111:                           borderRadius: BorderRadius.circular(12),
112:                         ),
113:                         contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
114:                         leading: CustomImageWidget(
115:                           urlImage: provider.conversationModelList[index].receiverLogo,
116:                           width: SizeConfig.widthResponsive(0.15),
117:                           height: SizeConfig.widthResponsive(0.15),
118:                           radius: 60,
119:                         ),
120:                         title: Text('${provider.conversationModelList[index].receiverName}', style: txtSemiBold035,),
121:                         subtitle: Text('رقم الطلب : ${Utils.numberFormatting(provider.conversationModelList[index].requestId)}'),
122:                         trailing: const Icon(Icons.arrow_forward_ios_rounded, color: AppColor.primaryColor, size: 18,),
123:                       ),
124:                     ),);
125:                 } else {
126:                   return const Padding(padding: EdgeInsets.only(bottom: 10),
127:                     child: CustomLoading(radius: 18,),
128:                   );
129:                 }
130:               },
131:             ) : const CustomEmptyWidget(label: 'لا توجد محادثات للعرض حالياً',),);
132:         },
133:       ),
134:     );
135:   }
136: }
````

## File: lib/features/vendor/new_requests/screens/details_new_request_screen.dart
````dart
  1: import 'package:cached_network_image/cached_network_image.dart';
  2: import 'package:car_mediator_mobile/core/providers/vendors/new_request_vendor_provider.dart';
  3: import 'package:car_mediator_mobile/core/styles/styles.dart';
  4: import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
  5: import 'package:car_mediator_mobile/widgets/container_fields_widget.dart';
  6: import 'package:flutter/material.dart';
  7: import 'package:provider/provider.dart';
  8: 
  9: import '../../../../core/data_sources/local/secure_storage.dart';
 10: import '../../../../core/data_sources/remote/api_path.dart';
 11: import '../../../../core/utils/date_parser_utils.dart';
 12: import '../../../../core/utils/size_config.dart';
 13: import '../../../../core/utils/utils.dart';
 14: import '../../../../widgets/components.dart';
 15: import '../../../../widgets/custom_button.dart';
 16: import '../../../../widgets/custom_loading.dart';
 17: import '../../../../widgets/item_table_widget.dart';
 18: import '../widgets/build_response_request_bottom_heet.dart';
 19: 
 20: class DetailsNewRequestScreen extends StatefulWidget {
 21:   const DetailsNewRequestScreen({super.key, required this.requestId});
 22:   final int requestId;
 23: 
 24:   @override
 25:   _DetailsNewRequestScreenState createState() => _DetailsNewRequestScreenState();
 26: }
 27: 
 28: class _DetailsNewRequestScreenState extends State<DetailsNewRequestScreen> {
 29: 
 30:   @override
 31:   void initState() {
 32:     super.initState();
 33: 
 34:     WidgetsBinding.instance.addPostFrameCallback((_) async {
 35:       final provider = Provider.of<NewRequestVendorProvider>(context, listen: false);
 36:       await provider.detailsNewRequests(requestId: widget.requestId);
 37:     });
 38:   }
 39: 
 40:   @override
 41:   Widget build(BuildContext context) {
 42:     SizeConfig.init(context);
 43: 
 44:     return Scaffold(
 45:       appBar: AppBar(
 46:         backgroundColor: Colors.white,
 47:         title: Text('تفاصيل الطلب : '+ ' ${Utils.numberFormatting(widget.requestId)}', style: txtMedium05,),
 48:         leading: ArrowBackWidget(myContext: context),
 49:         centerTitle: true,
 50:         elevation: 0,
 51:       ),
 52:       body: Consumer<NewRequestVendorProvider>(
 53:         builder: (context, provider, child) {
 54: 
 55:           if (provider.isLoading) {
 56:             return const CustomLoading();
 57:           }
 58: 
 59:           return RefreshIndicator(
 60:             onRefresh: (){
 61:               return provider.detailsNewRequests(requestId: widget.requestId);
 62:             },
 63:             child: ListView(
 64:               padding: const EdgeInsets.all(12),
 65:               shrinkWrap: true,
 66:               children: [
 67:                  ContainerFieldsWidget(
 68:                     title: 'تفاصيل الطلب',
 69:                     children: [
 70:                       ItemTableWidget(
 71:                         keyString: 'القسم',
 72:                         value: provider.detailsNewRequestsModel?.catNameAr ?? '',
 73:                       ),
 74:                       ItemTableWidget(
 75:                         keyString: 'مدينة العميل',
 76:                         value: provider.detailsNewRequestsModel?.cityCustomerNameAr ?? '',
 77:                       ),
 78:                       ItemTableWidget(
 79:                         keyString: 'نطاق المدن',
 80:                         value: provider.detailsNewRequestsModel?.cities.join(" - ") ?? '',
 81:                       ),
 82:                       if(provider.detailsNewRequestsModel?.brandsNames.isNotEmpty ?? false)
 83:                       ItemTableWidget(
 84:                         keyString: 'الماركة',
 85:                         value: provider.detailsNewRequestsModel?.brandsNames.join(" - ") ?? '',
 86:                       ),
 87: 
 88:                       ItemTableWidget(
 89:                         keyString: 'تاريخ الطلب',
 90:                         value: DateParserUtils.getDateWithTimeFromString(provider.detailsNewRequestsModel?.requestDate ?? ''),
 91:                       ),
 92: 
 93:                       Column(
 94:                         mainAxisSize: MainAxisSize.min,
 95:                         children: provider.detailsNewRequestsModel?.fields.map((e) => ItemTableWidget(keyString: e['key'], value: e['value'],)).toList() ?? [],
 96:                       ),
 97:                       ItemTableWidget(
 98:                         keyString: 'تفاصيل الطلب',
 99:                         value: provider.detailsNewRequestsModel?.description ?? '',
100:                       ),
101:                       const SizedBox(height: 10,),
102:                       Column(
103:                         mainAxisSize: MainAxisSize.min,
104:                         children: provider.detailsNewRequestsModel?.images.map((e) => FutureBuilder<String?>(
105:                           future: SecureStorage.getToken(),
106:                           builder: (context, snapshot) {
107:                             if (!snapshot.hasData) {
108:                               return const CustomLoading(radius: 18,);
109:                             }
110:                             final token = snapshot.data ?? '';
111: 
112:                             return CachedNetworkImage(
113:                               height: SizeConfig.heightResponsive(0.30),
114:                               width: SizeConfig.width,
115:                               imageUrl: "${ApiPath.uploadsPrivate}${e['image_name']}",
116:                               httpHeaders: {
117:                                 "Authorization": "Bearer $token",
118:                               },
119:                               placeholder: (context, url) => const CustomLoading(radius: 18,),
120:                               errorWidget: (context, url, error) => const Icon(Icons.error),
121:                             );
122:                           },
123:                         )).toList() ?? [],
124:                       ),
125:                       const SizedBox(height: 20,),
126:                     ]
127:                 ),
128: 
129:                 const SizedBox(height: 20,),
130:               ],
131:             ),
132:           );
133:         },
134:       ),
135: 
136:       bottomNavigationBar: BottomAppBar(
137:         child: Padding(
138:           padding: const EdgeInsets.symmetric(
139:             horizontal: 0,
140:           ),
141:           child: CustomButton(
142:             label: 'الرد على الطلب',
143:             txtSize: SizeConfig.widthResponsive(0.04),
144:             onTap: (){
145:               customBottomSheet(context,
146:                   child: const BuildResponseRequestBottomSheet(),
147:                   isDismissible: false);
148:             },
149:           ),
150:         ),
151:       ),
152:     );
153:   }
154: }
````

## File: lib/features/vendor/new_requests/screens/new_request_screen.dart
````dart
 1: import 'package:car_mediator_mobile/core/providers/vendors/new_request_vendor_provider.dart';
 2: import 'package:car_mediator_mobile/core/styles/styles.dart';
 3: import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
 4: import 'package:flutter/material.dart';
 5: import 'package:provider/provider.dart';
 6: 
 7: import '../../../../core/utils/size_config.dart';
 8: import '../../../../widgets/custom_loading.dart';
 9: import '../../../../widgets/vendor/request_vendor_card.dart';
10: 
11: class NewRequestScreen extends StatefulWidget {
12:   const NewRequestScreen({super.key});
13: 
14:   @override
15:   _NewRequestScreenState createState() => _NewRequestScreenState();
16: }
17: 
18: class _NewRequestScreenState extends State<NewRequestScreen> {
19: 
20:   final ScrollController _scrollController = ScrollController();
21: 
22:   @override
23:   void initState() {
24:     super.initState();
25: 
26:     WidgetsBinding.instance.addPostFrameCallback((_) async {
27:       final provider = Provider.of<NewRequestVendorProvider>(context, listen: false);
28:       provider.resetPagination();
29:       await provider.getAllNewRequests();
30:     });
31: 
32:     _scrollController.addListener(() {
33:       final p = Provider.of<NewRequestVendorProvider>(context, listen: false);
34:       if (_scrollController.position.pixels ==
35:           _scrollController.position.maxScrollExtent &&
36:           !p.isLoading &&
37:           p.hasMore) {
38:         p.getAllNewRequests(loadMore: true);
39:       }
40:     });
41:   }
42: 
43:   @override
44:   void dispose() {
45:     super.dispose();
46:     _scrollController.dispose();
47:   }
48: 
49:   @override
50:   Widget build(BuildContext context) {
51:     SizeConfig.init(context);
52: 
53:     return Scaffold(
54:       appBar: AppBar(
55:         backgroundColor: Colors.white,
56:           title: Text("طلبات العملاء", style: txtMedium05,),
57:         leading: ArrowBackWidget(myContext: context),
58:         centerTitle: true,
59:         elevation: 0,
60:       ),
61:       body: Consumer<NewRequestVendorProvider>(
62:         builder: (context, provider, child) {
63: 
64:           if ( provider.requestEligibleVendorModelList.isEmpty && provider.isLoading) {
65:             return const CustomLoading();
66:           }
67: 
68:           return RefreshIndicator(
69:             onRefresh: provider.refreshGetAllNewRequests,
70:             child: ListView.builder(
71:             controller: _scrollController,
72:               physics: const AlwaysScrollableScrollPhysics(),
73:             itemCount: provider.requestEligibleVendorModelList.length + (provider.isLoading ? 1 : 0),
74:             shrinkWrap: true,
75:             padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
76:             itemBuilder: (context, index) {
77:               if (index < provider.requestEligibleVendorModelList.length) {
78:                 return Padding(padding: const EdgeInsets.only(bottom: 12),
79:                   child: RequestVendorCard(model: provider.requestEligibleVendorModelList[index],),);
80:               } else {
81:                 return const Padding(padding: EdgeInsets.only(bottom: 10),
82:                   child: CustomLoading(radius: 18,),
83:                 );
84:               }
85:             },
86:           ),);
87:         },
88:       ),
89:     );
90:   }
91: }
````

## File: lib/features/vendor/new_requests/widgets/availability_request_card_selector_widget.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../../../../core/utils/constants/enumeration.dart';
 4: import '../../../../core/utils/size_config.dart';
 5: 
 6: class AvailabilityRequestCardSelectorWidget extends StatefulWidget {
 7:   final ResponseRequestAvailabilityEnum? initial;
 8:   final ValueChanged<ResponseRequestAvailabilityEnum>? onChanged;
 9: 
10:   const AvailabilityRequestCardSelectorWidget({Key? key, this.initial, this.onChanged}) : super(key: key);
11: 
12:   @override
13:   _AvailabilityRequestCardSelectorWidgetState createState() => _AvailabilityRequestCardSelectorWidgetState();
14: }
15: 
16: class _AvailabilityRequestCardSelectorWidgetState extends State<AvailabilityRequestCardSelectorWidget> {
17:   ResponseRequestAvailabilityEnum _selected = ResponseRequestAvailabilityEnum.available;
18: 
19:   @override
20:   void initState() {
21:     super.initState();
22:     _selected = widget.initial ?? ResponseRequestAvailabilityEnum.available;
23:   }
24: 
25:   void _select(ResponseRequestAvailabilityEnum value) {
26:     setState(() => _selected = value);
27:     widget.onChanged?.call(value);
28:   }
29: 
30:   Widget _buildOption(ResponseRequestAvailabilityEnum value, IconData icon, String label, Color color) {
31:     final bool isSelected = _selected == value;
32:     return Expanded(
33:       child: GestureDetector(
34:         onTap: () => _select(value),
35:         child: AnimatedContainer(
36:           height: SizeConfig.heightResponsive(0.14),
37:           duration: const Duration(milliseconds: 200),
38:           margin: const EdgeInsets.symmetric(horizontal: 6.0),
39:           padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
40:           decoration: BoxDecoration(
41:             color: isSelected ? color.withOpacity(0.12) : Colors.transparent,
42:             border: Border.all(color: isSelected ? color : Colors.grey.shade300),
43:             borderRadius: BorderRadius.circular(12),
44:             boxShadow: isSelected
45:                 ? [BoxShadow(color: color.withOpacity(0.08), blurRadius: 8, offset: Offset(0,4))]
46:                 : null,
47:           ),
48:           child: Column(
49:             mainAxisSize: MainAxisSize.min,
50:             mainAxisAlignment: MainAxisAlignment.center,
51:             children: [
52:               Icon(icon, color: isSelected ? color : Colors.grey.shade600),
53:               const SizedBox(height: 8),
54:               Text(label, textAlign: TextAlign.center, style: TextStyle(
55:                 color: isSelected ? Colors.black : Colors.grey.shade700,
56:                 fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
57:               )),
58:               if (isSelected) ...[
59:                 const SizedBox(height: 6),
60:                 Icon(Icons.check_circle, size: 18, color: color),
61:               ]
62:             ],
63:           ),
64:         ),
65:       ),
66:     );
67:   }
68: 
69:   @override
70:   Widget build(BuildContext context) {
71:     return Row(
72:       children: [
73:         _buildOption(ResponseRequestAvailabilityEnum.available, Icons.check, 'متوفر', Colors.green),
74:         _buildOption(ResponseRequestAvailabilityEnum.available_with_difference, Icons.edit, 'متوفر مع اختلاف', Colors.orange),
75:         // _buildOption(ResponseRequestAvailabilityEnum.unavailable, Icons.close, 'غير متوفر', Colors.red),
76:       ],
77:     );
78:   }
79: }
````

## File: lib/features/vendor/new_requests/widgets/build_response_request_bottom_heet.dart
````dart
  1: import 'dart:io';
  2: 
  3: import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
  4: import 'package:flutter/material.dart';
  5: import 'package:provider/provider.dart';
  6: 
  7: import '../../../../core/helpers/helpers.dart';
  8: import '../../../../core/providers/vendors/new_request_vendor_provider.dart';
  9: import '../../../../core/utils/connection_utils.dart';
 10: import '../../../../core/utils/constants/assets_path.dart';
 11: import '../../../../core/utils/constants/colors_constants.dart';
 12: import '../../../../core/utils/constants/enumeration.dart';
 13: import '../../../../core/utils/dialogUtils.dart';
 14: import '../../../../core/utils/form_validator.dart';
 15: import '../../../../core/utils/size_config.dart';
 16: import '../../../../widgets/custom_button.dart';
 17: import '../../../../widgets/custom_textfield.dart';
 18: import '../../../../widgets/icon_comp.dart';
 19: import 'availability_request_card_selector_widget.dart';
 20: 
 21: class BuildResponseRequestBottomSheet extends StatefulWidget {
 22:   const BuildResponseRequestBottomSheet({super.key,});
 23: 
 24:   @override
 25:   State<BuildResponseRequestBottomSheet> createState() =>
 26:       _BuildResponseRequestBottomSheetState();
 27: }
 28: 
 29: class _BuildResponseRequestBottomSheetState
 30:     extends State<BuildResponseRequestBottomSheet> {
 31:   final _formKey = GlobalKey<FormState>();
 32:   final priceController = TextEditingController();
 33:   final notesController = TextEditingController();
 34:   final warrantyController = TextEditingController();
 35: 
 36:   @override
 37:   void dispose() {
 38:     super.dispose();
 39:     priceController.dispose();
 40:     notesController.dispose();
 41:     warrantyController.dispose();
 42:   }
 43: 
 44:   @override
 45:   Widget build(BuildContext context) {
 46:     return Container(
 47:       width: SizeConfig.width,
 48:       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
 49:       margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
 50:       decoration: BoxDecoration(
 51:         color: Colors.white,
 52:         borderRadius: BorderRadius.circular(20),
 53:       ),
 54:       child: Consumer<NewRequestVendorProvider>(
 55:           builder: (context, provider, child) {
 56:         return Form(
 57:               key: _formKey,
 58:             child: ListView(
 59:           shrinkWrap: true,
 60:           physics: const ScrollPhysics(),
 61:           children: [
 62:             Align(
 63:               alignment: Alignment.centerLeft,
 64:               child: IconButton(
 65:                   onPressed: () => Navigator.pop(context),
 66:                   icon: const Icon(
 67:                     Icons.close,
 68:                     color: AppColor.primaryColor,
 69:                   )),
 70:             ),
 71:             SizedBox(
 72:               height: SizeConfig.heightResponsive(0.02),
 73:             ),
 74:             AvailabilityRequestCardSelectorWidget(
 75:               onChanged: (ResponseRequestAvailabilityEnum availability) {
 76:                 provider.changeResponseRequestAvailability(availability);
 77:               },
 78:             ),
 79:             const SizedBox(
 80:               height: 20,
 81:             ),
 82:             Row(
 83:               children: [
 84:                 IconComponent(
 85:                   icon: Image.asset(
 86:                     AssetsPath.icon_riyal,
 87:                     color: AppColor.primaryColor,
 88:                     height: 24,
 89:                     width: 24,
 90:                   ),
 91:                 ),
 92:                 const SizedBox(
 93:                   width: 10,
 94:                 ),
 95:                 Expanded(
 96:                   child: CustomTextField(
 97:                     label: 'السعر',
 98:                     hint: 'السعر',
 99:                     controller: priceController,
100:                     validator: (value) => FormValidatorUtils.numberValidator(
101:                         value,
102:                         isRequired: true),
103:                     fillColor: AppColor.secondaryColor,
104:                     filled: true,
105:                   ),
106:                 )
107:               ],
108:             ),
109:             const SizedBox(
110:               height: 15,
111:             ),
112:             Row(
113:               children: [
114:                 IconComponent(
115:                   icon: Icon(
116:                     Icons.assignment,
117:                     color: AppColor.primaryColor,
118:                   ),
119:                 ),
120:                 const SizedBox(
121:                   width: 10,
122:                 ),
123:                 Expanded(
124:                   child: CustomTextField(
125:                     label: 'ملاحظات',
126:                     hint: ' مثلا ملاحظات عن الإختلاف إذا وجد ...',
127:                     controller: notesController,
128:                     validator: (value) => FormValidatorUtils.textValidator(
129:                         value,
130:                         isRequired: (provider.responseRequestAvailability ==
131:                             ResponseRequestAvailabilityEnum.available)
132:                             ? false
133:                             : true),
134:                     fillColor: AppColor.secondaryColor,
135:                     filled: true,
136:                     maxLines: 4,
137:                   ),
138:                 )
139:               ],
140:             ),
141:             const SizedBox(
142:               height: 15,
143:             ),
144:             Row(
145:               children: [
146:                 IconComponent(
147:                   icon: Icon(
148:                     Icons.security,
149:                     color: AppColor.primaryColor,
150:                   ),
151:                 ),
152:                 const SizedBox(
153:                   width: 10,
154:                 ),
155:                 Expanded(
156:                   child: CustomTextField(
157:                     label: 'مدة الضمان (إختياري)',
158:                     hint: 'مثلاً ضمان 6 أشهر',
159:                     controller: warrantyController,
160:                     validator: (value) => FormValidatorUtils.textValidator(value, isRequired: false),
161:                     fillColor: AppColor.secondaryColor,
162:                     filled: true,
163:                   ),
164:                 )
165:               ],
166:             ),
167:             const SizedBox(
168:               height: 30,
169:             ),
170:             _MultipleImageResponsePickerWidget(),
171:             const SizedBox(
172:               height: 30,
173:             ),
174:             CustomButton(
175:               label: 'إرسال الرد',
176:               txtSize: SizeConfig.widthResponsive(0.04),
177:                loading: provider.isLoading,
178:               onTap: () async {
179: 
180:                   await _sendResponse(provider);
181:               },
182:             ),
183:             const SizedBox(
184:               height: 5,
185:             ),
186:           ],
187:         ));
188:       }),
189:     );
190:   }
191: 
192:   Future<void> _sendResponse(NewRequestVendorProvider provider) async {
193:     Helper.dismissKeyBoard();
194: 
195:     bool myValid = _formKey.currentState!.validate();
196:     if (myValid) {
197: 
198:       if(! await ConnectionUtils.hasInternetConnection()){
199:         DialogUtils().showNoInternetDialog(context);
200:         return;
201:       }
202: 
203:       await provider.sendResponseRequest(context, body: {
204:         'requestId': provider.detailsNewRequestsModel?.requestId.toString() ?? '',
205:         'price': priceController.text,
206:         'notes': notesController.text,
207:         'warranty': warrantyController.text,
208:         'responseRequestAvailability': provider.responseRequestAvailability.name
209:       });
210:     }
211:   }
212: }
213: 
214: class _MultipleImageResponsePickerWidget extends StatelessWidget {
215:   const _MultipleImageResponsePickerWidget({super.key});
216: 
217:   @override
218:   Widget build(BuildContext context) {
219:     return ListView(
220:       shrinkWrap: true,
221:       physics: const ScrollPhysics(),
222:       children: [
223:         CustomButton(
224:           label: 'إرفاق صور (إختياري)',
225:           txtSize: SizeConfig.widthResponsive(0.04),
226:           primaryColor: Colors.white,
227:           textColor: AppColor.primaryColor,
228:           borderColor: AppColor.primaryColor,
229:           bgOverlayColor: AppColor.primaryColor.withOpacity(0.2),
230:           onTap: () async {
231:             context.read<NewRequestVendorProvider>().pickImages();
232:           },
233:         ),
234:         Consumer<NewRequestVendorProvider>(
235:           builder: (context, provider, child) {
236:             return GridView.builder(
237:               shrinkWrap: true,
238:               physics: const NeverScrollableScrollPhysics(),
239:               padding: const EdgeInsets.all(8),
240:               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
241:                 crossAxisCount: 3, // عدد الأعمدة
242:                 crossAxisSpacing: 8,
243:                 mainAxisSpacing: 8,
244:               ),
245:               itemCount: provider.filesList.length,
246:               itemBuilder: (context, index) {
247:                 return Stack(
248:                   children: [
249:                     ClipRRect(
250:                       borderRadius: BorderRadius.circular(10),
251:                       child: Image.file(
252:                         File(provider.filesList[index].path),
253:                         fit: BoxFit.cover,
254:                         width: double.infinity,
255:                         height: double.infinity,
256:                       ),
257:                     ),
258:                     Positioned(
259:                       top: 5,
260:                       right: 5,
261:                       child: Container(
262:                         height: 30,
263:                         width: 30,
264:                         alignment: Alignment.center,
265:                         decoration: const BoxDecoration(
266:                           color: Colors.white,
267:                           borderRadius: BorderRadius.all(Radius.circular(30)),
268:                         ),
269:                         child: IconButton(onPressed: (){
270:                           provider.removeImage(index);
271:                         }, icon: const Icon(
272:                           Icons.delete,
273:                           color: Colors.red,
274:                           size: 18,
275:                         )),
276:                       ),
277:                     ),
278:                   ],
279:                 );
280:               },
281:             );
282:           },
283:         ),
284:       ],
285:     );
286:   }
287: }
````

## File: lib/features/vendor/profile/screens/profile_vendor_screen.dart
````dart
 1: import 'package:car_mediator_mobile/core/providers/vendors/profile_vendor_provider.dart';
 2: import 'package:car_mediator_mobile/features/vendor/profile/screens/update_commercial_number_image_widget.dart';
 3: import 'package:car_mediator_mobile/widgets/custom_loading.dart';
 4: import 'package:flutter/material.dart';
 5: import 'package:provider/provider.dart';
 6: 
 7: import '../../../../core/styles/styles.dart';
 8: import '../../../../core/utils/date_parser_utils.dart';
 9: import '../../../../core/utils/size_config.dart';
10: import '../../../../widgets/arrow_back_widget.dart';
11: import '../widgets/build_manage_profile_widget.dart';
12: 
13: class ProfileVendorScreen extends StatefulWidget {
14:   const ProfileVendorScreen({super.key,});
15: 
16:   @override
17:   State<ProfileVendorScreen> createState() => _ProfileVendorScreenState();
18: }
19: 
20: class _ProfileVendorScreenState extends State<ProfileVendorScreen> {
21:   final _formKey = GlobalKey<FormState>();
22:   final nameCompanyArController = TextEditingController();
23:   final phoneContactController = TextEditingController();
24:   final commercialRecordController = TextEditingController();
25:   final dateExpireCommercialRecordController = TextEditingController();
26:   final descriptionController = TextEditingController();
27: 
28:   @override
29:   void initState() {
30:     super.initState();
31:     WidgetsBinding.instance.addPostFrameCallback((_) async {
32:       final provider = Provider.of<ProfileVendorProvider>(context, listen: false);
33:       await provider.getVendorProfile();
34:       initValuesProfile(provider);
35: 
36:     });
37:   }
38: 
39:   void initValuesProfile(ProfileVendorProvider provider){
40:     nameCompanyArController.text = provider.profileVendorModel?.companyNameAr ?? '';
41:     phoneContactController.text = provider.profileVendorModel?.phoneContact ?? '';
42:     commercialRecordController.text = provider.profileVendorModel?.commercialRecord ?? '';
43:     dateExpireCommercialRecordController.text = DateParserUtils.getDateFromString(provider.profileVendorModel?.dateExpireCommercialRecord);
44:     descriptionController.text = provider.profileVendorModel?.description ?? '';
45:     provider.changeIsHidePhoneContact(provider.profileVendorModel?.isHidePhoneContact ?? false);
46:   }
47: 
48:   @override
49:   void dispose() {
50:     super.dispose();
51:     nameCompanyArController.dispose();
52:     phoneContactController.dispose();
53:     commercialRecordController.dispose();
54:     dateExpireCommercialRecordController.dispose();
55:     descriptionController.dispose();
56:   }
57: 
58:   @override
59:   Widget build(BuildContext context) {
60:     SizeConfig.init(context);
61:     final _provider = Provider.of<ProfileVendorProvider>(context);
62: 
63:     return Scaffold(
64:       appBar: AppBar(
65:         title: Text('إدارة الحساب', style: txtBold05,),
66:         centerTitle: true,
67:         elevation: 0,
68:         leading: ArrowBackWidget(myContext: context),
69:       ),
70:       body: _provider.isLoadingRefresh ? const CustomLoading() : Form(
71:           key: _formKey,
72:           child: RefreshIndicator(
73:             onRefresh: () async {
74:               await _provider.getVendorProfile();
75:               initValuesProfile(_provider);
76:             },
77:             child: ListView(
78:               physics: ScrollPhysics(),
79:               shrinkWrap: true,
80:               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
81:               children: [
82:                 BuildManageProfileWidget(
83:                   formKey: _formKey,
84:                   provider: _provider,
85:                   nameCompanyArController: nameCompanyArController,
86:                   commercialRecordController: commercialRecordController,
87:                   dateExpireCommercialRecordController: dateExpireCommercialRecordController,
88:                   descriptionController: descriptionController,
89:                   phoneContactController: phoneContactController,
90:                 ),
91:                 const SizedBox(height: 30,),
92:                 UpdateCommercialNumberImageWidget(provider: _provider,),
93:                 const SizedBox(height: 20,),
94:               ],
95:             ),)),
96:     );
97:   }
98: }
````

## File: lib/features/vendor/profile/screens/update_commercial_number_image_widget.dart
````dart
 1: import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
 2: import 'package:flutter/material.dart';
 3: 
 4: import '../../../../core/helpers/helpers.dart';
 5: import '../../../../core/providers/vendors/profile_vendor_provider.dart';
 6: import '../../../../core/utils/connection_utils.dart';
 7: import '../../../../core/utils/constants/colors_constants.dart';
 8: import '../../../../core/utils/dialogUtils.dart';
 9: import '../../../../core/utils/image_picker_bottom_sheet_utils.dart';
10: import '../../../../core/utils/size_config.dart';
11: import '../../../../widgets/container_fields_widget.dart';
12: import '../../../../widgets/custom_button.dart';
13: import '../../../../widgets/images/add_image_widget.dart';
14: 
15: class UpdateCommercialNumberImageWidget extends StatelessWidget {
16:   const UpdateCommercialNumberImageWidget({super.key, required this.provider});
17:   final ProfileVendorProvider provider;
18: 
19:   @override
20:   Widget build(BuildContext context) {
21:     return Column(
22:       mainAxisSize: MainAxisSize.min,
23:       children: [
24:         ContainerFieldsWidget(
25:             title: 'رفع صورة السجل التجاري',
26:             children: [
27:               const SizedBox(height: 20,),
28:               Text('صورة السجل التجاري', style: TextStyle(color: AppColor.primaryColor, fontSize: SizeConfig.widthResponsive(0.04), fontWeight: FontWeight.w500),),
29:               const SizedBox(height: 10,),
30:               AddImageWidget(
31:                   height: SizeConfig.heightResponsive(0.20),
32:                   file: provider.commercialRecordFile,
33:                   onTap: () async {
34:                     ImagePickerBottomSheet.show(context, (picked) {
35:                       if (picked != null) {
36:                         provider.changeCommercialRecordFile(picked);
37:                       }
38:                     });
39:                   },
40:                   deleteImage : () {
41:                     provider.changeCommercialRecordFile(null);
42:                   }
43:               ),
44:               SizedBox(height: SizeConfig.heightResponsive(0.02),),
45:               Padding(padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthResponsive(0.20),),
46:                 child: CustomButton(
47:                   primaryColor:AppColor.primaryColor,
48:                   txtSize: SizeConfig.widthResponsive(0.04),
49:                   loading: provider.isLoadingUploadCommercialRecord,
50:                   onTap: () async {
51:                     await _execute(context);
52:                   },
53:                   label: 'رفع',
54:                 ),)
55:             ]
56:         ),
57:       ],
58:     );
59:   }
60: 
61:   Future<void> _execute(BuildContext context)async {
62:     Helper.dismissKeyBoard();
63: 
64:     if(! await ConnectionUtils.hasInternetConnection()){
65:       DialogUtils().showNoInternetDialog(context);
66:       return;
67:     }
68: 
69:     if(provider.commercialRecordFile == null) {
70:       ToastHelper.showWarning('الرجاء إختيار صورة السجل التجاري');
71:       return;
72:     }
73: 
74:     await provider.uploadCommercialRecordImage(context,{});
75: 
76:   }
77: }
````

## File: lib/features/vendor/profile/widgets/build_manage_profile_widget.dart
````dart
  1: import 'package:flutter/material.dart';
  2: 
  3: import '../../../../core/helpers/helpers.dart';
  4: import '../../../../core/helpers/toast_helper.dart';
  5: import '../../../../core/providers/vendors/profile_vendor_provider.dart';
  6: import '../../../../core/utils/connection_utils.dart';
  7: import '../../../../core/utils/constants/assets_path.dart';
  8: import '../../../../core/utils/constants/colors_constants.dart';
  9: import '../../../../core/utils/date_parser_utils.dart';
 10: import '../../../../core/utils/dialogUtils.dart';
 11: import '../../../../core/utils/form_validator.dart';
 12: import '../../../../core/utils/image_picker_bottom_sheet_utils.dart';
 13: import '../../../../core/utils/size_config.dart';
 14: import '../../../../widgets/container_fields_widget.dart';
 15: import '../../../../widgets/custom_button.dart';
 16: import '../../../../widgets/custom_textfield.dart';
 17: import '../../../../widgets/icon_comp.dart';
 18: import '../../../../widgets/images/custom_image.dart';
 19: 
 20: class BuildManageProfileWidget extends StatelessWidget {
 21:   const BuildManageProfileWidget({super.key, required this.formKey , required this.provider, required this.nameCompanyArController, required this.phoneContactController, required this.commercialRecordController, required this.dateExpireCommercialRecordController, required this.descriptionController});
 22:   final GlobalKey<FormState> formKey;
 23:   final ProfileVendorProvider provider;
 24:   final TextEditingController nameCompanyArController;
 25:   final TextEditingController phoneContactController ;
 26:   final TextEditingController commercialRecordController;
 27:   final TextEditingController dateExpireCommercialRecordController;
 28:   final TextEditingController descriptionController;
 29: 
 30:   @override
 31:   Widget build(BuildContext context) {
 32:     return Column(
 33:       children: [
 34:         ContainerFieldsWidget(
 35:             title: 'إدارة ملف الشركة',
 36:             children: [
 37:               CustomImageWidget(
 38:                 fileImage: provider.logo,
 39:                 urlImage: provider.profileVendorModel?.logo,
 40:                 width: SizeConfig.widthResponsive(0.25),
 41:                 height: SizeConfig.widthResponsive(0.25),
 42:                 radius: 60,
 43:                 assetDefaultPath: AssetsPath.user_image,
 44:               ),
 45:               Padding(padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthResponsive(0.20),),
 46:                 child: TextButton(
 47:                   onPressed: (){
 48:                     ImagePickerBottomSheet.show(context, (picked) {
 49:                       if (picked != null) {
 50:                         provider.changeLogo(picked);
 51:                       }
 52:                     });
 53:                   },
 54:                   child:  Text('+  إضافة شعار الشركة', style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.w600),),
 55:                 ),
 56:               ),
 57:               const SizedBox(height: 10,),
 58:               Row(
 59:                 children: [
 60:                   const IconComponent(icon: Icon(Icons.business_sharp, color: AppColor.primaryColor,),),
 61:                   const SizedBox(width: 10,),
 62:                   Expanded(child: CustomTextField(
 63:                     label: 'إسم الشركة',
 64:                     hint: 'إسم الشركة',
 65:                     controller: nameCompanyArController,
 66:                     validator: (value) => FormValidatorUtils.textValidator(value, isRequired: true),
 67:                     fillColor: AppColor.secondaryColor,
 68:                     filled: true,
 69:                   ),)
 70:                 ],
 71:               ),
 72:               const SizedBox(height: 15,),
 73:               Row(
 74:                 children: [
 75:                   const IconComponent(icon: Icon(Icons.phone_android, color: AppColor.primaryColor,),),
 76:                   const SizedBox(width: 10,),
 77:                   Expanded(child: CustomTextField(
 78:                     label: 'رقم التواصل (إختياري)',
 79:                     hint: '05xxxxxxxx',
 80:                     controller: phoneContactController,
 81:                     validator: (value) => FormValidatorUtils.phoneValidator(value),
 82:                     fillColor: AppColor.secondaryColor,
 83:                     filled: true,
 84:                   ),)
 85:                 ],
 86:               ),
 87:               Row(
 88:                 mainAxisAlignment: MainAxisAlignment.start,
 89:                 children: [
 90:                   Checkbox(
 91:                     value: provider.isHidePhoneContact,
 92:                     onChanged: (value) {
 93:                       provider.changeIsHidePhoneContact(value ?? false);
 94:                     },
 95:                   ),
 96:                   const SizedBox(width: 4),
 97:                   const Text('إخفاء رقم التواصل عن العملاء'),
 98:                 ],
 99:               ),
100: 
101:               const SizedBox(height: 10,),
102:               Row(
103:                 children: [
104:                   const IconComponent(icon: Icon(Icons.assignment, color: AppColor.primaryColor,),),
105:                   const SizedBox(width: 10,),
106:                   Expanded(child: CustomTextField(
107:                     label: 'رقم السجل التجاري',
108:                     hint: 'رقم السجل التجاري',
109:                     controller: commercialRecordController,
110:                     validator: (value) => FormValidatorUtils.textValidator(value, isRequired: true),
111:                     fillColor: AppColor.secondaryColor,
112:                     filled: true,
113:                   ),)
114:                 ],
115:               ),
116:               const SizedBox(height: 15,),
117:               Row(
118:                 children: [
119:                   const IconComponent(icon: Icon(Icons.date_range, color: AppColor.primaryColor,),),
120:                   const SizedBox(width: 10,),
121:                   Expanded(child: CustomTextField(
122:                     label: 'تاريخ إنتهاء السجل التجاري',
123:                     hint: 'تاريخ إنتهاء السجل التجاري',
124:                     readOnly: true,
125:                     controller: dateExpireCommercialRecordController,
126:                     fillColor: AppColor.secondaryColor,
127:                     filled: true,
128:                     validator: (value) => FormValidatorUtils.textValidator(
129:                       value,
130:                       isRequired: true,
131:                     ),
132:                     onTap: () async {
133:                       dateExpireCommercialRecordController.text = await DateParserUtils.getDatePicker(context);
134:                     },
135:                   ),)
136:                 ],
137:               ),
138:               const SizedBox(height: 15,),
139:               Row(
140:                 children: [
141:                   const IconComponent(icon: Icon(Icons.description, color: AppColor.primaryColor,),),
142:                   const SizedBox(width: 10,),
143:                   Expanded(child: CustomTextField(
144:                     label: 'الوصف',
145:                     hint: 'نبذة مختصرة عن الشركة',
146:                     controller: descriptionController,
147:                     validator: (value) => FormValidatorUtils.textValidator(value),
148:                     fillColor: AppColor.secondaryColor,
149:                     filled: true,
150:                     maxLines: 5,
151:                     maxLength: 1000,
152:                   ),)
153:                 ],
154:               ),
155:               // const SizedBox(height: 20,),
156:               // Text('صورة السجل التجاري', style: TextStyle(color: AppColor.primaryColor, fontSize: SizeConfig.widthResponsive(0.04), fontWeight: FontWeight.w500),),
157:               // const SizedBox(height: 10,),
158:               // AddImageWidget(
159:               //     height: SizeConfig.heightResponsive(0.20),
160:               //     file: _provider.selectedCommercialRecordImage,
161:               //     onTap: () async {
162:               //       ImagePickerBottomSheet.show(context, (picked) {
163:               //         if (picked != null) {
164:               //           _provider.changeSelectedCommercialRecordImage(picked);
165:               //         }
166:               //       });
167:               //     },
168:               //     deleteImage : () {
169:               //       _provider.changeSelectedCommercialRecordImage(null);
170:               //     }
171:               // ),
172:               SizedBox(height: SizeConfig.heightResponsive(0.01),),
173:               Padding(padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthResponsive(0.20),),
174:                 child: CustomButton(
175:                   primaryColor:AppColor.primaryColor,
176:                   txtSize: SizeConfig.widthResponsive(0.04),
177:                   loading: provider.isLoading,
178:                   onTap: () async {
179:                     await _execute(context);
180:                   },
181:                   label: 'تعديل',
182:                 ),)
183:             ]
184:         ),
185:       ],
186:     );
187:   }
188: 
189: Future<void> _execute(BuildContext context)async {
190:   Helper.dismissKeyBoard();
191: 
192:   bool myValid = formKey.currentState!.validate();
193:   if (myValid) {
194: 
195:     if(! await ConnectionUtils.hasInternetConnection()){
196:       DialogUtils().showNoInternetDialog(context);
197:       return;
198:     }
199: 
200:     await provider.updateVendorProfile(context,{
201:       'companyNameAr' : nameCompanyArController.text,
202:       'description' : descriptionController.text,
203:       'phoneContact' : phoneContactController.text,
204:       'isHidePhoneContact' : provider.isHidePhoneContact ? '1' : '0',
205:       'commercialRecord' : commercialRecordController.text,
206:       'dateExpireCommercialRecord' : dateExpireCommercialRecordController.text,
207:     });
208:   }
209: }
210: }
````

## File: lib/features/vendor/register/widgets/app_bar_register_widget.dart
````dart
 1: import 'package:car_mediator_mobile/core/styles/styles.dart';
 2: import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
 3: import 'package:flutter/material.dart';
 4: import '../../../../core/utils/size_config.dart';
 5: 
 6: class AppBarRegisterWidget extends StatelessWidget implements PreferredSizeWidget {
 7:   const AppBarRegisterWidget({super.key});
 8: 
 9:   @override
10:   Widget build(BuildContext context) {
11:     return AppBar(
12:       backgroundColor: Colors.white,
13:       title: ListTile(
14:         title: Text('إنشاء حساب', style: txtLightRegular035,),
15:         subtitle: Text('طلب الإنظمام كشركة',
16:           style: txtSemiBold033,
17:         ),),
18:       elevation: 0,
19:       titleSpacing: - SizeConfig.widthResponsive(0.04),
20:       leading: ArrowBackWidget(myContext: context),
21:     );
22:   }
23: 
24:   @override
25:   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
26: }
````

## File: lib/features/vendor/responses/screens/details_response_request_screen.dart
````dart
  1: import 'package:car_mediator_mobile/core/styles/styles.dart';
  2: import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
  3: import 'package:flutter/material.dart';
  4: import 'package:provider/provider.dart';
  5: import '../../../../core/providers/vendors/response_request_provider.dart';
  6: import '../../../../core/utils/size_config.dart';
  7: import '../../../../core/utils/utils.dart';
  8: import '../../../../widgets/custom_loading.dart';
  9: import '../widgets/build_request_details_response_widget.dart';
 10: import '../widgets/build_response_details_widget.dart';
 11: import '../widgets/build_user_details_response_widget.dart';
 12: 
 13: class DetailsResponseRequestScreen extends StatefulWidget {
 14:   const DetailsResponseRequestScreen({super.key, required this.responseId});
 15:   final int responseId;
 16: 
 17:   @override
 18:   _DetailsResponseRequestScreenState createState() =>
 19:       _DetailsResponseRequestScreenState();
 20: }
 21: 
 22: class _DetailsResponseRequestScreenState
 23:     extends State<DetailsResponseRequestScreen> {
 24:   @override
 25:   void initState() {
 26:     super.initState();
 27: 
 28:     WidgetsBinding.instance.addPostFrameCallback((_) async {
 29:       final provider =
 30:           Provider.of<ResponseRequestProvider>(context, listen: false);
 31:       await provider.detailsResponseRequest(responseId: widget.responseId);
 32:     });
 33:   }
 34: 
 35:   @override
 36:   Widget build(BuildContext context) {
 37:     SizeConfig.init(context);
 38: 
 39:     return Scaffold(
 40:       appBar: AppBar(
 41:         backgroundColor: Colors.white,
 42:         title: Text(
 43:           'تفاصيل الرد : ' + ' ${Utils.numberFormatting(widget.responseId)}',
 44:           style: txtMedium05,
 45:         ),
 46:         leading: ArrowBackWidget(myContext: context),
 47:         centerTitle: true,
 48:         elevation: 0,
 49:       ),
 50:       body: Consumer<ResponseRequestProvider>(
 51:         builder: (context, provider, child) {
 52:           if (provider.isLoading) {
 53:             return const CustomLoading();
 54:           }
 55: 
 56:           return RefreshIndicator(
 57:             onRefresh: () {
 58:               return provider.detailsResponseRequest(
 59:                   responseId: widget.responseId);
 60:             },
 61:             child: ListView(
 62:               padding: const EdgeInsets.all(12),
 63:               shrinkWrap: true,
 64:               children: [
 65:                 BuildUserDetailsResponseWidget(model: provider.detailsResponseRequestModel,),
 66:                 const SizedBox(
 67:                   height: 20,
 68:                 ),
 69:                 BuildRequestDetailsResponseWidget(
 70:                   model: provider.detailsResponseRequestModel,
 71:                 ),
 72:                 const SizedBox(
 73:                   height: 20,
 74:                 ),
 75:                 BuildResponseDetailsWidget(model: provider.detailsResponseRequestModel,),
 76:                 const SizedBox(
 77:                   height: 20,
 78:                 ),
 79:               ],
 80:             ),
 81:           );
 82:         },
 83:       ),
 84: 
 85:       // bottomNavigationBar: BottomAppBar(
 86:       //   child: Padding(
 87:       //     padding: const EdgeInsets.symmetric(
 88:       //       horizontal: 0,
 89:       //     ),
 90:       //     child: CustomButton(
 91:       //       label: 'الرد على الطلب',
 92:       //       txtSize: SizeConfig.widthResponsive(0.04),
 93:       //       onTap: (){
 94:       //         customBottomSheet(context,
 95:       //             child: const BuildResponseRequestBottomSheet(),
 96:       //             isDismissible: false);
 97:       //       },
 98:       //     ),
 99:       //   ),
100:       // ),
101:     );
102:   }
103: }
````

## File: lib/features/vendor/responses/screens/my_response_request_screen.dart
````dart
 1: import 'package:car_mediator_mobile/core/styles/styles.dart';
 2: import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
 3: import 'package:flutter/material.dart';
 4: import 'package:provider/provider.dart';
 5: 
 6: import '../../../../core/providers/vendors/response_request_provider.dart';
 7: import '../../../../core/utils/size_config.dart';
 8: import '../../../../widgets/custom_loading.dart';
 9: import '../../../../widgets/vendor/response_vendor_card.dart';
10: 
11: class MyResponseRequestScreen extends StatefulWidget {
12:   const MyResponseRequestScreen({super.key});
13: 
14:   @override
15:   _MyResponseRequestScreenState createState() => _MyResponseRequestScreenState();
16: }
17: 
18: class _MyResponseRequestScreenState extends State<MyResponseRequestScreen> {
19: 
20:   final ScrollController _scrollController = ScrollController();
21: 
22:   @override
23:   void initState() {
24:     super.initState();
25: 
26:     WidgetsBinding.instance.addPostFrameCallback((_) async {
27:       final provider = Provider.of<ResponseRequestProvider>(context, listen: false);
28:       provider.resetPagination();
29:       await provider.getMyResponseRequests();
30:     });
31: 
32:     _scrollController.addListener(() {
33:       final p = Provider.of<ResponseRequestProvider>(context, listen: false);
34:       if (_scrollController.position.pixels ==
35:           _scrollController.position.maxScrollExtent &&
36:           !p.isLoading &&
37:           p.hasMore) {
38:         p.getMyResponseRequests(loadMore: true);
39:       }
40:     });
41:   }
42: 
43:   @override
44:   void dispose() {
45:     super.dispose();
46:     _scrollController.dispose();
47:   }
48: 
49:   @override
50:   Widget build(BuildContext context) {
51:     SizeConfig.init(context);
52: 
53:     return Scaffold(
54:       appBar: AppBar(
55:         backgroundColor: Colors.white,
56:         title: Text("ردود الشركة", style: txtMedium05,),
57:         leading: ArrowBackWidget(myContext: context),
58:         centerTitle: true,
59:         elevation: 0,
60:       ),
61:       body: Consumer<ResponseRequestProvider>(
62:         builder: (context, provider, child) {
63: 
64:           if ( provider.responseRequestModelList.isEmpty && provider.isLoading) {
65:             return const CustomLoading();
66:           }
67: 
68:           return RefreshIndicator(
69:             onRefresh: provider.refreshGetMyResponseRequests,
70:             child: ListView.builder(
71:               controller: _scrollController,
72:               physics: const AlwaysScrollableScrollPhysics(),
73:               itemCount: provider.responseRequestModelList.length + (provider.isLoading ? 1 : 0),
74:               shrinkWrap: true,
75:               padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
76:               itemBuilder: (context, index) {
77:                 if (index < provider.responseRequestModelList.length) {
78:                   return Padding(padding: const EdgeInsets.only(bottom: 12),
79:                     child: ResponseVendorCard(model: provider.responseRequestModelList[index],),);
80:                 } else {
81:                   return const Padding(padding: EdgeInsets.only(bottom: 10),
82:                     child: CustomLoading(radius: 18,),
83:                   );
84:                 }
85:               },
86:             ),);
87:         },
88:       ),
89:     );
90:   }
91: }
````

## File: lib/features/vendor/responses/widgets/build_request_details_response_widget.dart
````dart
  1: import 'package:cached_network_image/cached_network_image.dart';
  2: import 'package:car_mediator_mobile/core/styles/styles.dart';
  3: import 'package:flutter/material.dart';
  4: 
  5: import '../../../../core/data_sources/local/secure_storage.dart';
  6: import '../../../../core/data_sources/remote/api_path.dart';
  7: import '../../../../core/utils/date_parser_utils.dart';
  8: import '../../../../core/utils/size_config.dart';
  9: import '../../../../models/response_request_model.dart';
 10: import '../../../../widgets/container_fields_widget.dart';
 11: import '../../../../widgets/custom_loading.dart';
 12: import '../../../../widgets/item_table_widget.dart';
 13: import '../../../../widgets/request_status_widget.dart';
 14: 
 15: class BuildRequestDetailsResponseWidget extends StatelessWidget {
 16:   const BuildRequestDetailsResponseWidget({super.key, required this.model});
 17:   final ResponseRequestModel? model;
 18: 
 19:   @override
 20:   Widget build(BuildContext context) {
 21:     return ContainerFieldsWidget(title: 'تفاصيل الطلب', children: [
 22:       Row(
 23:         mainAxisSize: MainAxisSize.min,
 24:         mainAxisAlignment: MainAxisAlignment.center,
 25:         crossAxisAlignment: CrossAxisAlignment.center,
 26:         children: [
 27:           Text('حالة الطلب :', style: txtBold04,),
 28:           const SizedBox(width: 10,),
 29:           RequestStatusWidget(
 30:             status:
 31:             model?.requestStatus ??
 32:                 '',
 33:           ),
 34:         ],
 35:       ),
 36: 
 37:       const SizedBox(
 38:         height: 20,
 39:       ),
 40:       ItemTableWidget(
 41:         keyString: 'القسم',
 42:         value:
 43:         model?.catNameAr ?? '',
 44:       ),
 45:       ItemTableWidget(
 46:         keyString: 'مدينة العميل',
 47:         value: model?.cityCustomerNameAr ??
 48:             '',
 49:       ),
 50:       ItemTableWidget(
 51:         keyString: 'نطاق المدن',
 52:         value: model?.cities
 53:             .join(" - ") ??
 54:             '',
 55:       ),
 56:       if (model?.brandsNames
 57:           .isNotEmpty ??
 58:           false)
 59:         ItemTableWidget(
 60:           keyString: 'الماركة',
 61:           value: model?.brandsNames
 62:               .join(" - ") ??
 63:               '',
 64:         ),
 65:       ItemTableWidget(
 66:         keyString: 'تاريخ الطلب',
 67:         value: DateParserUtils.getDateWithTimeFromString(
 68:             model?.requestDate ??
 69:                 ''),
 70:       ),
 71:       Column(
 72:         mainAxisSize: MainAxisSize.min,
 73:         children: model?.fields
 74:             .map((e) => ItemTableWidget(
 75:           keyString: e['key'],
 76:           value: e['value'],
 77:         ))
 78:             .toList() ??
 79:             [],
 80:       ),
 81:       ItemTableWidget(
 82:         keyString: 'تفاصيل الطلب',
 83:         value:
 84:         model?.description ?? '',
 85:       ),
 86:       const SizedBox(
 87:         height: 10,
 88:       ),
 89:       Column(
 90:         mainAxisSize: MainAxisSize.min,
 91:         children: model?.images
 92:             .map((e) => FutureBuilder<String?>(
 93:           future: SecureStorage.getToken(),
 94:           builder: (context, snapshot) {
 95:             if (!snapshot.hasData) {
 96:               return const CustomLoading(
 97:                 radius: 18,
 98:               );
 99:             }
100:             final token = snapshot.data ?? '';
101: 
102:             return CachedNetworkImage(
103:               height: SizeConfig.heightResponsive(0.30),
104:               width: SizeConfig.width,
105:               imageUrl:
106:               "${ApiPath.uploadsPrivate}${e['image_name']}",
107:               httpHeaders: {
108:                 "Authorization": "Bearer $token",
109:               },
110:               placeholder: (context, url) =>
111:               const CustomLoading(
112:                 radius: 18,
113:               ),
114:               errorWidget: (context, url, error) =>
115:               const Icon(Icons.error),
116:             );
117:           },
118:         ))
119:             .toList() ??
120:             [],
121:       ),
122:       const SizedBox(
123:         height: 20,
124:       ),
125:     ]);
126:   }
127: }
````

## File: lib/features/vendor/responses/widgets/build_response_details_widget.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../../../../core/utils/constants/enumeration.dart';
 4: import '../../../../core/utils/date_parser_utils.dart';
 5: import '../../../../core/utils/utils.dart';
 6: import '../../../../models/response_request_model.dart';
 7: import '../../../../widgets/container_fields_widget.dart';
 8: import '../../../../widgets/item_table_widget.dart';
 9: 
10: class BuildResponseDetailsWidget extends StatelessWidget {
11:   const BuildResponseDetailsWidget({super.key, required this.model});
12:   final ResponseRequestModel? model;
13: 
14:   @override
15:   Widget build(BuildContext context) {
16:     return ContainerFieldsWidget(title: 'تفاصيل الطلب', children: [
17: 
18:       ItemTableWidget(
19:         keyString: 'رقم الرد',
20:         value:
21:         Utils.numberFormatting(model?.responseId ?? 0),
22:       ),
23: 
24:       ItemTableWidget(
25:         keyString: 'تاريخ الرد',
26:         value: DateParserUtils.getDateWithTimeFromString(
27:             model?.responseDate ??
28:                 ''),
29:       ),
30: 
31:       ItemTableWidget(
32:         keyString: 'حالة الرد',
33:         value: (model?.responseStatus ?? '') ==
34:             ResponseRequestAvailabilityEnum.available.name
35:             ? 'متوفر'
36:             : (model?.responseStatus ?? '') ==
37:             ResponseRequestAvailabilityEnum
38:                 .available_with_difference.name
39:             ? 'متوفر مع إختلاف'
40:             : 'لم يتم الرد',
41:       ),
42: 
43:       ItemTableWidget(
44:         keyString: 'ملاحظات الرد',
45:         value:
46:         model?.noteResponse ?? '',
47:       ),
48:       ItemTableWidget(
49:         keyString: 'مدة الضمان',
50:         value:
51:         model?.warrantyResponse ?? 'لا يوجد',
52:       ),
53:       ItemTableWidget(
54:         keyString: 'السعر',
55:         value:
56:         '${model?.priceResponse ?? 0}  ر.س',
57:       ),
58: 
59:       const SizedBox(
60:         height: 10,
61:       ),
62:     ]);
63:   }
64: }
````

## File: lib/features/vendor/responses/widgets/build_user_details_response_widget.dart
````dart
 1: import 'package:car_mediator_mobile/core/styles/styles.dart';
 2: import 'package:car_mediator_mobile/core/utils/constants/assets_path.dart';
 3: import 'package:car_mediator_mobile/core/utils/size_config.dart';
 4: import 'package:car_mediator_mobile/widgets/custom_button.dart';
 5: import 'package:flutter/material.dart';
 6: 
 7: import '../../../../core/utils/constants/colors_constants.dart';
 8: import '../../../../core/utils/launcher_url_utils.dart';
 9: import '../../../../models/response_request_model.dart';
10: import '../../../../widgets/container_fields_widget.dart';
11: import '../../../../widgets/images/custom_image.dart';
12: 
13: class BuildUserDetailsResponseWidget extends StatelessWidget {
14:   const BuildUserDetailsResponseWidget({super.key, required this.model});
15:   final ResponseRequestModel? model;
16: 
17:   @override
18:   Widget build(BuildContext context) {
19:     return ContainerFieldsWidget(title: 'بيانات العميل', children: [
20:       Row(
21:         children: [
22:           CustomImageWidget(
23:             urlImage: model?.userLogo,
24:             width: SizeConfig.widthResponsive(0.20),
25:             height: SizeConfig.widthResponsive(0.20),
26:             assetDefaultPath: AssetsPath.user_image,
27:           ),
28:           const SizedBox(
29:             width: 16,
30:           ),
31:           Expanded(
32:               child: Column(
33:             mainAxisSize: MainAxisSize.min,
34:             crossAxisAlignment: CrossAxisAlignment.start,
35:             mainAxisAlignment: MainAxisAlignment.start,
36:             children: [
37:               Text(
38:                 '${model?.userName ?? ''}',
39:                 style: txtBold04,
40:               ),
41:               SizedBox(
42:                 height: 10,
43:               ),
44:               Row(
45:                 children: [
46:                   Expanded(flex:1, child: CustomButton(
47:                     label: 'إتصال',
48:                     onTap: () async {
49:                       await LauncherUrlUtils.makePhoneCall(model?.userPhone ?? '');
50:                     },
51:                     txtSize: SizeConfig.widthResponsive(0.04),
52:                     icon: const Icon(Icons.phone,color: Colors.white),
53:                   ),),
54:                   SizedBox(
55:                     width: 10,
56:                   ),
57:                   Expanded(flex:1, child: CustomButton(
58:                     label: 'دردشة',
59:                     onTap: (){
60: 
61:                     },
62:                     txtSize: SizeConfig.widthResponsive(0.04),
63:                     primaryColor: Colors.transparent,
64:                     borderColor: AppColor.primaryColor,
65:                     textColor: AppColor.primaryColor,
66:                     bgOverlayColor: AppColor.primaryColor.withOpacity(0.2),
67:                     icon: const Icon(Icons.chat_outlined,color: AppColor.primaryColor),
68:                   ),),
69:                 ],
70:               )
71:             ],
72:           ))
73:         ],
74:       ),
75:     ]);
76:   }
77: }
````

## File: lib/features/vendor/specialties/screens/category_specialties_screen.dart
````dart
  1: import 'package:car_mediator_mobile/widgets/custom_loading.dart';
  2: import 'package:flutter/material.dart';
  3: import 'package:provider/provider.dart';
  4: 
  5: import '../../../../core/helpers/helpers.dart';
  6: import '../../../../core/providers/vendors/specialty_vendor_provider.dart';
  7: import '../../../../core/styles/styles.dart';
  8: import '../../../../core/utils/connection_utils.dart';
  9: import '../../../../core/utils/constants/colors_constants.dart';
 10: import '../../../../core/utils/dialogUtils.dart';
 11: import '../../../../core/utils/size_config.dart';
 12: import '../../../../models/category_model.dart';
 13: import '../../../../widgets/arrow_back_widget.dart';
 14: import '../../../../widgets/custom_button.dart';
 15: import '../../../../widgets/dropdown_search/categories_dropdown_search.dart';
 16: import '../../../../widgets/icon_comp.dart';
 17: 
 18: class CategorySpecialtiesScreen extends StatefulWidget {
 19:   const CategorySpecialtiesScreen({super.key});
 20: 
 21:   @override
 22:   State<CategorySpecialtiesScreen> createState() =>
 23:       _CategorySpecialtiesScreenState();
 24: }
 25: 
 26: class _CategorySpecialtiesScreenState extends State<CategorySpecialtiesScreen> {
 27: 
 28:   final _formKey = GlobalKey<FormState>();
 29: 
 30:   @override
 31:   void initState() {
 32:     super.initState();
 33:     WidgetsBinding.instance.addPostFrameCallback((_) {
 34:       Provider.of<SpecialtyVendorProvider>(context, listen: false)
 35:           .getCategoriesSpecialtyVendor(context);
 36:     });
 37:   }
 38: 
 39:   @override
 40:   Widget build(BuildContext context) {
 41:     final _provider = Provider.of<SpecialtyVendorProvider>(context);
 42: 
 43:     return Scaffold(
 44:       backgroundColor: Colors.white,
 45:       appBar: AppBar(
 46:         title: Text(
 47:           'الخدمات',
 48:           style: txtBold05,
 49:         ),
 50:         centerTitle: true,
 51:         elevation: 0,
 52:         leading: ArrowBackWidget(myContext: context),
 53:       ),
 54:       body: _provider.isLoadingRefresh
 55:           ? const CustomLoading()
 56:           : Form(
 57:         key: _formKey,
 58:         child: RefreshIndicator(
 59:           onRefresh: (){
 60:             return _provider.getCategoriesSpecialtyVendor(context);
 61:           },
 62:           child: ListView(
 63:             physics:  AlwaysScrollableScrollPhysics(),
 64:             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
 65:             children: [
 66:               Text(
 67:                   'إختر الخدمات التي تقدمها ... لتلقي طلبات حسب تخصصك و خدماتك.'),
 68:               const SizedBox(
 69:                 height: 30,
 70:               ),
 71:               Row(
 72:                 children: [
 73:                   const IconComponent(
 74:                     icon: Icon(
 75:                       Icons.miscellaneous_services,
 76:                       color: AppColor.primaryColor,
 77:                     ),
 78:                   ),
 79:                   const SizedBox(
 80:                     width: 10,
 81:                   ),
 82:                   Expanded(
 83:                     child: CategoriesDropdownSearch(
 84:                       filled: true,
 85:                       fillColor: AppColor.secondaryColor,
 86:                       selectedCategories: _provider.selectedCategoriesList,
 87:                       onChanged: (List<CategoryModel>? selectedItems) {
 88:                         _provider.changeCategories(selectedItems);
 89:                       },
 90:                     ),
 91:                   )
 92:                 ],
 93:               ),
 94:               SizedBox(
 95:                 height: SizeConfig.heightResponsive(0.04),
 96:               ),
 97:               CustomButton(
 98:                 primaryColor: AppColor.primaryColor,
 99:                 txtSize: SizeConfig.widthResponsive(0.05),
100:                 loading: _provider.isLoading,
101:                 onTap: () async {
102:                   DialogUtils().showConfirmDialog(
103:                       context,
104:                       message: 'هل أنت متأكد من حفظ هذه التغيرات',
105:                       confirm: () async {
106:                         await _execute(context, _provider);
107:                       }
108:                   );
109:                 },
110:                 label: 'حفظ',
111:               ),
112:             ],
113:           ),),
114:       ),
115:     );
116:   }
117: 
118:   Future<void> _execute(BuildContext context, SpecialtyVendorProvider provider)async {
119:     Helper.dismissKeyBoard();
120: 
121:      bool myValid = _formKey.currentState!.validate();
122:     if (myValid) {
123: 
124:       if(! await ConnectionUtils.hasInternetConnection()){
125:         DialogUtils().showNoInternetDialog(context);
126:         return;
127:       }
128: 
129:       await provider.updateCategorySpecialtyVendor();
130:     }
131:   }
132: }
````

## File: lib/features/vendor/specialties/screens/specialties_screen.dart
````dart
 1: import 'package:car_mediator_mobile/core/styles/styles.dart';
 2: import 'package:car_mediator_mobile/features/vendor/specialties/screens/vendor_brand_car_screen.dart';
 3: import 'package:car_mediator_mobile/features/vendor/specialties/screens/vendor_cities_screen.dart';
 4: import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
 5: import 'package:flutter/material.dart';
 6: 
 7: import '../../../../core/utils/constants/colors_constants.dart';
 8: import '../../../../core/utils/size_config.dart';
 9: import '../../../../widgets/components.dart';
10: import '../../../../widgets/vendor/dashboard_item_home.dart';
11: import 'category_specialties_screen.dart';
12: 
13: class SpecialtiesScreen extends StatelessWidget {
14:   const SpecialtiesScreen({super.key});
15: 
16:   @override
17:   Widget build(BuildContext context) {
18:     SizeConfig.init(context);
19: 
20:     return Scaffold(
21:       backgroundColor: Colors.white,
22:       appBar: AppBar(
23:         title: Text('التخصصات', style: txtBold05,),
24:         centerTitle: true,
25:         elevation: 0,
26:         leading: ArrowBackWidget(myContext: context),
27:       ),
28: 
29:       body: Padding(
30:         padding: const EdgeInsets.symmetric(horizontal: 30),
31:       child: Column(
32:         mainAxisAlignment: MainAxisAlignment.center,
33:         crossAxisAlignment: CrossAxisAlignment.center,
34:         children: [
35:           DashboardItemHome(
36:             title: 'الخدمات',
37:             icon: const Icon(Icons.home_repair_service, color: AppColor.primaryColor, size: 32),
38:             subTitle: 'الخدمات والأقسام',
39:             onTap: (){
40:               navigationPush(context, const CategorySpecialtiesScreen());
41:             },
42:           ),
43:           const SizedBox(height: 15,),
44:           DashboardItemHome(
45:             title: 'المدن',
46:             icon: const Icon(Icons.location_on, color: AppColor.primaryColor, size: 32),
47:             subTitle: 'المدن التي تتواجد فيها خدماتك',
48:             onTap: (){
49:               navigationPush(context, const VendorCitiesScreen());
50:             },
51:           ),
52:           // const SizedBox(height: 15,),
53:           // DashboardItemHome(
54:           //   title: 'الماركات',
55:           //   icon: const Icon(Icons.label_important, color: AppColor.primaryColor, size: 32),
56:           //   subTitle: 'ماركات الخدمات المتوفرة معك',
57:           //   onTap: (){
58:           //     navigationPush(context, const VendorBrandCarScreen());
59:           //   },
60:           // ),
61:         ],
62:       ),),
63:     );
64:   }
65: }
````

## File: lib/features/vendor/specialties/screens/vendor_brand_car_screen.dart
````dart
  1: import 'package:car_mediator_mobile/widgets/custom_loading.dart';
  2: import 'package:flutter/material.dart';
  3: import 'package:provider/provider.dart';
  4: 
  5: import '../../../../core/helpers/helpers.dart';
  6: import '../../../../core/providers/vendors/specialty_vendor_provider.dart';
  7: import '../../../../core/styles/styles.dart';
  8: import '../../../../core/utils/connection_utils.dart';
  9: import '../../../../core/utils/constants/colors_constants.dart';
 10: import '../../../../core/utils/dialogUtils.dart';
 11: import '../../../../core/utils/size_config.dart';
 12: import '../../../../models/category_model.dart';
 13: import '../../../../widgets/arrow_back_widget.dart';
 14: import '../../../../widgets/custom_button.dart';
 15: import '../../../../widgets/dropdown_search/categories_dropdown_search.dart';
 16: import '../../../../widgets/icon_comp.dart';
 17: 
 18: class VendorBrandCarScreen extends StatefulWidget {
 19:   const VendorBrandCarScreen({super.key});
 20: 
 21:   @override
 22:   State<VendorBrandCarScreen> createState() =>
 23:       _VendorBrandCarScreenState();
 24: }
 25: 
 26: class _VendorBrandCarScreenState extends State<VendorBrandCarScreen> {
 27: 
 28:   final _formKey = GlobalKey<FormState>();
 29: 
 30:   @override
 31:   void initState() {
 32:     super.initState();
 33:     WidgetsBinding.instance.addPostFrameCallback((_) {
 34:       Provider.of<SpecialtyVendorProvider>(context, listen: false)
 35:           .getVendorBrandsCar(context);
 36:     });
 37:   }
 38: 
 39:   @override
 40:   Widget build(BuildContext context) {
 41:     final _provider = Provider.of<SpecialtyVendorProvider>(context);
 42: 
 43:     return Scaffold(
 44:       backgroundColor: Colors.white,
 45:       appBar: AppBar(
 46:         title: Text(
 47:           'الخدمات',
 48:           style: txtBold05,
 49:         ),
 50:         centerTitle: true,
 51:         elevation: 0,
 52:         leading: ArrowBackWidget(myContext: context),
 53:       ),
 54:       body: _provider.isLoadingRefresh
 55:           ? const CustomLoading()
 56:           : Form(
 57:         key: _formKey,
 58:         child: RefreshIndicator(
 59:           onRefresh: (){
 60:             return _provider.getVendorBrandsCar(context);
 61:           },
 62:           child: ListView(
 63:             physics:  AlwaysScrollableScrollPhysics(),
 64:             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
 65:             children: [
 66:               Text(
 67:                   'إختر الخدمات التي تقدمها ... لتلقي طلبات حسب تخصصك و خدماتك.'),
 68:               const SizedBox(
 69:                 height: 30,
 70:               ),
 71:               Row(
 72:                 children: [
 73:                   const IconComponent(
 74:                     icon: Icon(
 75:                       Icons.miscellaneous_services,
 76:                       color: AppColor.primaryColor,
 77:                     ),
 78:                   ),
 79:                   const SizedBox(
 80:                     width: 10,
 81:                   ),
 82:                   Expanded(
 83:                     child: CategoriesDropdownSearch(
 84:                       filled: true,
 85:                       fillColor: AppColor.secondaryColor,
 86:                       selectedCategories: _provider.selectedCategoriesList,
 87:                       onChanged: (List<CategoryModel>? selectedItems) {
 88:                         _provider.changeCategories(selectedItems);
 89:                       },
 90:                     ),
 91:                   )
 92:                 ],
 93:               ),
 94:               // SizedBox(
 95:               //   height: SizeConfig.heightResponsive(0.04),
 96:               // ),
 97:               // CustomButton(
 98:               //   primaryColor: AppColor.primaryColor,
 99:               //   txtSize: SizeConfig.widthResponsive(0.05),
100:               //   loading: _provider.isLoading,
101:               //   onTap: () async {
102:               //     DialogUtils().showConfirmDialog(
103:               //         context,
104:               //         message: 'هل أنت متأكد من حفظ هذه التغيرات',
105:               //         confirm: () async {
106:               //           await _execute(context, _provider);
107:               //         }
108:               //     );
109:               //   },
110:               //   label: 'حفظ',
111:               // ),
112:             ],
113:           ),),
114:       ),
115:     );
116:   }
117: 
118:   Future<void> _execute(BuildContext context, SpecialtyVendorProvider provider)async {
119:     Helper.dismissKeyBoard();
120: 
121:     bool myValid = _formKey.currentState!.validate();
122:     if (myValid) {
123: 
124:       if(! await ConnectionUtils.hasInternetConnection()){
125:         DialogUtils().showNoInternetDialog(context);
126:         return;
127:       }
128: 
129:       await provider.updateCategorySpecialtyVendor();
130:     }
131:   }
132: }
````

## File: lib/features/vendor/specialties/screens/vendor_cities_screen.dart
````dart
  1: import 'package:car_mediator_mobile/widgets/custom_loading.dart';
  2: import 'package:flutter/material.dart';
  3: import 'package:provider/provider.dart';
  4: 
  5: import '../../../../core/helpers/helpers.dart';
  6: import '../../../../core/providers/vendors/specialty_vendor_provider.dart';
  7: import '../../../../core/styles/styles.dart';
  8: import '../../../../core/utils/connection_utils.dart';
  9: import '../../../../core/utils/constants/colors_constants.dart';
 10: import '../../../../core/utils/dialogUtils.dart';
 11: import '../../../../core/utils/size_config.dart';
 12: import '../../../../models/city_model.dart';
 13: import '../../../../widgets/arrow_back_widget.dart';
 14: import '../../../../widgets/custom_button.dart';
 15: import '../../../../widgets/dropdown_search/cities_dropdown_search.dart';
 16: import '../../../../widgets/icon_comp.dart';
 17: 
 18: class VendorCitiesScreen extends StatefulWidget {
 19:   const VendorCitiesScreen({super.key});
 20: 
 21:   @override
 22:   State<VendorCitiesScreen> createState() =>
 23:       _VendorCitiesScreenState();
 24: }
 25: 
 26: class _VendorCitiesScreenState extends State<VendorCitiesScreen> {
 27: 
 28:   final _formKey = GlobalKey<FormState>();
 29: 
 30:   @override
 31:   void initState() {
 32:     super.initState();
 33:     WidgetsBinding.instance.addPostFrameCallback((_) {
 34:       Provider.of<SpecialtyVendorProvider>(context, listen: false)
 35:           .getVendorCities(context);
 36:     });
 37:   }
 38: 
 39:   @override
 40:   Widget build(BuildContext context) {
 41:     final _provider = Provider.of<SpecialtyVendorProvider>(context);
 42: 
 43:     return Scaffold(
 44:       backgroundColor: Colors.white,
 45:       appBar: AppBar(
 46:         title: Text(
 47:           'المدن',
 48:           style: txtBold05,
 49:         ),
 50:         centerTitle: true,
 51:         elevation: 0,
 52:         leading: ArrowBackWidget(myContext: context),
 53:       ),
 54:       body: _provider.isLoadingRefresh
 55:           ? const CustomLoading()
 56:           : Form(
 57:         key: _formKey,
 58:         child: RefreshIndicator(
 59:           onRefresh: (){
 60:             return _provider.getVendorCities(context);
 61:           },
 62:           child: ListView(
 63:             physics:  AlwaysScrollableScrollPhysics(),
 64:             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
 65:             children: [
 66:               Text('إختر المدن التي تتوفر فيها خدماتك'),
 67:               const SizedBox(
 68:                 height: 30,
 69:               ),
 70:               Row(
 71:                 children: [
 72:                   const IconComponent(
 73:                     icon: Icon(
 74:                       Icons.location_on,
 75:                       color: AppColor.primaryColor,
 76:                     ),
 77:                   ),
 78:                   const SizedBox(
 79:                     width: 10,
 80:                   ),
 81:                   Expanded(
 82:                     child: CitiesDropdownSearch(
 83:                       filled: true,
 84:                       fillColor: AppColor.secondaryColor,
 85:                       selectedCities: _provider.selectedCitiesList,
 86:                       onChanged: (List<CityModel>? selectedItems) {
 87:                         _provider.changeCities(selectedItems);
 88:                       },
 89:                     ),
 90:                   )
 91:                 ],
 92:               ),
 93:               SizedBox(
 94:                 height: SizeConfig.heightResponsive(0.04),
 95:               ),
 96:               CustomButton(
 97:                 primaryColor: AppColor.primaryColor,
 98:                 txtSize: SizeConfig.widthResponsive(0.05),
 99:                 loading: _provider.isLoading,
100:                 onTap: () async {
101:                   DialogUtils().showConfirmDialog(
102:                       context,
103:                       message: 'هل أنت متأكد من حفظ هذه التغيرات',
104:                       confirm: () async {
105:                         await _execute(context, _provider);
106:                       }
107:                   );
108:                 },
109:                 label: 'حفظ',
110:               ),
111:             ],
112:           ),),
113:       ),
114:     );
115:   }
116: 
117:   Future<void> _execute(BuildContext context, SpecialtyVendorProvider provider)async {
118:     Helper.dismissKeyBoard();
119: 
120:     bool myValid = _formKey.currentState!.validate();
121:     if (myValid) {
122: 
123:       if(! await ConnectionUtils.hasInternetConnection()){
124:         DialogUtils().showNoInternetDialog(context);
125:         return;
126:       }
127: 
128:       await provider.updateVendorCities();
129:     }
130:   }
131: }
````

## File: lib/l10n/app_ar.arb
````
1: {
2:   "@@locale": "ar",
3:   "appName": "تطبيق وسيط سيارات",
4:   "welcomeToApp" : "مرحباً بكم في تطبيق وسيط سيارات",
5:   "dataIsBeingFormatted" : "جارِ تهيئة البيانات",
6:   "noInternetConnection": "الرجاء التأكد من إتصالك بالإنترنت"
7: }
````

## File: lib/l10n/app_en.arb
````
1: {
2:   "@@locale": "en",
3:   "appName": "وسيط سيارات",
4:   "welcomeToApp" : "مرحباً بكم في تطبيق وسيط سيارات",
5:   "dataIsBeingFormatted" : "جارِ تهيئة البيانات",
6:   "noInternetConnection": "no internet connection"
7: }
````

## File: lib/l10n/app_localizations_ar.dart
````dart
 1: // ignore: unused_import
 2: import 'package:intl/intl.dart' as intl;
 3: import 'app_localizations.dart';
 4: 
 5: // ignore_for_file: type=lint
 6: 
 7: /// The translations for Arabic (`ar`).
 8: class AppLocalizationsAr extends AppLocalizations {
 9:   AppLocalizationsAr([String locale = 'ar']) : super(locale);
10: 
11:   @override
12:   String get appName => 'تطبيق وسيط سيارات';
13: 
14:   @override
15:   String get welcomeToApp => 'مرحباً بكم في تطبيق وسيط سيارات';
16: 
17:   @override
18:   String get dataIsBeingFormatted => 'جارِ تهيئة البيانات';
19: 
20:   @override
21:   String get noInternetConnection => 'الرجاء التأكد من إتصالك بالإنترنت';
22: }
````

## File: lib/l10n/app_localizations_en.dart
````dart
 1: // ignore: unused_import
 2: import 'package:intl/intl.dart' as intl;
 3: import 'app_localizations.dart';
 4: 
 5: // ignore_for_file: type=lint
 6: 
 7: /// The translations for English (`en`).
 8: class AppLocalizationsEn extends AppLocalizations {
 9:   AppLocalizationsEn([String locale = 'en']) : super(locale);
10: 
11:   @override
12:   String get appName => 'وسيط سيارات';
13: 
14:   @override
15:   String get welcomeToApp => 'مرحباً بكم في تطبيق وسيط سيارات';
16: 
17:   @override
18:   String get dataIsBeingFormatted => 'جارِ تهيئة البيانات';
19: 
20:   @override
21:   String get noInternetConnection => 'no internet connection';
22: }
````

## File: lib/l10n/app_localizations.dart
````dart
  1: import 'dart:async';
  2: 
  3: import 'package:flutter/foundation.dart';
  4: import 'package:flutter/widgets.dart';
  5: import 'package:flutter_localizations/flutter_localizations.dart';
  6: import 'package:intl/intl.dart' as intl;
  7: 
  8: import 'app_localizations_ar.dart';
  9: import 'app_localizations_en.dart';
 10: 
 11: // ignore_for_file: type=lint
 12: 
 13: /// Callers can lookup localized strings with an instance of AppLocalizations
 14: /// returned by `AppLocalizations.of(context)`.
 15: ///
 16: /// Applications need to include `AppLocalizations.delegate()` in their app's
 17: /// `localizationDelegates` list, and the locales they support in the app's
 18: /// `supportedLocales` list. For example:
 19: ///
 20: /// ```dart
 21: /// import 'l10n/app_localizations.dart';
 22: ///
 23: /// return MaterialApp(
 24: ///   localizationsDelegates: AppLocalizations.localizationsDelegates,
 25: ///   supportedLocales: AppLocalizations.supportedLocales,
 26: ///   home: MyApplicationHome(),
 27: /// );
 28: /// ```
 29: ///
 30: /// ## Update pubspec.yaml
 31: ///
 32: /// Please make sure to update your pubspec.yaml to include the following
 33: /// packages:
 34: ///
 35: /// ```yaml
 36: /// dependencies:
 37: ///   # Internationalization support.
 38: ///   flutter_localizations:
 39: ///     sdk: flutter
 40: ///   intl: any # Use the pinned version from flutter_localizations
 41: ///
 42: ///   # Rest of dependencies
 43: /// ```
 44: ///
 45: /// ## iOS Applications
 46: ///
 47: /// iOS applications define key application metadata, including supported
 48: /// locales, in an Info.plist file that is built into the application bundle.
 49: /// To configure the locales supported by your app, you’ll need to edit this
 50: /// file.
 51: ///
 52: /// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
 53: /// Then, in the Project Navigator, open the Info.plist file under the Runner
 54: /// project’s Runner folder.
 55: ///
 56: /// Next, select the Information Property List item, select Add Item from the
 57: /// Editor menu, then select Localizations from the pop-up menu.
 58: ///
 59: /// Select and expand the newly-created Localizations item then, for each
 60: /// locale your application supports, add a new item and select the locale
 61: /// you wish to add from the pop-up menu in the Value field. This list should
 62: /// be consistent with the languages listed in the AppLocalizations.supportedLocales
 63: /// property.
 64: abstract class AppLocalizations {
 65:   AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());
 66: 
 67:   final String localeName;
 68: 
 69:   static AppLocalizations? of(BuildContext context) {
 70:     return Localizations.of<AppLocalizations>(context, AppLocalizations);
 71:   }
 72: 
 73:   static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();
 74: 
 75:   /// A list of this localizations delegate along with the default localizations
 76:   /// delegates.
 77:   ///
 78:   /// Returns a list of localizations delegates containing this delegate along with
 79:   /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
 80:   /// and GlobalWidgetsLocalizations.delegate.
 81:   ///
 82:   /// Additional delegates can be added by appending to this list in
 83:   /// MaterialApp. This list does not have to be used at all if a custom list
 84:   /// of delegates is preferred or required.
 85:   static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
 86:     delegate,
 87:     GlobalMaterialLocalizations.delegate,
 88:     GlobalCupertinoLocalizations.delegate,
 89:     GlobalWidgetsLocalizations.delegate,
 90:   ];
 91: 
 92:   /// A list of this localizations delegate's supported locales.
 93:   static const List<Locale> supportedLocales = <Locale>[
 94:     Locale('ar'),
 95:     Locale('en')
 96:   ];
 97: 
 98:   /// No description provided for @appName.
 99:   ///
100:   /// In en, this message translates to:
101:   /// **'وسيط سيارات'**
102:   String get appName;
103: 
104:   /// No description provided for @welcomeToApp.
105:   ///
106:   /// In en, this message translates to:
107:   /// **'مرحباً بكم في تطبيق وسيط سيارات'**
108:   String get welcomeToApp;
109: 
110:   /// No description provided for @dataIsBeingFormatted.
111:   ///
112:   /// In en, this message translates to:
113:   /// **'جارِ تهيئة البيانات'**
114:   String get dataIsBeingFormatted;
115: 
116:   /// No description provided for @noInternetConnection.
117:   ///
118:   /// In en, this message translates to:
119:   /// **'no internet connection'**
120:   String get noInternetConnection;
121: }
122: 
123: class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
124:   const _AppLocalizationsDelegate();
125: 
126:   @override
127:   Future<AppLocalizations> load(Locale locale) {
128:     return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
129:   }
130: 
131:   @override
132:   bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);
133: 
134:   @override
135:   bool shouldReload(_AppLocalizationsDelegate old) => false;
136: }
137: 
138: AppLocalizations lookupAppLocalizations(Locale locale) {
139: 
140: 
141:   // Lookup logic when only language code is specified.
142:   switch (locale.languageCode) {
143:     case 'ar': return AppLocalizationsAr();
144:     case 'en': return AppLocalizationsEn();
145:   }
146: 
147:   throw FlutterError(
148:     'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
149:     'an issue with the localizations generation tool. Please file an issue '
150:     'on GitHub with a reproducible sample app and the gen-l10n configuration '
151:     'that was used.'
152:   );
153: }
````

## File: lib/models/ads_banner_model.dart
````dart
 1: import '../core/helpers/helpers.dart';
 2: 
 3: class AdsBannerResultModel {
 4:   final bool success;
 5:   final String message;
 6:   final List<AdsBannerModel> adsBannerModelList;
 7: 
 8:   const AdsBannerResultModel({
 9:     this.success = false,
10:     this.message = '',
11:     this.adsBannerModelList = const [],
12:   });
13: 
14:   factory AdsBannerResultModel.fromJson(Map<String, dynamic>? json) {
15:     return AdsBannerResultModel(
16:       success: json?['success'] ?? false,
17:       message: json?['message'] ?? '',
18:       adsBannerModelList: _parseAdsBannerResult(json?['result']),
19:     );
20:   }
21: 
22:   static List<AdsBannerModel> _parseAdsBannerResult(dynamic result) {
23:     if(result == null || result is! List) return [];
24:     return List<AdsBannerModel>.from((result).map((e) => AdsBannerModel.fromJson(e)).toList());
25:   }
26: 
27: }
28: 
29: class AdsBannerModel {
30:   final int id;
31:   final String adsImage;
32:   final bool isActive;
33: 
34:   const AdsBannerModel({
35:     this.id = 0,
36:     this.adsImage = '',
37:     this.isActive = false,
38:   });
39: 
40:   factory AdsBannerModel.fromJson(Map<String, dynamic>? json) {
41:     return AdsBannerModel(
42:       id: json?['id'] ?? 0,
43:       adsImage: json?['ads_image'] ?? '',
44:       isActive: Helper.isBoolean(json?['is_active']),
45:     );
46:   }
47: }
````

## File: lib/models/brand_car_model.dart
````dart
 1: class BrandCarResultModel {
 2:   final bool success;
 3:   final String message;
 4:   final List<BrandCarModel> brandCarModelList;
 5: 
 6:   const BrandCarResultModel({
 7:     this.success = false,
 8:     this.message = '',
 9:     this.brandCarModelList = const [],
10:   });
11: 
12:   factory BrandCarResultModel.fromJson(Map<String, dynamic>? json) {
13:     return BrandCarResultModel(
14:       success: json?['success'] ?? false,
15:       message: json?['message'] ?? '',
16:       brandCarModelList: _parseBrandCarResult(json?['result']),
17:     );
18:   }
19: 
20:   static List<BrandCarModel> _parseBrandCarResult(dynamic result) {
21:     if(result == null || result is! List) return [];
22:     return List<BrandCarModel>.from((result).map((e) => BrandCarModel.fromJson(e)).toList());
23:   }
24: 
25: }
26: 
27: class BrandCarModel {
28:   final int id;
29:   final String brandCarNameAr;
30:   final String brandCarNameEn;
31: 
32:   const BrandCarModel({
33:     this.id = 0,
34:     this.brandCarNameAr = '',
35:     this.brandCarNameEn = '',
36:   });
37: 
38:   factory BrandCarModel.fromJson(Map<String, dynamic>? json) {
39:     return BrandCarModel(
40:       id: json?['id'] ?? 0,
41:       brandCarNameAr: json?['brand_name_ar'] ?? '',
42:       brandCarNameEn: json?['brand_name_en'] ?? '',
43:     );
44:   }
45: }
````

## File: lib/models/category_has_brand_field_model.dart
````dart
 1: class CategoryHasBrandFieldResultModel {
 2:   final bool success;
 3:   final String message;
 4:   final List<CategoryHasBrandFieldModel> categoryHasBrandFieldModelList;
 5: 
 6:   const CategoryHasBrandFieldResultModel({
 7:     this.success = false,
 8:     this.message = '',
 9:     this.categoryHasBrandFieldModelList = const [],
10:   });
11: 
12:   factory CategoryHasBrandFieldResultModel.fromJson(Map<String, dynamic>? json) {
13:     return CategoryHasBrandFieldResultModel(
14:       success: json?['success'] ?? false,
15:       message: json?['message'] ?? '',
16:       categoryHasBrandFieldModelList: _parseCategoryHasBrandFieldResult(json?['result']),
17:     );
18:   }
19: 
20:   static List<CategoryHasBrandFieldModel> _parseCategoryHasBrandFieldResult(dynamic result) {
21:     if(result == null || result is! List) return [];
22:     return List<CategoryHasBrandFieldModel>.from((result).map((e) => CategoryHasBrandFieldModel.fromJson(e)).toList());
23:   }
24: 
25: }
26: 
27: class CategoryHasBrandFieldModel {
28:   final int id;
29:   final int categoryId;
30: 
31:   const CategoryHasBrandFieldModel({
32:     this.id = 0,
33:     this.categoryId = 0,
34:   });
35: 
36:   factory CategoryHasBrandFieldModel.fromJson(Map<String, dynamic>? json) {
37:     return CategoryHasBrandFieldModel(
38:       id: json?['id'] ?? 0,
39:       categoryId: json?['category_id'] ?? 0,
40:     );
41:   }
42: }
````

## File: lib/models/category_model.dart
````dart
 1: import '../core/helpers/helpers.dart';
 2: 
 3: class CategoryResultModel {
 4:   final bool success;
 5:   final String message;
 6:   final List<CategoryModel> categoryModelList;
 7: 
 8:   const CategoryResultModel({
 9:     this.success = false,
10:     this.message = '',
11:     this.categoryModelList = const [],
12:   });
13: 
14:   factory CategoryResultModel.fromJson(Map<String, dynamic>? json) {
15:     return CategoryResultModel(
16:       success: json?['success'] ?? false,
17:       message: json?['message'] ?? '',
18:       categoryModelList: _parseCategoryResult(json?['result']),
19:     );
20:   }
21:   
22:   static List<CategoryModel> _parseCategoryResult(dynamic result) {
23:     if(result == null || result is! List) return [];
24:     return List<CategoryModel>.from((result).map((e) => CategoryModel.fromJson(e)).toList());
25:   }
26: 
27: }
28: 
29: class CategoryModel {
30:   final int id;
31:   final String catNameAr;
32:   final String catNameEn;
33:   final String catIconPath;
34:   final String commissionType;
35:   final double commission;
36:   final String active;
37: 
38:   const CategoryModel({
39:     this.id = 0,
40:     this.catNameAr = '',
41:     this.catNameEn = '',
42:     this.catIconPath = '',
43:     this.commissionType = '',
44:     this.commission = 0.0,
45:     this.active = '',
46:   });
47: 
48:   factory CategoryModel.fromJson(Map<String, dynamic>? json) {
49:     return CategoryModel(
50:       id: json?['id'] ?? 0,
51:       catNameAr: json?['cat_name_ar'] ?? '',
52:       catNameEn: json?['cat_name_en'] ?? '',
53:       catIconPath: json?['cat_icon_path'] ?? '',
54:       commissionType: json?['commission_type'] ?? '',
55:       commission: (json?['commission'] ?? 0).toDouble(),
56:       active: json?['active'] ?? '',
57:     );
58:   }
59: 
60:   String getName([String languageCode = 'ar']) {
61:     return languageCode == 'ar' ? catNameAr : catNameEn;
62:   }
63: }
````

## File: lib/models/city_model.dart
````dart
 1: import 'package:car_mediator_mobile/core/helpers/helpers.dart';
 2: 
 3: class CityResultModel {
 4:   final bool success;
 5:   final String message;
 6:   final List<CityModel> cityModelList;
 7: 
 8:   const CityResultModel({
 9:     this.success = false,
10:     this.message = '',
11:     this.cityModelList = const [],
12:   });
13: 
14:   factory CityResultModel.fromJson(Map<String, dynamic>? json) {
15:     return CityResultModel(
16:       success: json?['success'] ?? false,
17:       message: json?['message'] ?? '',
18:       cityModelList: _parseCityResult(json?['result']),
19:     );
20:   }
21: 
22:   static List<CityModel> _parseCityResult(dynamic result) {
23:     if(result == null || result is! List) return [];
24:     return List<CityModel>.from((result).map((e) => CityModel.fromJson(e)).toList());
25:   }
26: 
27: }
28: 
29: class CityModel {
30:   final int id;
31:   final String cityNameAr;
32:   final String cityNameEn;
33:   final bool isActive;
34: 
35:   const CityModel({
36:     this.id = 0,
37:     this.cityNameAr = '',
38:     this.cityNameEn = '',
39:     this.isActive = false,
40:   });
41: 
42:   factory CityModel.fromJson(Map<String, dynamic>? json) {
43:     return CityModel(
44:        id: json?['id'] ?? 0,
45:        cityNameAr: json?['city_name_ar'] ?? '',
46:        cityNameEn: json?['city_name_en'] ?? '',
47:        isActive: Helper.isBoolean(json?['is_active']),
48:     );
49:   }
50: 
51: }
````

## File: lib/models/conversation_model.dart
````dart
 1: class ConversationResponseModel {
 2:   final bool success;
 3:   final String message;
 4:   final Result? result;
 5: 
 6:   const ConversationResponseModel({
 7:     this.success = false,
 8:     this.message = '',
 9:     this.result ,
10:   });
11: 
12:   factory ConversationResponseModel.fromJson(Map<String, dynamic>? json) {
13:     return ConversationResponseModel(
14:       success: json?['success'] ?? false,
15:       message: json?['message'] ?? '',
16:       result: json?['result'] == null ? null : Result.fromJson(json?['result']),
17:     );
18:   }
19: }
20: 
21: class Result {
22:   final List<ConversationModel> conversationModelList;
23:   final int currentPage ;
24:   final int lastPage ;
25: 
26:   Result({
27:     this.conversationModelList = const [],
28:     this.currentPage = 1,
29:     this.lastPage = 1,
30:   });
31: 
32:   factory Result.fromJson(Map<String, dynamic>? json) {
33:     return Result(
34:       currentPage: json?['current_page'] ?? 1,
35:       lastPage: json?['last_page'] ?? 1,
36:       conversationModelList: _parseConversationResult(json?['data']),
37:     );
38:   }
39: 
40:   static List<ConversationModel> _parseConversationResult(dynamic result) {
41:     if(result == null || result is! List) return [];
42:     return List<ConversationModel>.from((result).map((e) => ConversationModel.fromJson(e)).toList());
43:   }
44: }
45: 
46: class ConversationModel{
47: 
48:   final int conversationId;
49:   final int requestId;
50:   final int responseId;
51:   final int vendorId;
52:   final String receiverName;
53:   final String receiverLogo;
54: 
55:   const ConversationModel({
56:     this.conversationId = 0,
57:     this.requestId = 0,
58:     this.responseId = 0,
59:     this.vendorId = 0,
60:     this.receiverName = '',
61:     this.receiverLogo = '',
62:   });
63: 
64:   factory ConversationModel.fromJson(Map<String, dynamic>? json) {
65:     return ConversationModel(
66:       conversationId: json?['id'] ?? 0,
67:       requestId: json?['request_id'] ?? 0,
68:       responseId: json?['response_id'] ?? 0,
69:       vendorId: json?['vendor_id'] ?? 0,
70:       receiverName: json?['receiver_name'] ?? '',
71:       receiverLogo: json?['receiver_logo'] ?? '',
72:     );
73:   }
74: }
````

## File: lib/models/custom_field_model.dart
````dart
 1: import '../core/helpers/helpers.dart';
 2: 
 3: class CustomFieldResultModel {
 4:   final bool success;
 5:   final String message;
 6:   final List<CustomFieldModel> customFieldModelList;
 7: 
 8:   const CustomFieldResultModel({
 9:     this.success = false,
10:     this.message = '',
11:     this.customFieldModelList = const [],
12:   });
13: 
14:   factory CustomFieldResultModel.fromJson(Map<String, dynamic>? json) {
15:     return CustomFieldResultModel(
16:       success: json?['success'] ?? false,
17:       message: json?['message'] ?? '',
18:       customFieldModelList: _parseCustomFieldResult(json?['result']),
19:     );
20:   }
21: 
22:   static List<CustomFieldModel> _parseCustomFieldResult(dynamic result) {
23:     if(result == null || result is! List) return [];
24:     return List<CustomFieldModel>.from((result).map((e) => CustomFieldModel.fromJson(e)).toList());
25:   }
26: 
27: }
28: 
29: class CustomFieldModel {
30: 
31:   final int id;
32:   final int categoryId;
33:   final String labelAr;
34:   final String labelEn;
35:   final String fieldName;
36:   final String fieldType;
37:   final bool isRequired;
38:   final List<String>? options;
39:   final int? minLength;
40:   final int? maxLength;
41: 
42:   const CustomFieldModel({
43:     required this.id,
44:     required this.categoryId,
45:     required this.labelAr,
46:     required this.labelEn,
47:     required this.fieldName,
48:     required this.fieldType,
49:     required this.isRequired,
50:     this.options,
51:     this.minLength,
52:     this.maxLength,
53:   });
54: 
55:   factory CustomFieldModel.fromJson(Map<String, dynamic>? json) {
56:     return CustomFieldModel(
57:       id: json?['id'] ?? 0,
58:       categoryId: json?['category_id'] ?? 0,
59:       labelAr: json?['label_ar'] ?? '',
60:       labelEn: json?['label_en'] ?? '',
61:       fieldName: json?['field_name'] ?? '',
62:       fieldType: json?['field_type'] ?? '',
63:       isRequired: Helper.isBoolean(json?['is_required']),
64:       options: json?['options'] != null
65:           ? List<String>.from(json?['options'])
66:           : null,
67:       minLength: json?['min_length'],
68:       maxLength: json?['max_length'] ,
69:     );
70:   }
71: }
````

## File: lib/models/faq_item_model.dart
````dart
1: class FAQItemModel {
2:   final String question;
3:   final String answer;
4: 
5:   FAQItemModel({
6:     this.question = '',
7:     this.answer = '',
8:   });
9: }
````

## File: lib/models/key_value_model.dart
````dart
 1: class KeyValueModel {
 2: 
 3:   final String key;
 4:   final dynamic value;
 5: 
 6:   const KeyValueModel({
 7:     this.key = '',
 8:     this.value = '',
 9:   });
10: 
11:   factory KeyValueModel.fromJson(Map<String, dynamic>? json) {
12:     return KeyValueModel(
13:       key: json?['key'] ?? 0,
14:       value: json?['value'] ?? '',
15:     );
16:   }
17: }
````

## File: lib/models/message_model.dart
````dart
 1: class Message {
 2:   final int id;
 3:   final int conversationId;
 4:   final int senderId;
 5:   final String body;
 6:   final String image;
 7:   final String senderName;
 8:   final bool isShippingRequest;
 9:   final bool read;
10:   final String createdAt;
11: 
12:   Message({
13:      this.id = 0,
14:      this.conversationId = 0,
15:      this.senderId = 0,
16:      this.body = '',
17:      this.image = '',
18:      this.senderName = '',
19:      this.isShippingRequest = false,
20:      this.read = false,
21:      this.createdAt = '',
22:   });
23: 
24:   factory Message.fromJson(Map<String, dynamic> json) {
25:     return Message(
26:       id: json['id'] ?? 0,
27:       senderId: json['sender_id'] ?? 0,
28:       body: json['body'] ?? '',
29:       image: json['image'] ?? '',
30:       senderName: json['sender_name'] ?? '',
31:       isShippingRequest: json['is_shipping_request'],
32:       read: (json['read'] ?? 0) == 1,
33:       createdAt: json['date_sent'] ?? '',
34:     );
35:   }
36: }
````

## File: lib/models/notification_model.dart
````dart
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
````

## File: lib/models/request_eligible_vendor_model.dart
````dart
 1: import 'key_value_model.dart';
 2: 
 3: class RequestEligibleVendorResultModel {
 4:   final bool success;
 5:   final String message;
 6:   final Result? result;
 7: 
 8:   const RequestEligibleVendorResultModel({
 9:     this.success = false,
10:     this.message = '',
11:     this.result ,
12:   });
13: 
14:   factory RequestEligibleVendorResultModel.fromJson(Map<String, dynamic>? json) {
15:     return RequestEligibleVendorResultModel(
16:       success: json?['success'] ?? false,
17:       message: json?['message'] ?? '',
18:       result: json?['result'] == null ? null : Result.fromJson(json?['result']),
19:     );
20:   }
21: 
22: }
23: 
24: class Result {
25:   final List<RequestEligibleVendorModel> requestEligibleVendorModelList;
26:   final int currentPage ;
27:   final int lastPage ;
28: 
29:   Result({
30:     this.requestEligibleVendorModelList = const [],
31:     this.currentPage = 1,
32:     this.lastPage = 1,
33:   });
34: 
35:   factory Result.fromJson(Map<String, dynamic>? json) {
36:     return Result(
37:       currentPage: json?['current_page'] ?? 1,
38:       lastPage: json?['last_page'] ?? 1,
39:       requestEligibleVendorModelList: _parseRequestEligibleVendorResult(json?['data']),
40:     );
41:   }
42: 
43:   static List<RequestEligibleVendorModel> _parseRequestEligibleVendorResult(dynamic result) {
44:     if(result == null || result is! List) return [];
45:     return List<RequestEligibleVendorModel>.from((result).map((e) => RequestEligibleVendorModel.fromJson(e)).toList());
46:   }
47: }
48: 
49: class RequestEligibleVendorModel {
50: 
51:   final int requestId;
52:   final String catNameAr;
53:   final String requestDate;
54:   final String cityCustomerNameAr;
55:   final String description;
56:   final List<String> cities;
57:   final List<String> brandsNames;
58:   final List<Map<String, dynamic>> fields;
59:   final List<Map<String, dynamic>> images;
60: 
61:   const RequestEligibleVendorModel({
62:     this.requestId = 0,
63:     this.catNameAr = '',
64:     this.requestDate = '',
65:     this.cityCustomerNameAr = '',
66:     this.description = '',
67:     this.cities = const [],
68:     this.brandsNames = const [],
69:     this.fields = const [],
70:     this.images = const [],
71:   });
72: 
73:   factory RequestEligibleVendorModel.fromJson(Map<String, dynamic>? json) {
74:     return RequestEligibleVendorModel(
75:       requestId: json?['request_id'] ?? 0,
76:       catNameAr: json?['cat_name_ar'] ?? '',
77:       requestDate: json?['request_date'] ?? '',
78:       cityCustomerNameAr: json?['city_customer_name_ar'] ?? '',
79:       description: json?['description'] ?? '',
80:       cities: (json?['cities'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
81:       brandsNames: (json?['brandsNames'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
82:       fields: (json?['customFields'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList() ?? [],
83:       images: (json?['requestImages'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList() ?? [],
84:     );
85:   }
86: }
````

## File: lib/models/request_model.dart
````dart
  1: class RequestResultModel {
  2:   final bool success;
  3:   final String message;
  4:   final Result? result;
  5: 
  6:   const RequestResultModel({
  7:     this.success = false,
  8:     this.message = '',
  9:     this.result ,
 10:   });
 11: 
 12:   factory RequestResultModel.fromJson(Map<String, dynamic>? json) {
 13:     return RequestResultModel(
 14:       success: json?['success'] ?? false,
 15:       message: json?['message'] ?? '',
 16:       result: json?['result'] == null ? null : Result.fromJson(json?['result']),
 17:     );
 18:   }
 19: }
 20: 
 21: class Result {
 22:   final List<RequestModel> requestModelList;
 23:   final int currentPage ;
 24:   final int lastPage ;
 25:   final int shippingRequestId ;
 26: 
 27:   Result({
 28:     this.requestModelList = const [],
 29:     this.currentPage = 1,
 30:     this.lastPage = 1,
 31:     this.shippingRequestId = 0,
 32:   });
 33: 
 34:   factory Result.fromJson(Map<String, dynamic>? json) {
 35:     return Result(
 36:       currentPage: json?['current_page'] ?? 1,
 37:       lastPage: json?['last_page'] ?? 1,
 38:       shippingRequestId: json?['shippingRequestId'] ?? 0,
 39:       requestModelList: _parseRequestResult(json?['data']),
 40:     );
 41:   }
 42: 
 43:   static List<RequestModel> _parseRequestResult(dynamic result) {
 44:     if(result == null || result is! List) return [];
 45:     return List<RequestModel>.from((result).map((e) => RequestModel.fromJson(e)).toList());
 46:   }
 47: }
 48: 
 49: class RequestModel {
 50: 
 51:   final int requestId;
 52:   final int responseId;
 53:   final String catNameAr;
 54:   final String requestDate;
 55:   final String responseDate;
 56:   final String cityCustomerNameAr;
 57:   final String description;
 58:   final List<String> cities;
 59:   final List<String> brandsNames;
 60:   final List<Map<String, dynamic>> fields;
 61:   final List<Map<String, dynamic>> images;
 62:   final String responseStatus;
 63:   final String requestStatus;
 64:   final String userName;
 65:   final String userPhone;
 66:   final String userLogo;
 67:   final double priceResponse;
 68:   final String noteResponse;
 69:   final String warrantyResponse;
 70:   final int countResponse;
 71: 
 72:   const RequestModel({
 73:     this.requestId = 0,
 74:     this.responseId = 0,
 75:     this.catNameAr = '',
 76:     this.requestDate = '',
 77:     this.responseDate = '',
 78:     this.cityCustomerNameAr = '',
 79:     this.description = '',
 80:     this.cities = const [],
 81:     this.brandsNames = const [],
 82:     this.fields = const [],
 83:     this.images = const [],
 84:     this.responseStatus = '',
 85:     this.requestStatus = '',
 86:     this.userName = '',
 87:     this.userPhone = '',
 88:     this.userLogo = '',
 89:     this.priceResponse = 0.0,
 90:     this.noteResponse = '',
 91:     this.warrantyResponse = '',
 92:     this.countResponse = 0,
 93:   });
 94: 
 95:   factory RequestModel.fromJson(Map<String, dynamic>? json) {
 96:     return RequestModel(
 97:       requestId: json?['request_id'] ?? 0,
 98:       responseId: json?['response_id'] ?? 0,
 99:       catNameAr: json?['cat_name_ar'] ?? '',
100:       requestDate: json?['request_date'] ?? '',
101:       responseDate: json?['response_date'] ?? '',
102:       cityCustomerNameAr: json?['city_customer_name_ar'] ?? '',
103:       description: json?['description'] ?? '',
104:       cities: (json?['cities'] as List<dynamic>?)
105:           ?.map((e) => e.toString())
106:           .toList() ?? [],
107:       brandsNames: (json?['brandsNames'] as List<dynamic>?)?.map((e) =>
108:           e.toString()).toList() ?? [],
109:       fields: (json?['customFields'] as List<dynamic>?)?.map((e) =>
110:       e as Map<
111:           String,
112:           dynamic>).toList() ?? [],
113:       images: (json?['requestImages'] as List<dynamic>?)?.map((e) =>
114:       e as Map<
115:           String,
116:           dynamic>).toList() ?? [],
117:       responseStatus: json?['response_status'] ?? '',
118:       requestStatus: json?['request_status'] ?? '',
119:       userName: json?['user_name'] ?? '',
120:       userPhone: json?['user_phone'] ?? '',
121:       userLogo: json?['user_logo'] ?? '',
122:       priceResponse: double.parse(json?['price_response'] ?? '0.0'),
123:       noteResponse: json?['note_response'] ?? '',
124:       warrantyResponse: json?['warranty_response'] ?? '',
125:       countResponse: json?['count_response'] ?? 0,
126:     );
127:   }
128: }
````

## File: lib/models/response_request_model.dart
````dart
  1: import 'package:car_mediator_mobile/core/helpers/helpers.dart';
  2: 
  3: class ResponseRequestResultModel {
  4:   final bool success;
  5:   final String message;
  6:   final Result? result;
  7: 
  8:   const ResponseRequestResultModel({
  9:     this.success = false,
 10:     this.message = '',
 11:     this.result ,
 12:   });
 13: 
 14:   factory ResponseRequestResultModel.fromJson(Map<String, dynamic>? json) {
 15:     return ResponseRequestResultModel(
 16:       success: json?['success'] ?? false,
 17:       message: json?['message'] ?? '',
 18:       result: json?['result'] == null ? null : Result.fromJson(json?['result']),
 19:     );
 20:   }
 21: }
 22: 
 23: class Result {
 24:   final List<ResponseRequestModel> responseRequestModelList;
 25:   final int currentPage ;
 26:   final int lastPage ;
 27: 
 28:   Result({
 29:     this.responseRequestModelList = const [],
 30:     this.currentPage = 1,
 31:     this.lastPage = 1,
 32:   });
 33: 
 34:   factory Result.fromJson(Map<String, dynamic>? json) {
 35:     return Result(
 36:       currentPage: json?['current_page'] ?? 1,
 37:       lastPage: json?['last_page'] ?? 1,
 38:       responseRequestModelList: _parseResponseRequestResult(json?['data']),
 39:     );
 40:   }
 41: 
 42:   static List<ResponseRequestModel> _parseResponseRequestResult(dynamic result) {
 43:     if(result == null || result is! List) return [];
 44:     return List<ResponseRequestModel>.from((result).map((e) => ResponseRequestModel.fromJson(e)).toList());
 45:   }
 46: }
 47: 
 48: class ResponseRequestModel {
 49: 
 50:   final int requestId;
 51:   final int responseId;
 52:   final int vendorId;
 53:   final String catNameAr;
 54:   final String companyNameAr;
 55:   final String requestDate;
 56:   final String responseDate;
 57:   final String cityCustomerNameAr;
 58:   final String description;
 59:   final List<String> cities;
 60:   final List<String> brandsNames;
 61:   final List<Map<String, dynamic>> fields;
 62:   final List<Map<String, dynamic>> images;
 63:   final String responseStatus;
 64:   final String requestStatus;
 65:   final String userName;
 66:   final String userPhone;
 67:   final String userLogo;
 68:   final String vendorLogo;
 69:   final double priceResponse;
 70:   final String noteResponse;
 71:   final String warrantyResponse;
 72:   final String vendorMemberSince;
 73:   final String phoneContact;
 74:   final bool isHidePhoneContact;
 75:   final int shippingRequestId;
 76:   final String shippingRequestStatus;
 77: 
 78:   const ResponseRequestModel({
 79:     this.requestId = 0,
 80:     this.responseId = 0,
 81:     this.vendorId = 0,
 82:     this.companyNameAr = '',
 83:     this.catNameAr = '',
 84:     this.requestDate = '',
 85:     this.responseDate = '',
 86:     this.cityCustomerNameAr = '',
 87:     this.description = '',
 88:     this.cities = const [],
 89:     this.brandsNames = const [],
 90:     this.fields = const [],
 91:     this.images = const [],
 92:     this.responseStatus = '',
 93:     this.requestStatus = '',
 94:     this.userName = '',
 95:     this.userPhone = '',
 96:     this.userLogo = '',
 97:     this.vendorLogo = '',
 98:     this.priceResponse = 0.0,
 99:     this.noteResponse = '',
100:     this.warrantyResponse = '',
101:     this.phoneContact = '',
102:     this.isHidePhoneContact = false,
103:     this.vendorMemberSince = '',
104:     this.shippingRequestId = 0,
105:     this.shippingRequestStatus = '',
106:   });
107: 
108:   factory ResponseRequestModel.fromJson(Map<String, dynamic>? json) {
109:     return ResponseRequestModel(
110:       requestId: json?['request_id'] ?? 0,
111:       responseId: json?['response_id'] ?? 0,
112:       vendorId: json?['vendor_id'] ?? 0,
113:       companyNameAr: json?['company_name_ar'] ?? '',
114:       catNameAr: json?['cat_name_ar'] ?? '',
115:       requestDate: json?['request_date'] ?? '',
116:       responseDate: json?['response_date'] ?? '',
117:       vendorMemberSince: json?['vendor_member_since'] ?? '',
118:       cityCustomerNameAr: json?['city_customer_name_ar'] ?? '',
119:       description: json?['description'] ?? '',
120:       cities: (json?['cities'] as List<dynamic>?)
121:           ?.map((e) => e.toString())
122:           .toList() ?? [],
123:       brandsNames: (json?['brandsNames'] as List<dynamic>?)?.map((e) =>
124:           e.toString()).toList() ?? [],
125:       fields: (json?['customFields'] as List<dynamic>?)?.map((e) =>
126:       e as Map<
127:           String,
128:           dynamic>).toList() ?? [],
129:       images: (json?['requestImages'] as List<dynamic>?)?.map((e) =>
130:       e as Map<
131:           String,
132:           dynamic>).toList() ?? [],
133:       responseStatus: json?['response_status'] ?? '',
134:       requestStatus: json?['request_status'] ?? '',
135:       userName: json?['user_name'] ?? '',
136:       userPhone: json?['user_phone'] ?? '',
137:       userLogo: json?['user_logo'] ?? '',
138:       vendorLogo: json?['vendor_logo'] ?? '',
139:       priceResponse: double.parse(json?['price_response'] ?? '0.0'),
140:       noteResponse: json?['note_response'] ?? '',
141:       warrantyResponse: json?['warranty_response'] ?? '',
142:       phoneContact: json?['phone_contact'] ?? '',
143:       isHidePhoneContact: Helper.isBoolean(json?['is_hide_phone_contact']),
144:       shippingRequestId: json?['shipping_request_id'] ?? 0,
145:       shippingRequestStatus: json?['shipping_request_status'] ?? '',
146:     );
147:   }
148: }
````

## File: lib/models/specialty_vendor_model.dart
````dart
 1: class SpecialtyVendorResponseModel {
 2:   final bool success;
 3:   final String message;
 4:   final SpecialtyVendorModel? specialtyVendorModel;
 5: 
 6:   const SpecialtyVendorResponseModel({
 7:     this.success = false,
 8:     this.message = '',
 9:     this.specialtyVendorModel ,
10:   });
11: 
12:   factory SpecialtyVendorResponseModel.fromJson(Map<String, dynamic>? json) {
13:     return SpecialtyVendorResponseModel(
14:       success: json?['success'] ?? false,
15:       message: json?['message'] ?? '',
16:       specialtyVendorModel: json?['result'] == null ? null : SpecialtyVendorModel.fromJson(json?['result']),
17:     );
18:   }
19: }
20: 
21: class SpecialtyVendorModel {
22: 
23:   final List<int> categoriesSpecialty;
24:   final List<int> cities;
25: 
26:   const SpecialtyVendorModel({
27:     this.categoriesSpecialty = const [],
28:     this.cities = const [],
29:   });
30: 
31:   factory SpecialtyVendorModel.fromJson(Map<String, dynamic>? json) {
32:     return SpecialtyVendorModel(
33:       categoriesSpecialty: (json?['categoriesSpecialty'] as List<dynamic>?)?.map((e) => int.parse(e.toString())).toList() ?? [],
34:       cities: (json?['cities'] as List<dynamic>?)?.map((e) => int.parse(e.toString())).toList() ?? [],
35:     );
36:   }
37: }
````

## File: lib/models/user_model.dart
````dart
  1: import '../core/helpers/helpers.dart';
  2: 
  3: class UserResponseModel {
  4:   final bool success;
  5:   final String message;
  6:   final Result? result;
  7: 
  8:   const UserResponseModel({
  9:     this.success = false,
 10:     this.message = '',
 11:     this.result,
 12:   });
 13: 
 14:   factory UserResponseModel.fromJson(Map<String, dynamic>? json) {
 15:     return UserResponseModel(
 16:       success: json?['success'] ?? false,
 17:       message: json?['message'] ?? '',
 18:       result: json?['result'] == null ? null : Result.fromJson(json?['result']),
 19:     );
 20:   }
 21: }
 22: class Result {
 23:    final UserModel? user;
 24:    final String? token;
 25:    final int? id;
 26: 
 27:   Result({
 28:     this.user,
 29:     this.token = '',
 30:     this.id = 0,
 31:   });
 32: 
 33:    factory Result.fromJson(Map<String, dynamic>? json) {
 34:      return Result(
 35:        id: json?['id'] ?? 0,
 36:        token: json?['token'] ?? '',
 37:        user: json?['user'] == null ? null : UserModel.fromJson(json?['user']),
 38:      );
 39:    }
 40: }
 41: 
 42: class UserModel {
 43:    final int? id;
 44:    final int? cityId;
 45:    final String? name;
 46:    final String? companyNameAr;
 47:    final String? companyNameEn;
 48:    final String? email;
 49:    final String? phoneNumber;
 50:    final String? tokenFcm;
 51:    final String? logo;
 52:    final String? aboutMe;
 53:    final String? status;
 54:    final String? role;
 55:    final bool? isHidePhone;
 56:    final String? created_at;
 57:    final String? updated_at;
 58:    final String? commercialRecord;
 59:    final String? dateExpireCommercialRecord;
 60:    final String? description;
 61:    final String? phoneContact;
 62:    final bool? isHidePhoneContact;
 63: 
 64:   UserModel( {
 65:     this.id,
 66:     this.email,
 67:     this.name,
 68:     this.companyNameAr,
 69:     this.companyNameEn,
 70:     this.logo,
 71:     this.phoneNumber,
 72:     this.aboutMe,
 73:     this.tokenFcm,
 74:     this.status,
 75:     this.role,
 76:     this.cityId,
 77:     this.isHidePhone,
 78:     this.created_at,
 79:     this.updated_at,
 80:     this.commercialRecord,
 81:     this.dateExpireCommercialRecord,
 82:     this.description,
 83:     this.phoneContact,
 84:     this.isHidePhoneContact,
 85:   });
 86: 
 87:   factory UserModel.fromJson(Map<String, dynamic>? json) => UserModel(
 88:     id: json?['id'] ?? 0,
 89:     cityId: json?['city_id'] ?? 0,
 90:     name: json?['name'] ?? '',
 91:     companyNameAr: json?['company_name_ar'] ?? '',
 92:     companyNameEn: json?['company_name_en'] ?? '',
 93:     email: json?['email'] ?? '',
 94:     phoneNumber: json?['phone'] ?? '',
 95:     logo: json?['logo'] ?? '',
 96:     aboutMe: json?['about_me'] ?? '',
 97:     tokenFcm: json?['token_fcm'] ?? '',
 98:     status: json?['status'] ?? '',
 99:     role: json?['role'] ?? '',
100:     isHidePhone: (json?['is_hide_phone'] ?? 0) == 0 ? false : true,
101:     created_at: json?['created_at'] ?? '',
102:     updated_at: json?['updated_at'] ?? '',
103:     commercialRecord: json?['commercial_record'] ?? '',
104:     dateExpireCommercialRecord: json?['date_expire_commercial_record'] ?? '',
105:     description: json?['description'] ?? '',
106:     phoneContact: json?['phone_contact'] ?? '',
107:     isHidePhoneContact: Helper.isBoolean(json?['is_hide_phone_contact'] ?? ''),
108:   );
109: 
110: }
````

## File: lib/models/vendor_brand_car_model.dart
````dart
 1: import '../core/helpers/helpers.dart';
 2: 
 3: class VendorBrandCarResponseModel {
 4:   final bool success;
 5:   final String message;
 6:   final List<VendorBrandCarModel>? vendorBrandCarModelList;
 7: 
 8:   const VendorBrandCarResponseModel({
 9:     this.success = false,
10:     this.message = '',
11:     this.vendorBrandCarModelList ,
12:   });
13: 
14:   factory VendorBrandCarResponseModel.fromJson(Map<String, dynamic>? json) {
15:     return VendorBrandCarResponseModel(
16:       success: json?['success'] ?? false,
17:       message: json?['message'] ?? '',
18:       vendorBrandCarModelList: (json?['result'] == null || json?['result'] is! List) ? [] : List<VendorBrandCarModel>.from((json?['result']).map((e) => VendorBrandCarModel.fromJson(e)).toList()),
19:     );
20:   }
21: }
22: 
23: class VendorBrandCarModel {
24: 
25:   final int categoryId;
26:   final bool isReceiveAllBrandCars;
27:   final List<int> brandIds;
28: 
29:   const VendorBrandCarModel({
30:     this.categoryId = 0,
31:     this.isReceiveAllBrandCars = true,
32:     this.brandIds = const [],
33:   });
34: 
35:   factory VendorBrandCarModel.fromJson(Map<String, dynamic>? json) {
36:     return VendorBrandCarModel(
37:       categoryId: json?['category_id'] ?? 0,
38:       isReceiveAllBrandCars: Helper.isBoolean(json?['is_receive_all_brand_cars']),
39:       brandIds: (json?['brand_ids'] as List<dynamic>?)?.map((e) => int.parse(e.toString())).toList() ?? [],
40:     );
41:   }
42: }
````

## File: lib/temp.dart
````dart
  1: import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
  2: import 'package:car_mediator_mobile/models/custom_field_model.dart';
  3: import 'package:flutter/material.dart';
  4: import 'package:provider/provider.dart';
  5: 
  6: import '../../../../core/providers/dynamic_form_provider.dart';
  7: import '../../../../core/utils/constants/constants.dart';
  8: import '../../../../core/utils/size_config.dart';
  9: import '../../../../widgets/container_fields_widget.dart';
 10: import '../../../../widgets/custom_textfield.dart';
 11: 
 12: class CreateOrderScreen2 extends StatefulWidget {
 13:   const CreateOrderScreen2({super.key, required this.customFieldsList});
 14:   final List<CustomFieldModel> customFieldsList;
 15: 
 16:   @override
 17:   State<CreateOrderScreen2> createState() => _CreateOrderScreen2State();
 18: }
 19: 
 20: class _CreateOrderScreen2State extends State<CreateOrderScreen2> {
 21:   final _formKey = GlobalKey<FormState>();
 22: 
 23:   @override
 24:   Widget build(BuildContext context) {
 25:     final dynamicFormProv = Provider.of<DynamicFormProvider>(context);
 26: 
 27:     return  Scaffold(
 28:       // appBar: const AppBarCreateOrderWidget(),
 29:       body: Form(
 30:           key: _formKey,
 31:           child: ListView(
 32:             shrinkWrap: true,
 33:             physics: const ScrollPhysics(),
 34:             padding: const EdgeInsets.all(paddingConst),
 35:             children: [
 36:               ContainerFieldsWidget(
 37:                 title: 'تفاصيل الطلب' ,
 38:                 children: [
 39: 
 40:                   CustomTextField(
 41:                     label: 'التفاصيل',
 42:                     hint: 'إكتب وصف وتفاصيل الطلب...',
 43:                     maxLines: 8,
 44:                     // controller: descriptionController,
 45:                     // validator: FormValidator.fieldValidator,
 46:                     maxLength: 4000,
 47:                   ),
 48:                 ],),
 49: 
 50:               ListView.builder(
 51:                 shrinkWrap: true,
 52:                 itemCount: widget.customFieldsList.length,
 53:                 itemBuilder: (context, index){
 54:                   final field = widget.customFieldsList[index];
 55: 
 56:                   return Padding(
 57:                     padding: const EdgeInsets.all(8.0),
 58:                     child: buildField(field, dynamicFormProv, context),
 59:                   );
 60:                 },
 61:               ),
 62: 
 63:               ElevatedButton(
 64:                   onPressed: (){
 65:                     if (_formKey.currentState!.validate()) {
 66:                       final jsonData = dynamicFormProv.toJson();
 67:                       ToastHelper.showInfo(jsonData.toString());
 68:                     }
 69:                   },
 70:                   child: Text('submit'))
 71:             ],
 72:           )),
 73:     );
 74:   }
 75: 
 76:   Widget buildField(CustomFieldModel field, DynamicFormProvider provider, BuildContext context) {
 77:     switch (field.fieldType) {
 78:       case 'text':
 79:         return TextFormField(
 80:           controller: provider.getController(field.fieldName),
 81:           decoration: InputDecoration(labelText: field.labelAr),
 82:           validator: (value) {
 83:             if (field.isRequired && (value == null || value.isEmpty)) {
 84:               return 'هذا الحقل مطلوب';
 85:             }
 86:             if (field.minLength != null && value!.length < field.minLength!) {
 87:               return 'يجب أن يكون الطول ${field.minLength} على الأقل';
 88:             }
 89:             if (field.maxLength != null && value!.length > field.maxLength!) {
 90:               return 'يجب أن لا يزيد الطول عن ${field.maxLength}';
 91:             }
 92:             return null;
 93:           },
 94:         );
 95: 
 96:       case 'text_area':
 97:         return TextFormField(
 98:           controller: provider.getController(field.fieldName),
 99:           maxLines: 5,
100:           decoration: InputDecoration(labelText: field.labelAr),
101:           validator: (value) {
102:             if (field.isRequired && (value == null || value.isEmpty)) {
103:               return 'هذا الحقل مطلوب';
104:             }
105:             return null;
106:           },
107:         );
108: 
109:       case 'number':
110:         return TextFormField(
111:           controller: provider.getController(field.fieldName),
112:           decoration: InputDecoration(labelText: field.labelAr),
113:           keyboardType: TextInputType.number,
114:           validator: (value) {
115:             if (field.isRequired && (value == null || value.isEmpty)) {
116:               return 'هذا الحقل مطلوب';
117:             }
118:             if (value != null && value.isNotEmpty && double.tryParse(value) == null) {
119:               return 'الرجاء إدخال رقم صحيح';
120:             }
121:             return null;
122:           },
123:         );
124: 
125:       case 'select':
126:         return DropdownButtonFormField<String>(
127:           decoration: InputDecoration(labelText: field.labelAr),
128:           items: field.options!
129:               .map((opt) => DropdownMenuItem(value: opt, child: Text(opt)))
130:               .toList(),
131:           onChanged: (value) => provider.updateValue(field.fieldName, value),
132:           validator: (value) {
133:             if (field.isRequired && (value == null || value.isEmpty)) {
134:               return 'هذا الحقل مطلوب';
135:             }
136:             return null;
137:           },
138:         );
139: 
140: 
141:       case 'checkbox':
142:         return FormField<List<String>>(
143:           initialValue: provider.getValue(field.fieldName) ?? [],
144:           validator: (value) {
145:             if (field.isRequired && (value == null || value.isEmpty)) {
146:               return 'يجب اختيار خيار واحد على الأقل';
147:             }
148:             return null;
149:           },
150:           builder: (formState) {
151:             return Column(
152:               crossAxisAlignment: CrossAxisAlignment.start,
153:               children: [
154:                 Text(field.labelAr, style: TextStyle(fontWeight: FontWeight.bold)),
155:                 ...field.options!.map((opt) {
156:                   final selected = (provider.getValue(field.fieldName) as List?)?.contains(opt) ?? false;
157:                   return CheckboxListTile(
158:                     title: Text(opt),
159:                     value: selected,
160:                     onChanged: (val) {
161:                       final current = List<String>.from(provider.getValue(field.fieldName) ?? []);
162:                       if (val == true) {
163:                         current.add(opt);
164:                       } else {
165:                         current.remove(opt);
166:                       }
167:                       provider.updateValue(field.fieldName, current);
168:                       formState.didChange(current);
169:                     },
170:                   );
171:                 }),
172:                 if (formState.hasError)
173:                   Text(formState.errorText!, style: TextStyle(color: Colors.red)),
174:               ],
175:             );
176:           },
177:         );
178: 
179:       case 'radio':
180:         return FormField<String>(
181:           initialValue: provider.getValue(field.fieldName),
182:           validator: (value) {
183:             if (field.isRequired && (value == null || value.isEmpty)) {
184:               return 'يجب اختيار خيار واحد';
185:             }
186:             return null;
187:           },
188:           builder: (formState) {
189:             return Column(
190:               crossAxisAlignment: CrossAxisAlignment.start,
191:               children: [
192:                 Text(field.labelAr, style: TextStyle(fontWeight: FontWeight.bold)),
193:                 ...field.options!.map((opt) {
194:                   return RadioListTile<String>(
195:                     title: Text(opt),
196:                     value: opt,
197:                     groupValue: formState.value,
198:                     onChanged: (val) {
199:                       provider.updateValue(field.fieldName, val);
200:                       formState.didChange(val);
201:                     },
202:                   );
203:                 }),
204:                 if (formState.hasError)
205:                   Text(formState.errorText!, style: TextStyle(color: Colors.red)),
206:               ],
207:             );
208:           },
209:         );
210: 
211:       case 'date':
212:         return TextFormField(
213:           controller: provider.getController(field.fieldName),
214:           readOnly: true,
215:           decoration: InputDecoration(labelText: field.labelAr),
216:           validator: (value) {
217:             if (field.isRequired && (value == null || value.isEmpty)) {
218:               return 'هذا الحقل مطلوب';
219:             }
220:             return null;
221:           },
222:           onTap: () async {
223:             DateTime? picked = await showDatePicker(
224:               context: context,
225:               initialDate: DateTime.now(),
226:               firstDate: DateTime(1900),
227:               lastDate: DateTime(2100),
228:             );
229:             if (picked != null) {
230:               provider.getController(field.fieldName).text = picked.toIso8601String().split('T').first;
231:             }
232:           },
233:         );
234: 
235:       case 'file':
236:         return FormField<String>(
237:           initialValue: provider.getValue(field.fieldName),
238:           validator: (value) {
239:             if (field.isRequired && (value == null || value.isEmpty)) {
240:               return 'هذا الحقل مطلوب';
241:             }
242:             return null;
243:           },
244:           builder: (formState) {
245:             return Column(
246:               crossAxisAlignment: CrossAxisAlignment.start,
247:               children: [
248:                 ElevatedButton.icon(
249:                   onPressed: () async {
250:                     // استدعاء file picker
251:                     // (يحتاج مكتبة مثل file_picker)
252:                     // مثلاً:
253:                     // FilePickerResult? result = await FilePicker.platform.pickFiles();
254:                     // if (result != null && result.files.single.path != null) {
255:                     //   final path = result.files.single.path!;
256:                     //   provider.updateValue(field.fieldName, path);
257:                     //   formState.didChange(path);
258:                     // }
259: 
260:                     // لأغراض التجريب بدون مكتبة:
261:                     final path = "/dummy/path/to/file.png";
262:                     provider.updateValue(field.fieldName, path);
263:                     formState.didChange(path);
264:                   },
265:                   icon: Icon(Icons.upload_file),
266:                   label: Text(field.labelAr),
267:                 ),
268:                 if (formState.value != null && formState.value!.isNotEmpty)
269:                   Padding(
270:                     padding: const EdgeInsets.only(top: 8.0),
271:                     child: Text(
272:                       "تم اختيار الملف: ${formState.value!.split('/').last}",
273:                       style: TextStyle(color: Colors.green),
274:                     ),
275:                   ),
276:                 if (formState.hasError)
277:                   Padding(
278:                     padding: const EdgeInsets.only(top: 5),
279:                     child: Text(
280:                       formState.errorText!,
281:                       style: TextStyle(color: Colors.red),
282:                     ),
283:                   ),
284:               ],
285:             );
286:           },
287:         );
288: 
289: 
290:       default:
291:         return SizedBox.shrink();
292:     }
293:   }
294: 
295: 
296: }
````

## File: lib/widgets/arrow_back_widget.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../core/utils/constants/colors_constants.dart';
 4: 
 5: class ArrowBackWidget extends StatelessWidget {
 6:   const ArrowBackWidget({Key? key ,required this.myContext}) : super(key: key);
 7:   final BuildContext myContext;
 8:   @override
 9:   Widget build(BuildContext context) {
10:     return IconButton(
11:         onPressed:() => Navigator.pop(myContext),
12:         icon: const Icon(Icons.arrow_back_ios ,color: AppColor.primaryColor,));
13:   }
14: }
````

## File: lib/widgets/banners/banner_widget.dart
````dart
 1: import 'package:carousel_slider/carousel_slider.dart';
 2: import 'package:flutter/material.dart';
 3: import 'package:provider/provider.dart';
 4: 
 5: import '../../core/providers/cache_provider.dart';
 6: import '../../core/providers/home/home_user_provider.dart';
 7: import '../../core/utils/constants/colors_constants.dart';
 8: import '../../core/utils/constants/constants.dart';
 9: import '../../core/utils/size_config.dart';
10: import '../images/custom_image.dart';
11: 
12: class BannerWidget extends StatelessWidget {
13:   const BannerWidget({super.key});
14: 
15:   @override
16:   Widget build(BuildContext context) {
17:     final adsImagesList = context.read<CacheProvider>().adsBannersList;
18:     final _height = SizeConfig.heightResponsive(0.25);
19: 
20:     return Column(
21:       mainAxisSize: MainAxisSize.min,
22:       children: [
23:         CarouselSlider(
24:           items: adsImagesList.map((e) => Padding(padding: const EdgeInsets.symmetric(horizontal: paddingHorizontalConst),
25:           child: CustomImageWidget(
26:             urlImage: e.adsImage,
27:             height: _height,
28:             width: SizeConfig.width,
29:             bgColor: AppColor.secondaryColor,
30:           ),)).toList(),
31:           options: CarouselOptions(
32:             autoPlay: true,
33:             height: _height,
34:             initialPage: 0,
35:             enableInfiniteScroll: true,
36:             viewportFraction: 1.0,
37:             onPageChanged: (index, _) {
38:               return context.read<HomeUserProvider>().changeBannerIndex(index);
39:             },
40:           ),
41:         ),
42:         const SizedBox(height: 10,),
43: 
44:         Selector<HomeUserProvider, int>(
45:           selector: (context, homeProvider) => homeProvider.indicatorAdsBannerIndex,
46:           builder: (context, currentIndicatorBannerIndex, child) {
47:             return SizedBox(
48:               height: 8,
49:               child: ListView.separated(
50:                 shrinkWrap: true,
51:                 scrollDirection: Axis.horizontal,
52:                 itemBuilder: (_, index) => Container(
53:                   width: 8.0,
54:                   height: 2,
55:                   decoration: BoxDecoration(
56:                     color: currentIndicatorBannerIndex == index
57:                         ? AppColor.primaryColor
58:                         : AppColor.primaryColor.withOpacity(0.3),
59:                     borderRadius: const BorderRadius.all(Radius.circular(20)),
60:                   ),
61:                 ),
62:                 separatorBuilder: (_, index) => const SizedBox(width: 5),
63:                 itemCount: adsImagesList.length,
64:               ),
65:             );
66:           },
67:         ),
68:       ],
69:     );
70:   }
71: }
````

## File: lib/widgets/card_container_widget.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../core/utils/constants/colors_constants.dart';
 4: import '../core/utils/constants/constants.dart';
 5: 
 6: class CardContainerWidget extends StatelessWidget {
 7:   const CardContainerWidget({super.key, required this.children});
 8:   final List<Widget> children;
 9: 
10:   @override
11:   Widget build(BuildContext context) {
12:     return Container(
13:       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
14:       decoration: BoxDecoration(
15:         color: Colors.white,
16:         borderRadius: BorderRadius.circular(borderRadiusConst),
17:         border: Border.all(color: AppColor.primaryColor.withOpacity(0.03)),
18:       ),
19:       child: Column(
20:         mainAxisSize: MainAxisSize.min,
21:         crossAxisAlignment: CrossAxisAlignment.start,
22:         mainAxisAlignment: MainAxisAlignment.start,
23:         children: children,
24:       ) ,
25:     );
26:   }
27: }
````

## File: lib/widgets/components.dart
````dart
  1: import 'package:dropdown_search/dropdown_search.dart';
  2: import 'package:flutter/material.dart';
  3: import 'package:provider/provider.dart';
  4: 
  5: import '../core/localization/app_language_provider.dart';
  6: import '../core/utils/constants/colors_constants.dart';
  7: import '../core/utils/size_config.dart';
  8: 
  9: void navigationPush(context, Widget widget) {
 10:   Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
 11: }
 12: 
 13: void navigationPushAndRemoveUntil(context, Widget widget) {
 14:   Navigator.pushAndRemoveUntil(
 15:     context,
 16:     MaterialPageRoute(
 17:       builder: (context) => widget,
 18:     ),
 19:     (Route<dynamic> route) => false,
 20:   );
 21: }
 22: 
 23: //-----------------------------dropdown_search package-----------------------------
 24: 
 25: PopupProps<T> popupPropsBottomSheet<T>({bool showSearchBox = true,required String titleBottomSheet,DropdownSearchPopupItemBuilder<T>? itemBuilder}){
 26:   return PopupProps.bottomSheet(
 27: 
 28:     showSearchBox: showSearchBox,
 29:     searchFieldProps: TextFieldProps(
 30:         style: TextStyle(color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600),
 31:         decoration: InputDecoration(
 32:           contentPadding:const EdgeInsets.symmetric(horizontal: 10,vertical: 15) ,
 33:           enabledBorder: OutlineInputBorder(
 34:             borderSide: const BorderSide(color: AppColor.grey350, width: 1),
 35:             borderRadius: BorderRadius.circular(10.0),
 36:             gapPadding: 2.0,
 37:           ),
 38:           focusedBorder: OutlineInputBorder(
 39:             borderSide: const BorderSide(color: AppColor.primaryColor, width: 1),
 40:             borderRadius: BorderRadius.circular(10.0),
 41:             gapPadding: 2.0,
 42:           ),
 43:         )
 44:     ),
 45:     title: Container(
 46:       width: SizeConfig.width,
 47:       padding: const EdgeInsets.only(top: 12,left: 10,right: 10,),
 48:       margin: const EdgeInsets.only(bottom: 10,),
 49:       decoration: BoxDecoration(
 50:         color: Colors.white,
 51:         borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
 52:         border: Border(top:BorderSide(color: AppColor.greyShade5,width: 2,), ),
 53:       ),
 54:       child: Column(
 55:         children: [
 56:           Container(
 57:             width: SizeConfig.widthResponsive(0.40),
 58:             height: 3,
 59:             decoration: BoxDecoration(
 60:               color: AppColor.primaryColor,
 61:               borderRadius:BorderRadius.circular(8),
 62:             ),
 63:           ),
 64:           SizedBox(height: 16,),
 65:           Align(
 66:             alignment: Alignment.centerRight,
 67:             child: Text('${titleBottomSheet}',style : TextStyle(color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600),),
 68:           ),
 69:         ],
 70:       ),
 71:     ),
 72:     bottomSheetProps: BottomSheetProps(
 73:       elevation: 0,
 74:       backgroundColor:Colors.white,
 75:       shape:  const RoundedRectangleBorder(
 76:         borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
 77:       ),
 78:     ),
 79: 
 80:     itemBuilder: itemBuilder,
 81:   );
 82: }
 83: 
 84: DropDownDecoratorProps customDropdownDecoratorProps({String? label, String? hint, bool? filled, Color? fillColor}){
 85:   return DropDownDecoratorProps(
 86: 
 87:     baseStyle: TextStyle(color: AppColor.blackColor,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w500),
 88:     dropdownSearchDecoration: InputDecoration(
 89:       labelText: label,
 90:       hintText: hint,
 91:       filled: filled,
 92:       fillColor: fillColor,
 93:       contentPadding:const EdgeInsets.symmetric(horizontal: 10,vertical: 10) ,
 94:       enabledBorder: OutlineInputBorder(
 95:         borderSide: BorderSide(color: AppColor.grey350, width: 1),
 96:         borderRadius: BorderRadius.circular(12.0),
 97:         gapPadding: 2.0,
 98:       ),
 99:       focusedBorder: OutlineInputBorder(
100:         borderSide: BorderSide(color: AppColor.primaryColor, width: 1),
101:         borderRadius: BorderRadius.circular(12.0),
102:         gapPadding: 2.0,
103:       ),
104:       errorBorder: OutlineInputBorder(
105:         borderSide: BorderSide(color: Colors.red, width: 1),
106:         borderRadius: BorderRadius.circular(12.0),
107:         gapPadding: 2.0,
108:       ),
109:       labelStyle: TextStyle(color: AppColor.greyShade2 , fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w600),
110:       hintStyle: TextStyle(color:AppColor.greyShade2, fontSize: SizeConfig.widthResponsive(0.04), fontWeight: FontWeight.w600),
111:     ),
112:   );
113: }
114: 
115: 
116: PopupPropsMultiSelection<T> popupPropsMultiSelectionBottomSheet<T>(BuildContext context,{bool showSearchBox = true, required String titleBottomSheet, String validationWidgetTextButton = 'تحديد', Widget Function(BuildContext context, List<T> selectedItems)? validationWidgetBuilder,DropdownSearchPopupItemBuilder<T>? itemBuilder, Widget Function(BuildContext context, Widget popupWidget)? containerBuilder}){
117:   return PopupPropsMultiSelection.bottomSheet(
118: 
119:     showSearchBox: showSearchBox,
120:     textDirection: context.read<AppLanguageProvider>().textDirection,
121:     validationWidgetBuilder: validationWidgetBuilder,
122:     containerBuilder: containerBuilder,
123:     searchFieldProps: TextFieldProps(
124:         style: TextStyle(color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600),
125:         decoration: InputDecoration(
126:           contentPadding:const EdgeInsets.symmetric(horizontal: 10,vertical: 15) ,
127:           enabledBorder: OutlineInputBorder(
128:             borderSide: const BorderSide(color: AppColor.grey350, width: 1),
129:             borderRadius: BorderRadius.circular(10.0),
130:             gapPadding: 2.0,
131:           ),
132:           focusedBorder: OutlineInputBorder(
133:             borderSide: const BorderSide(color: AppColor.primaryColor, width: 1),
134:             borderRadius: BorderRadius.circular(10.0),
135:             gapPadding: 2.0,
136:           ),
137:         )
138:     ),
139:     title: Container(
140:       width: SizeConfig.width,
141:       padding: const EdgeInsets.only(top: 12,left: 10,right: 10,),
142:       margin: const EdgeInsets.only(bottom: 10,),
143:       decoration: BoxDecoration(
144:         color: Colors.white,
145:         borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
146:         border: Border(top:BorderSide(color: AppColor.greyShade5,width: 2,), ),
147:       ),
148:       child: Column(
149:         children: [
150:           Container(
151:             width: SizeConfig.widthResponsive(0.40),
152:             height: 3,
153:             decoration: BoxDecoration(
154:               color: AppColor.primaryColor,
155:               borderRadius:BorderRadius.circular(8),
156:             ),
157:           ),
158:           SizedBox(height: 16,),
159:           Align(
160:             alignment: Alignment.centerRight,
161:             child: Text('${titleBottomSheet}',style : TextStyle(color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.05) ,fontWeight: FontWeight.w600),),
162:           ),
163:         ],
164:       ),
165:     ),
166: 
167:     bottomSheetProps: BottomSheetProps(
168:       elevation: 0,
169:       backgroundColor:Colors.white,
170: 
171:       shape:  const RoundedRectangleBorder(
172:         borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
173:       ),
174:     ),
175: 
176: 
177:     itemBuilder: itemBuilder,
178:   );
179: }
180: 
181: Future customBottomSheet(BuildContext context,{required Widget child ,bool isScrollControlled = true ,bool isDismissible = true, Color backgroundColor = Colors.transparent}){
182:   return showModalBottomSheet(
183:       useSafeArea: true,
184:       context: context,
185:       backgroundColor: backgroundColor,
186:       isScrollControlled: isScrollControlled,
187:       isDismissible:isDismissible ,
188:       shape:  const RoundedRectangleBorder(
189:         borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
190:       ),
191:       builder: (context) {
192:         return StatefulBuilder(
193:             builder: (BuildContext context, StateSetter setState) {
194:               return Padding(padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
195:                 child:child,
196:               );
197:             });
198:       });
199: }
200: 
201: Decoration whiteBoxDecoration(){
202:   return BoxDecoration(
203:     color: Colors.white,
204:     borderRadius: BorderRadius.circular(10),
205:     border: Border.all(color: AppColor.greyShade5,width: 0.8,),
206:     boxShadow: [
207:       BoxShadow(
208:         color: Colors.grey.withOpacity(0.1),
209:         spreadRadius: 1,
210:         blurRadius: 2,
211:         offset: Offset(1, 1), // changes position of shadow
212:       ),
213:     ],
214:   );
215: }
````

## File: lib/widgets/container_fields_widget.dart
````dart
 1: import 'package:car_mediator_mobile/core/styles/styles.dart';
 2: import 'package:flutter/material.dart';
 3: 
 4: import '../core/utils/constants/colors_constants.dart';
 5: import '../core/utils/constants/constants.dart';
 6: import '../core/utils/size_config.dart';
 7: 
 8: class ContainerFieldsWidget extends StatelessWidget {
 9:   const ContainerFieldsWidget({super.key, this.padding =10 , required this.title, required this.children});
10:   final double padding;
11:   final String title;
12:   final List<Widget> children;
13: 
14: 
15:   @override
16:   Widget build(BuildContext context) {
17:     return Container(
18:       padding: const EdgeInsets.only(bottom: 12,),
19:       decoration:  BoxDecoration(
20:         color: Colors.white,
21:         borderRadius: BorderRadius.circular(borderRadiusConst),
22:         boxShadow: [
23:           BoxShadow(
24:             color: Colors.grey.shade300,
25:             spreadRadius: 1,
26:             blurRadius: 2,
27:             offset: const Offset(1, 1), // changes position of shadow
28:           ),
29:         ],
30:       ),
31:       child: Column(
32:         mainAxisSize: MainAxisSize.min,
33:         children: [
34:           Container(
35:             width: SizeConfig.width,
36:             padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
37:             decoration: BoxDecoration(
38:                 color: AppColor.primaryColor.withOpacity(0.02),
39:                 border:const Border(bottom: BorderSide(color:AppColor.secondaryColor )),
40:                 borderRadius:const BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))
41:             ),
42:             child: Text('${title}',textAlign: TextAlign.start,style: txtSemiBold035,),
43:           ),
44:           const SizedBox(height: 8,),
45:           Padding(
46:             padding: const EdgeInsets.all(8),
47:             child: Column(
48:               mainAxisSize: MainAxisSize.min,
49:               children: children,
50:             ),
51:           ),
52:         ],
53:       ),
54:     );
55:   }
56: }
````

## File: lib/widgets/custom_button.dart
````dart
 1: import 'package:flutter/material.dart';
 2: import '../core/utils/constants/colors_constants.dart';
 3: 
 4: class CustomButton extends StatelessWidget {
 5:   const CustomButton({
 6:     Key? key,
 7:     required this.label,
 8:     required this.onTap,
 9:     this.paddingHorizontal = 10,
10:     this.primaryColor = AppColor.primaryColor,
11:     this.borderColor = Colors.transparent,
12:     this.textColor = Colors.white,
13:     required this.txtSize,
14:     this.loading = false,
15:     this.bgOverlayColor = Colors.white70 ,
16:     this.iconPath,
17:     this.iconColor = Colors.white ,
18:     this.icon ,
19:     this.isUnderLineText = false ,
20:     this.alignmentText = Alignment.center ,
21:   }) : super(key: key);
22: 
23:   final String label;
24:   final double txtSize;
25:   final Color primaryColor;
26:   final Color bgOverlayColor;
27:   final Color borderColor;
28:   final Color textColor;
29:   final bool loading;
30:   final double paddingHorizontal;
31:   final void Function()? onTap;
32:   final String? iconPath;
33:   final Color iconColor;
34:   final Icon? icon;
35:   final bool isUnderLineText;
36:   final AlignmentGeometry alignmentText;
37: 
38:   @override
39:   Widget build(BuildContext context) {
40:     return SizedBox(
41:       width: double.infinity,
42:       child: ElevatedButton(
43:         onPressed: onTap,
44:         child: loading ? CircularProgressIndicator(
45:           color: AppColor.whiteColor,
46:         ) :  Row(
47:           mainAxisSize: MainAxisSize.min,
48:           children: [
49:             if(iconPath !=null) Image.asset(iconPath ?? '',color: iconColor,),
50:             if(icon != null) icon!,
51:             if(iconPath !=null || icon != null)
52:               SizedBox(width: 5,),
53:             Expanded(child: Align(
54:               alignment: alignmentText ,
55:               child: Text(label, overflow: TextOverflow.ellipsis, style:TextStyle(color: textColor , fontSize: txtSize,fontWeight: FontWeight.w500 , decoration: isUnderLineText ? TextDecoration.underline : null ,decorationColor:textColor) ,),
56:             ))// <-- Text
57:           ],
58:         ),
59:         style: ButtonStyle(
60:           elevation: MaterialStateProperty.resolveWith<double>(  // As you said you dont need elevation. I'm returning 0 in both case
61:                 (Set<MaterialState> states) {
62:               if (states.contains(MaterialState.disabled)) {
63:                 return 0;
64:               }
65:               return 0; // Defer to the widget's default.
66:             },
67:           ),
68:           padding: MaterialStateProperty.all<EdgeInsets>(
69:               EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: 8,)
70:           ),
71:           backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
72:           overlayColor: MaterialStateProperty.resolveWith<Color?>(
73:                 (Set<MaterialState> states) {
74:               if (states.contains(MaterialState.pressed))
75:                 return bgOverlayColor; //<-- SEE HERE
76:               return null; // Defer to the widget's default.
77:             },
78:           ),
79:           shape: MaterialStateProperty.all(
80:             RoundedRectangleBorder(
81:               borderRadius: BorderRadius.circular(10),
82:               side: BorderSide(width: 1, color: borderColor),
83:             ),
84:           ),
85:         ),
86:       ),
87:     );
88:   }
89: }
````

## File: lib/widgets/custom_container_listtile_widget.dart
````dart
 1: import 'package:car_mediator_mobile/core/utils/size_config.dart';
 2: import 'package:flutter/material.dart';
 3: 
 4: import '../core/utils/constants/colors_constants.dart';
 5: 
 6: class CustomContainerListTileWidget extends StatelessWidget {
 7:   const CustomContainerListTileWidget({super.key,required this.title , this.color});
 8:   final String title;
 9:   final Color? color;
10:   @override
11:   Widget build(BuildContext context) {
12:     return Container(
13:         margin : const EdgeInsets.symmetric(horizontal: 10,vertical: 5,),
14:         decoration:  BoxDecoration(
15:           color: Colors.white,
16:           borderRadius: BorderRadius.circular(8),
17:           boxShadow: [
18:             BoxShadow(
19:               color: Colors.grey.shade300,
20:               spreadRadius: 1,
21:               blurRadius: 2,
22:               offset: Offset(1, 1), // changes position of shadow
23:             ),
24:           ],
25:         ),
26:         child: ListTile(
27:           title: Text('${title}',style: TextStyle(color: AppColor.blackColor,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600),),
28:           trailing: Icon(Icons.arrow_forward_ios,color: AppColor.blackColor,size: 18,),
29:         )
30:     );
31:   }
32: }
````

## File: lib/widgets/custom_empty_widget.dart
````dart
 1: import 'package:car_mediator_mobile/core/styles/styles.dart';
 2: import 'package:car_mediator_mobile/core/utils/constants/assets_path.dart';
 3: import 'package:flutter/material.dart';
 4: 
 5: class CustomEmptyWidget extends StatelessWidget {
 6:   const CustomEmptyWidget({super.key, required this.label});
 7:   final String label;
 8: 
 9:   @override
10:   Widget build(BuildContext context) {
11:     return Center(
12:       child: Column(
13:         mainAxisSize: MainAxisSize.min,
14:         mainAxisAlignment: MainAxisAlignment.center,
15:         crossAxisAlignment: CrossAxisAlignment.center,
16:         children: [
17:           Image.asset(AssetsPath.empty_page,),
18:           const SizedBox(height: 10,),
19:           Text(label, style: txtMedium04,),
20:         ],
21:       ),
22:     );
23:   }
24: }
````

## File: lib/widgets/custom_fields/build_dynamic_fields_widget.dart
````dart
  1: import 'dart:io';
  2: 
  3: import 'package:car_mediator_mobile/core/utils/date_parser_utils.dart';
  4: import 'package:dropdown_search/dropdown_search.dart';
  5: import 'package:flutter/material.dart';
  6: import 'package:image_picker/image_picker.dart';
  7: 
  8: import '../../core/providers/dynamic_form_provider.dart';
  9: import '../../core/utils/constants/colors_constants.dart';
 10: import '../../core/utils/constants/enumeration.dart';
 11: import '../../core/utils/form_validator.dart';
 12: import '../../core/utils/permissions_utils.dart';
 13: import '../../core/utils/size_config.dart';
 14: import '../../core/utils/utils.dart';
 15: import '../../models/custom_field_model.dart';
 16: import '../components.dart';
 17: import '../custom_container_listtile_widget.dart';
 18: import '../custom_textfield.dart';
 19: 
 20: class BuildDynamicFieldsWidget extends StatelessWidget {
 21:   const BuildDynamicFieldsWidget(
 22:       {super.key,
 23:       required this.fieldModel,
 24:       required this.provider,
 25:       required this.label});
 26:   final String label;
 27:   final CustomFieldModel fieldModel;
 28:   final DynamicFormProvider provider;
 29: 
 30:   @override
 31:   Widget build(BuildContext context) {
 32:     if (fieldModel.fieldType == CustomFieldTypeEnum.text.name) {
 33:       return CustomTextField(
 34:         label: label,
 35:         hint: label,
 36:         controller: provider.getController(fieldModel.fieldName),
 37:         validator: (value) => FormValidatorUtils.textValidator(value,
 38:             isRequired: fieldModel.isRequired,
 39:             maxLength: fieldModel.maxLength,
 40:             minLength: fieldModel.minLength),
 41:       );
 42:     }
 43: 
 44:     if (fieldModel.fieldType == CustomFieldTypeEnum.text_area.name) {
 45:       return CustomTextField(
 46:         label: label,
 47:         hint: label,
 48:         controller: provider.getController(fieldModel.fieldName),
 49:         validator: (value) => FormValidatorUtils.textValidator(value,
 50:             isRequired: fieldModel.isRequired,
 51:             maxLength: fieldModel.maxLength,
 52:             minLength: fieldModel.minLength),
 53:         maxLines: 4,
 54:         maxLength: fieldModel.maxLength,
 55:       );
 56:     }
 57: 
 58:     if (fieldModel.fieldType == CustomFieldTypeEnum.number.name) {
 59:       return CustomTextField(
 60:         label: label,
 61:         hint: label,
 62:         keyboardType: TextInputType.number,
 63:         controller: provider.getController(fieldModel.fieldName),
 64:         validator: (value) => FormValidatorUtils.numberValidator(
 65:           value,
 66:           isRequired: fieldModel.isRequired,
 67:         ),
 68:       );
 69:     }
 70: 
 71:     if (fieldModel.fieldType == CustomFieldTypeEnum.select.name) {
 72:       return _SelectFormField(
 73:         label: label,
 74:         fieldModel: fieldModel,
 75:         provider: provider,
 76:       );
 77:     }
 78: 
 79:     if (fieldModel.fieldType == CustomFieldTypeEnum.checkbox.name) {
 80:       return _CheckBoxFormField(
 81:         label: label,
 82:         fieldModel: fieldModel,
 83:         provider: provider,
 84:       );
 85:     }
 86: 
 87:     if (fieldModel.fieldType == CustomFieldTypeEnum.radio.name) {
 88:       return _RadioFormField(
 89:         label: label,
 90:         fieldModel: fieldModel,
 91:         provider: provider,
 92:       );
 93:     }
 94:     if (fieldModel.fieldType == CustomFieldTypeEnum.date.name) {
 95:       return CustomTextField(
 96:         label: label,
 97:         hint: label,
 98:         readOnly: true,
 99:         controller: provider.getController(fieldModel.fieldName),
100:         validator: (value) => FormValidatorUtils.textValidator(
101:           value,
102:           isRequired: fieldModel.isRequired,
103:         ),
104:         onTap: () async {
105:           provider.getController(fieldModel.fieldName).text = await DateParserUtils.getDatePicker(context);
106:         },
107:       );
108:     }
109:     if (fieldModel.fieldType == CustomFieldTypeEnum.file.name) {
110:       return _FileFormField(
111:         label: label,
112:         fieldModel: fieldModel,
113:         provider: provider,
114:       );
115:     }
116: 
117:     return const SizedBox.shrink();
118:   }
119: }
120: 
121: class _SelectFormField extends StatelessWidget {
122:   const _SelectFormField(
123:       {super.key,
124:       required this.fieldModel,
125:       required this.provider,
126:       required this.label});
127:   final String label;
128:   final CustomFieldModel fieldModel;
129:   final DynamicFormProvider provider;
130: 
131:   @override
132:   Widget build(BuildContext context) {
133:     return DropdownSearch<String>(
134:       dropdownDecoratorProps:
135:           customDropdownDecoratorProps(label: label, hint: 'إختر ${label}'),
136:       popupProps: popupPropsBottomSheet<String>(
137:         titleBottomSheet: label,
138:         itemBuilder: (BuildContext context, String item, bool isSelected) {
139:           return CustomContainerListTileWidget(
140:             title: item,
141:           );
142:         },
143:       ),
144:       items: fieldModel.options ?? [],
145:       itemAsString: (String? u) => u.toString() ?? '',
146:       validator: (value) {
147:         if (fieldModel.isRequired && (value == null || value.isEmpty)) {
148:           return 'هذا الحقل مطلوب';
149:         }
150:         return null;
151:       },
152:       onChanged: (String? value) =>
153:           provider.updateValue(fieldModel.fieldName, value),
154:     );
155:   }
156: 
157: }
158: 
159: class _CheckBoxFormField extends StatelessWidget {
160:   const _CheckBoxFormField(
161:       {super.key,
162:       required this.fieldModel,
163:       required this.provider,
164:       required this.label});
165:   final String label;
166:   final CustomFieldModel fieldModel;
167:   final DynamicFormProvider provider;
168: 
169:   @override
170:   Widget build(BuildContext context) {
171:     return FormField<List<String>>(
172:       initialValue: provider.getValue(fieldModel.fieldName) ?? [],
173:       validator: (value) {
174:         if (fieldModel.isRequired && (value == null || value.isEmpty)) {
175:           return 'يجب اختيار خيار واحد على الأقل';
176:         }
177:         return null;
178:       },
179:       builder: (formState) {
180:         return Column(
181:           crossAxisAlignment: CrossAxisAlignment.start,
182:           children: [
183:             ...fieldModel.options!.map((opt) {
184:               final selected =
185:                   (provider.getValue(fieldModel.fieldName) as List?)
186:                           ?.contains(opt) ??
187:                       false;
188:               return CheckboxListTile(
189:                 contentPadding: const EdgeInsets.symmetric(
190:                   vertical: 0,
191:                 ),
192:                 title: Text(opt),
193:                 value: selected,
194:                 onChanged: (val) {
195:                   final current = List<String>.from(
196:                       provider.getValue(fieldModel.fieldName) ?? []);
197:                   if (val == true) {
198:                     current.add(opt);
199:                   } else {
200:                     current.remove(opt);
201:                   }
202:                   provider.updateValue(fieldModel.fieldName, current);
203:                   formState.didChange(current);
204:                 },
205:               );
206:             }),
207:             if (formState.hasError)
208:               Text(formState.errorText!,
209:                   style: const TextStyle(color: Colors.red)),
210:           ],
211:         );
212:       },
213:     );
214:   }
215: }
216: 
217: class _RadioFormField extends StatelessWidget {
218:   const _RadioFormField(
219:       {super.key,
220:       required this.fieldModel,
221:       required this.provider,
222:       required this.label});
223:   final String label;
224:   final CustomFieldModel fieldModel;
225:   final DynamicFormProvider provider;
226: 
227:   @override
228:   Widget build(BuildContext context) {
229:     return FormField<String>(
230:       initialValue: provider.getValue(fieldModel.fieldName),
231:       validator: (value) {
232:         if (fieldModel.isRequired && (value == null || value.isEmpty)) {
233:           return 'يجب اختيار خيار واحد';
234:         }
235:         return null;
236:       },
237:       builder: (formState) {
238:         return Column(
239:           crossAxisAlignment: CrossAxisAlignment.start,
240:           children: [
241:             ...fieldModel.options!.map((opt) {
242:               return RadioListTile<String>(
243:                 contentPadding: const EdgeInsets.symmetric(
244:                   vertical: 0,
245:                 ),
246:                 title: Text(opt),
247:                 value: opt,
248:                 groupValue: formState.value,
249:                 onChanged: (val) {
250:                   provider.updateValue(fieldModel.fieldName, val);
251:                   formState.didChange(val);
252:                 },
253:               );
254:             }),
255:             if (formState.hasError)
256:               Text(formState.errorText!,
257:                   style: const TextStyle(color: Colors.red)),
258:           ],
259:         );
260:       },
261:     );
262:   }
263: }
264: 
265: class _FileFormField extends StatelessWidget {
266:   const _FileFormField(
267:       {super.key,
268:       required this.fieldModel,
269:       required this.provider,
270:       required this.label});
271:   final String label;
272:   final CustomFieldModel fieldModel;
273:   final DynamicFormProvider provider;
274: 
275:   @override
276:   Widget build(BuildContext context) {
277:     return FormField<String>(
278:       initialValue: provider.getValue(fieldModel.fieldName),
279:       validator: (value) {
280:         if (fieldModel.isRequired && (value == null || value.isEmpty)) {
281:           return 'هذا الحقل مطلوب';
282:         }
283:         return null;
284:       },
285:       builder: (formState) {
286:         return Column(
287:           crossAxisAlignment: CrossAxisAlignment.start,
288:           children: [
289:             GestureDetector(
290:               onTap: () async {
291:                 if(await PermissionsUtils.checkCameraAndGalleryPermission(context)){
292:                   final _path = await Utils.getImagePath(ImageSource.gallery);
293:                   if (_path != null) {
294:                     print(_path);
295:                     provider.updateValue(fieldModel.fieldName, _path);
296:                     formState.didChange(_path);
297:                   }
298:                 }
299:               },
300:               child: Container(
301:                 height: 150,
302:                 width: SizeConfig.widthResponsive(0.50),
303:                 decoration: BoxDecoration(
304:                   border: Border.all(color: Colors.grey),
305:                   borderRadius: BorderRadius.circular(8),
306:                   color: AppColor.secondaryColor,
307:                 ),
308:                 child: formState.value != null && formState.value!.isNotEmpty
309:                     ? Stack(
310:                         fit: StackFit.expand,
311:                         children: [
312:                           ClipRRect(
313:                             borderRadius: BorderRadius.circular(8),
314:                             child: Image.file(
315:                               File(formState.value!),
316:                               fit: BoxFit.cover,
317:                             ),
318:                           ),
319:                           Positioned(
320:                             top: 5,
321:                             right: 5,
322:                             child: InkWell(
323:                               onTap: () {
324:                                 provider.updateValue(fieldModel.fieldName, "");
325:                                 formState.didChange("");
326:                               },
327:                               child: Container(
328:                                 decoration: const BoxDecoration(
329:                                   color: Colors.red,
330:                                   shape: BoxShape.circle,
331:                                 ),
332:                                 padding: const EdgeInsets.all(4),
333:                                 child: const Icon(Icons.close,
334:                                     color: Colors.white, size: 18),
335:                               ),
336:                             ),
337:                           ),
338:                         ],
339:                       )
340:                     : const Center(
341:                         child: Icon(Icons.add_a_photo,
342:                             size: 40, color: AppColor.primaryColor),
343:                       ),
344:               ),
345:             ),
346:             if (formState.hasError)
347:               Padding(
348:                 padding: const EdgeInsets.only(top: 5),
349:                 child: Text(
350:                   formState.errorText!,
351:                   style: const TextStyle(color: Colors.red),
352:                 ),
353:               ),
354:           ],
355:         );
356:       },
357:     );
358:   }
359: }
````

## File: lib/widgets/custom_loading.dart
````dart
 1: import 'package:flutter/cupertino.dart';
 2: 
 3: class CustomLoading extends StatelessWidget {
 4:   const CustomLoading({super.key, this.radius = 24});
 5:   final double radius;
 6: 
 7:   @override
 8:   Widget build(BuildContext context) {
 9:     return  Center(
10:       child: CupertinoActivityIndicator(
11:         radius: radius,
12:       ),
13:     );
14:   }
15: }
````

## File: lib/widgets/custom_textfield.dart
````dart
  1: import 'package:flutter/material.dart';
  2: 
  3: import '../core/utils/constants/colors_constants.dart';
  4: import '../core/utils/size_config.dart';
  5: 
  6: enum CustomBorderType { outline, underline }
  7: 
  8: class CustomTextField extends StatelessWidget {
  9:   const CustomTextField({
 10:     Key? key,
 11:     required this.label,
 12:     this.hint = '',
 13:     this.maxLines = 1,
 14:     this.maxLength,
 15:     this.keyboardType,
 16:     this.controller,
 17:     this.textInputAction,
 18:     this.prefixIcon,
 19:     this.suffixIcon,
 20:     this.onFieldSubmitted,
 21:     this.validator,
 22:     this.onSaved,
 23:     this.focusNode,
 24:     this.obscure = false,
 25:     this.readOnly = false,
 26:     this.counterText,
 27:     this.textDirection,
 28:     this.borderType = CustomBorderType.outline, this.onTap, this.fillColor, this.filled = false,
 29:   }) : super(key: key);
 30: 
 31:   final String label;
 32:   final String hint;
 33:   final TextEditingController? controller;
 34:   final TextInputType? keyboardType;
 35:   final TextInputAction? textInputAction;
 36:   final Widget? prefixIcon;
 37:   final Widget? suffixIcon;
 38:   final void Function(String)? onFieldSubmitted;
 39:   final String? Function(String?)? validator;
 40:   final void Function(String?)? onSaved;
 41:   final FocusNode? focusNode;
 42:   final bool obscure;
 43:   final bool readOnly;
 44:   final int? maxLines;
 45:   final int? maxLength;
 46:   final String? counterText;
 47:   final TextDirection? textDirection;
 48:   final CustomBorderType borderType;
 49:   final GestureTapCallback? onTap;
 50:   final Color? fillColor;
 51:   final bool? filled;
 52: 
 53:   InputBorder _border({required Color color}) {
 54:     final borderRadius = BorderRadius.circular(12);
 55: 
 56:     return borderType == CustomBorderType.outline
 57:         ? OutlineInputBorder(
 58:       borderRadius: borderRadius,
 59:       borderSide: BorderSide(color: color),
 60:     )
 61:         : UnderlineInputBorder(
 62:       borderSide: BorderSide(color: color),
 63:     );
 64:   }
 65: 
 66:   @override
 67:   Widget build(BuildContext context) {
 68:     return TextFormField(
 69:       keyboardType: keyboardType,
 70:       controller: controller,
 71:       obscureText: obscure,
 72:       readOnly: readOnly,
 73:       textDirection: textDirection,
 74:       onTap: onTap,
 75:       style: TextStyle(
 76:         color: AppColor.blackColor,
 77:         fontSize: SizeConfig.widthResponsive(0.04),
 78:         fontWeight: FontWeight.w500,
 79:       ),
 80:       textInputAction: textInputAction,
 81:       decoration: InputDecoration(
 82:         contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
 83:         labelText: label,
 84:         hintText: hint,
 85:         fillColor: fillColor,
 86:         filled: filled,
 87:         labelStyle: TextStyle(
 88:           color: AppColor.greyShade2,
 89:           fontSize: SizeConfig.widthResponsive(0.04),
 90:           fontWeight: FontWeight.w600,
 91:         ),
 92:         hintStyle: TextStyle(
 93:           color: AppColor.greyShade2,
 94:           fontSize: SizeConfig.widthResponsive(0.04),
 95:           fontWeight: FontWeight.w500,
 96:         ),
 97:         enabledBorder: _border(color: AppColor.grey350),
 98:         errorBorder: _border(color: Colors.red),
 99:         focusedErrorBorder: _border(color: AppColor.primaryColor),
100:         focusedBorder: _border(color: AppColor.primaryColor),
101:         prefixIcon: prefixIcon,
102:         suffixIcon: suffixIcon,
103:         counterText: counterText,
104:       ),
105:       onFieldSubmitted: onFieldSubmitted,
106:       validator: validator,
107:       onSaved: onSaved,
108:       focusNode: focusNode,
109:       maxLines: maxLines,
110:       maxLength: maxLength,
111:     );
112:   }
113: }
````

## File: lib/widgets/customButton2.dart
````dart
 1: import 'package:flutter/material.dart';
 2: import '../core/utils/constants/colors_constants.dart';
 3: 
 4: class CustomButton2 extends StatelessWidget {
 5:   const CustomButton2({Key? key,
 6:     required this.onPressed,
 7:     this.padding = const EdgeInsets.symmetric(horizontal: 10.0 ,vertical: 10.0),
 8:     this.margin = const EdgeInsets.symmetric(horizontal: 10.0 ,vertical: 10.0),
 9:     this.width = double.infinity,
10:     this.bgColor = AppColor.primaryColor,
11:     this.bgOverlayColor = Colors.white70 ,
12:     this.rediusCircular = 10.0 ,
13:     this.borderColor = AppColor.primaryColor,
14:     this.textSize = 18.0 ,
15:     required this.text  ,
16:     this.txtColor = Colors.white ,
17:     this.iconPath,
18:     this.iconColor = Colors.white ,
19:     this.icon ,
20: 
21:   }) : super(key: key);
22: 
23:   final EdgeInsets padding;
24:   final EdgeInsets margin;
25:   final double width;
26:   final double textSize;
27:   final VoidCallback? onPressed;
28:   final Color bgColor;
29:   final Color bgOverlayColor;
30:   final double rediusCircular ;
31:   final Color borderColor;
32:   final String text ;
33:   final Color txtColor;
34:   final String? iconPath;
35:   final Color iconColor;
36:   final Icon? icon;
37: 
38:   @override
39:   Widget build(BuildContext context) {
40:     return Container(
41:       padding: padding,
42:       margin: margin,
43:       width: width,
44:       child:ElevatedButton(
45:         onPressed: onPressed,
46:         style: ButtonStyle(
47:           backgroundColor: MaterialStateProperty.all<Color>(bgColor),
48:           overlayColor: MaterialStateProperty.resolveWith<Color?>(
49:                 (Set<MaterialState> states) {
50:               if (states.contains(MaterialState.pressed))
51:                 return bgOverlayColor; //<-- SEE HERE
52:               return null; // Defer to the widget's default.
53:             },
54:           ),
55:           shape: MaterialStateProperty.all(
56:             RoundedRectangleBorder(
57:               borderRadius: BorderRadius.circular(rediusCircular),
58:               side: BorderSide(width: 1, color: borderColor),
59:             ),
60:           ),
61:         ),
62:         child: Row(
63:           mainAxisSize: MainAxisSize.min,
64:           children: [
65:             iconPath !=null ?Image.asset(iconPath ?? '',color: iconColor,) : const SizedBox(),
66:             icon != null ? icon! : const SizedBox(),
67:             if(iconPath !=null || icon != null)
68:               const SizedBox( width: 10.0,),
69:             Text(text,textAlign: TextAlign.center,
70:               style:TextStyle(
71:                 color: txtColor , fontSize: textSize,fontWeight: FontWeight.w200 ,
72:               ) ,), // <-- Text
73:           ],
74:         ),
75:       ),
76:     );
77:   }
78: }
````

## File: lib/widgets/dropdown_search/category_dropdown_builder_multiselection_widget.dart
````dart
 1: import 'package:flutter/material.dart';
 2: import 'package:provider/provider.dart';
 3: 
 4: import '../../core/localization/app_language_provider.dart';
 5: import '../../core/utils/constants/colors_constants.dart';
 6: import '../../core/utils/size_config.dart';
 7: 
 8: 
 9: class CategoryDropdownBuilderMultiselectionWidget extends StatelessWidget {
10:   const CategoryDropdownBuilderMultiselectionWidget({super.key, this.selectedItems, required this.hint});
11:   final List? selectedItems;
12:   final String hint;
13: 
14:   @override
15:   Widget build(BuildContext context) {
16:     final _isArabic = context.read<AppLanguageProvider>().isArabic;
17: 
18:     if(selectedItems?.isEmpty ?? false) {
19:       return Wrap(
20:         children: [Text(hint,style: TextStyle(color:AppColor.greyShade2, fontSize: SizeConfig.widthResponsive(0.04), fontStyle: FontStyle.normal,))],
21:       );
22:     }
23: 
24:     return Wrap(
25:       children: [
26:         Text(
27:           selectedItems
28:               ?.map((e) => _isArabic ? e.catNameAr : e.catNameEn)
29:               .join(" - ") ?? "",
30:           style: TextStyle(
31:             color: AppColor.blackColor,
32:             fontSize: SizeConfig.widthResponsive(0.04),
33:             fontWeight: FontWeight.w500,
34:           ),
35:         ),
36:       ],
37:     );
38: 
39:   }
40: }
````

## File: lib/widgets/dropdown_search/cities_dropdown_search.dart
````dart
  1: import 'package:car_mediator_mobile/core/utils/size_config.dart';
  2: import 'package:dropdown_search/dropdown_search.dart';
  3: import 'package:flutter/material.dart';
  4: import 'package:provider/provider.dart';
  5: 
  6: import '../../core/localization/app_language_provider.dart';
  7: import '../../core/providers/cache_provider.dart';
  8: import '../../core/providers/vendors/specialty_vendor_provider.dart';
  9: import '../../core/utils/constants/colors_constants.dart';
 10: import '../../core/utils/form_validator.dart';
 11: import '../../models/city_model.dart';
 12: import '../components.dart';
 13: import 'city_dropdown_builder_multiselection_widget.dart';
 14: 
 15: class CitiesDropdownSearch extends StatelessWidget {
 16:   const CitiesDropdownSearch({super.key, this.selectedCities, this.onChanged, this.filled, this.fillColor});
 17:   final List<CityModel>? selectedCities;
 18:   final ValueChanged<List<CityModel>>? onChanged;
 19:   final bool? filled;
 20:   final Color? fillColor;
 21: 
 22:   void _showCitiesBottomSheet(BuildContext context, CacheProvider cacheProvider, SpecialtyVendorProvider provider) {
 23:     final allCities = cacheProvider.citiesList;
 24:     final List<CityModel> tempSelected = List<CityModel>.from(provider.selectedCitiesList ?? selectedCities ?? []);
 25:     final _isArabic = context.read<AppLanguageProvider>().isArabic;
 26: 
 27:     showModalBottomSheet(
 28:       context: context,
 29:       isScrollControlled: true,
 30:       backgroundColor: Colors.transparent,
 31:       builder: (context) {
 32:         return StatefulBuilder(
 33:           builder: (context, setState) {
 34:             final bool isAllSelected = tempSelected.length == allCities.length && allCities.isNotEmpty;
 35: 
 36:             return Container(
 37:               height: MediaQuery.of(context).size.height * 0.70,
 38:               decoration: const BoxDecoration(
 39:                 color: Colors.white,
 40:                 borderRadius: BorderRadius.only(
 41:                   topLeft: Radius.circular(30.0),
 42:                   topRight: Radius.circular(30.0),
 43:                 ),
 44:               ),
 45:               child: Column(
 46:                 children: [
 47:                   Container(
 48:                     padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 8),
 49:                     child: Column(
 50:                       children: [
 51:                         Container(
 52:                           width: SizeConfig.widthResponsive(0.40),
 53:                           height: 3,
 54:                           decoration: BoxDecoration(
 55:                             color: AppColor.primaryColor,
 56:                             borderRadius: BorderRadius.circular(8),
 57:                           ),
 58:                         ),
 59:                         const SizedBox(height: 12),
 60:                         Row(
 61:                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
 62:                           children: [
 63:                             InkWell(
 64:                               onTap: () {
 65:                                 setState(() {
 66:                                   if (isAllSelected) {
 67:                                     tempSelected.clear();
 68:                                   } else {
 69:                                     tempSelected.clear();
 70:                                     tempSelected.addAll(allCities);
 71:                                   }
 72:                                 });
 73:                               },
 74:                               child: Row(
 75:                                 children: [
 76:                                   Checkbox(
 77:                                     value: isAllSelected,
 78:                                     activeColor: AppColor.primaryColor,
 79:                                     shape: RoundedRectangleBorder(
 80:                                       borderRadius: BorderRadius.circular(4),
 81:                                     ),
 82:                                     onChanged: (bool? checked) {
 83:                                       setState(() {
 84:                                         if (checked == true) {
 85:                                           tempSelected.clear();
 86:                                           tempSelected.addAll(allCities);
 87:                                         } else {
 88:                                           tempSelected.clear();
 89:                                         }
 90:                                       });
 91:                                     },
 92:                                   ),
 93:                                   const Text(
 94:                                     'تحديد الكل',
 95:                                     style: TextStyle(
 96:                                       fontSize: 15,
 97:                                       fontWeight: FontWeight.bold,
 98:                                       color: Colors.black87,
 99:                                     ),
100:                                   ),
101:                                 ],
102:                               ),
103:                             ),
104:                             Text(
105:                               'المدن',
106:                               style: TextStyle(
107:                                 color: AppColor.primaryColor,
108:                                 fontSize: SizeConfig.widthResponsive(0.05),
109:                                 fontWeight: FontWeight.w600,
110:                               ),
111:                             ),
112:                           ],
113:                         ),
114:                       ],
115:                     ),
116:                   ),
117:                   const Divider(height: 1),
118:                   Expanded(
119:                     child: ListView.builder(
120:                       itemCount: allCities.length,
121:                       itemBuilder: (context, index) {
122:                         final city = allCities[index];
123:                         final bool isSelected = tempSelected.any((e) => e.id == city.id);
124:                         final cityName = (_isArabic ? city.cityNameAr : city.cityNameEn) ?? '';
125: 
126:                         return CheckboxListTile(
127:                           value: isSelected,
128:                           activeColor: AppColor.primaryColor,
129:                           title: Text(
130:                             cityName,
131:                             style: const TextStyle(
132:                               fontSize: 16,
133:                               fontWeight: FontWeight.w500,
134:                             ),
135:                           ),
136:                           onChanged: (bool? checked) {
137:                             setState(() {
138:                               if (checked == true) {
139:                                 if (!tempSelected.any((e) => e.id == city.id)) {
140:                                   tempSelected.add(city);
141:                                 }
142:                               } else {
143:                                 tempSelected.removeWhere((e) => e.id == city.id);
144:                               }
145:                             });
146:                           },
147:                         );
148:                       },
149:                     ),
150:                   ),
151:                   const Divider(height: 1),
152:                   Padding(
153:                     padding: EdgeInsets.only(
154:                       bottom: SizeConfig.heightResponsive(0.04),
155:                       left: 20,
156:                       right: 20,
157:                       top: 10,
158:                     ),
159:                     child: SizedBox(
160:                       width: double.infinity,
161:                       height: 48,
162:                       child: ElevatedButton(
163:                         style: ElevatedButton.styleFrom(
164:                           backgroundColor: Colors.blue,
165:                           shape: RoundedRectangleBorder(
166:                             borderRadius: BorderRadius.circular(10),
167:                           ),
168:                         ),
169:                         onPressed: () {
170:                           provider.changeCities(tempSelected);
171:                           if (onChanged != null) {
172:                             onChanged!(tempSelected);
173:                           }
174:                           Navigator.pop(context);
175:                         },
176:                         child: Text(
177:                           'تحديد',
178:                           style: TextStyle(
179:                             color: Colors.white,
180:                             fontSize: SizeConfig.widthResponsive(0.04),
181:                             fontWeight: FontWeight.bold,
182:                           ),
183:                         ),
184:                       ),
185:                     ),
186:                   ),
187:                 ],
188:               ),
189:             );
190:           },
191:         );
192:       },
193:     );
194:   }
195: 
196:   @override
197:   Widget build(BuildContext context) {
198:     final _cacheProvider = context.read<CacheProvider>();
199:     final _provider = Provider.of<SpecialtyVendorProvider>(context);
200: 
201:     return InkWell(
202:       onTap: () => _showCitiesBottomSheet(context, _cacheProvider, _provider),
203:       child: InputDecorator(
204:         decoration: customDropdownDecoratorProps(label: 'المدن', hint: 'إختر المدن', filled: filled, fillColor: fillColor).dropdownSearchDecoration!,
205:         child: CityDropDownBuilderMultiSelectionWidget(
206:           selectedItems: _provider.selectedCitiesList ?? selectedCities ?? [],
207:           hint: 'إختر المدن',
208:         ),
209:       ),
210:     );
211:   }
212: }
````

## File: lib/widgets/dropdown_search/city_dropdown_builder_multiselection_widget.dart
````dart
 1: import 'package:flutter/material.dart';
 2: import 'package:provider/provider.dart';
 3: 
 4: import '../../core/localization/app_language_provider.dart';
 5: import '../../core/utils/constants/colors_constants.dart';
 6: import '../../core/utils/size_config.dart';
 7: 
 8: 
 9: class CityDropDownBuilderMultiSelectionWidget extends StatelessWidget {
10:   const CityDropDownBuilderMultiSelectionWidget({super.key, this.selectedItems, required this.hint});
11:   final List? selectedItems;
12:   final String hint;
13: 
14:   @override
15:   Widget build(BuildContext context) {
16:     final _isArabic = context.read<AppLanguageProvider>().isArabic;
17: 
18:     if(selectedItems?.isEmpty ?? false) {
19:       return Wrap(
20:         children: [Text(hint,style: TextStyle(color:AppColor.greyShade2, fontSize: SizeConfig.widthResponsive(0.04), fontStyle: FontStyle.normal,))],
21:       );
22:     }
23: 
24:     return Wrap(
25:       children: [
26:         Text(
27:           selectedItems
28:               ?.map((e) => _isArabic ? e.cityNameAr : e.cityNameEn)
29:               .join(" - ") ?? "",
30:           style: TextStyle(
31:             color: AppColor.blackColor,
32:             fontSize: SizeConfig.widthResponsive(0.04),
33:             fontWeight: FontWeight.w500,
34:           ),
35:         ),
36:       ],
37:     );
38: 
39:   }
40: }
````

## File: lib/widgets/dropdown_search/city_dropdown_search.dart
````dart
 1: import 'package:dropdown_search/dropdown_search.dart';
 2: import 'package:flutter/material.dart';
 3: import 'package:provider/provider.dart';
 4: 
 5: import '../../core/localization/app_language_provider.dart';
 6: import '../../core/providers/cache_provider.dart';
 7: import '../../core/utils/form_validator.dart';
 8: import '../../models/city_model.dart';
 9: import '../components.dart';
10: import '../custom_container_listtile_widget.dart';
11: 
12: class CityDropdownSearch extends StatelessWidget {
13:   const CityDropdownSearch({super.key,  this.label = 'المدينة',  this.hint = 'إختر المدينة', required this.selectedCityModel, required this.onChanged, this.filled, this.fillColor});
14:   final String label;
15:   final String hint;
16:   final CityModel? selectedCityModel;
17:   final ValueChanged<CityModel?>? onChanged;
18:   final bool? filled;
19:   final Color? fillColor;
20: 
21:   @override
22:   Widget build(BuildContext context) {
23:     final _isArabic = context.read<AppLanguageProvider>().isArabic;
24:     final _cacheProvider = context.read<CacheProvider>();
25: 
26:     return DropdownSearch<CityModel>(
27:       dropdownDecoratorProps: customDropdownDecoratorProps(
28:           label: label, hint: hint, filled: filled, fillColor: fillColor),
29:       popupProps: popupPropsBottomSheet<CityModel>(
30:         titleBottomSheet: label,
31:         itemBuilder: (BuildContext context, CityModel item,
32:             bool isSelected) {
33:           return CustomContainerListTileWidget(
34:             title:
35:             _isArabic ? item.cityNameAr : item.cityNameEn,
36:           );
37:         },
38:       ),
39:       items: _cacheProvider.citiesList,
40:       selectedItem: selectedCityModel,
41:       itemAsString: (CityModel? u) =>
42:       (_isArabic ? u?.cityNameAr : u?.cityNameEn) ?? '',
43:       validator: FormValidatorUtils.objectValidator,
44:       onChanged: onChanged
45:     );
46:   }
47: }
````

## File: lib/widgets/faq_item_widget.dart
````dart
  1: import 'package:car_mediator_mobile/core/utils/constants/constants.dart';
  2: import 'package:flutter/material.dart';
  3: import 'package:provider/provider.dart';
  4: 
  5: import '../core/providers/home/home_user_provider.dart';
  6: import '../core/utils/constants/colors_constants.dart';
  7: import '../core/utils/size_config.dart';
  8: import '../models/faq_item_model.dart';
  9: 
 10: class FAQItemWidget extends StatelessWidget {
 11:   const FAQItemWidget({super.key, required this.faqsList});
 12: 
 13:   final List<FAQItemModel> faqsList;
 14: 
 15:   @override
 16:   Widget build(BuildContext context) {
 17:     return ListView.builder(
 18:         shrinkWrap: true,
 19:         physics: const ScrollPhysics(),
 20:         itemCount: faqsList.length,
 21:         itemBuilder: (context, index){
 22:          return _BuildFaqItem(
 23:            model: faqsList[index],
 24:            index: index,
 25:          );
 26:         }
 27:     );
 28:   }
 29: }
 30: 
 31: class _BuildFaqItem extends StatelessWidget {
 32:   const _BuildFaqItem({super.key, required this.model, required this.index});
 33:   final FAQItemModel model;
 34:   final int index;
 35: 
 36:   @override
 37:   Widget build(BuildContext context) {
 38:     final _provider = context.read<HomeUserProvider>();
 39: 
 40:     return Container(
 41:       margin: const EdgeInsets.only(bottom: 8, left: paddingHorizontalConst, right: paddingHorizontalConst),
 42:       decoration: BoxDecoration(
 43:         color: AppColor.secondaryColor,
 44:         borderRadius: BorderRadius.circular(borderRadiusConst),
 45:         border: Border.all(color: AppColor.primaryColor.withOpacity(0.03)),
 46:       ),
 47:       child: Theme(
 48:         data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
 49:         child: Selector<HomeUserProvider, int>(
 50:           selector: (context, provider) => provider.expandedIndexFAQItem,
 51:           builder: (context, currentExpandedIndex, child){
 52: 
 53:             return ExpansionTile(
 54:               key: Key(model.question),
 55:               initiallyExpanded: currentExpandedIndex == index,
 56:               onExpansionChanged: (expanded) {
 57:                 _provider.changeFAQItemIndex(expanded ? index : -1);
 58:               },
 59:               title: Row(
 60:                 children: [
 61:                   Container(
 62:                     padding: const EdgeInsets.all(8),
 63:                     decoration: BoxDecoration(
 64:                       color: AppColor.secondaryColor,
 65:                       borderRadius: BorderRadius.circular(8),
 66:                     ),
 67:                     child: Icon(
 68:                       currentExpandedIndex == index ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
 69:                       color: AppColor.primaryColor,
 70:                       size: 20,
 71:                     ),
 72:                   ),
 73:                   const SizedBox(width: 12),
 74:                   Expanded(
 75:                     child: Text(
 76:                       model.question,
 77:                       style:  TextStyle(
 78:                         fontSize: SizeConfig.widthResponsive(0.035),
 79:                         color: AppColor.textColor,
 80:                         fontWeight: FontWeight.bold,
 81:                       ),
 82:                     ),
 83:                   ),
 84:                 ],
 85:               ),
 86:               trailing: const SizedBox.shrink(),
 87:               children: [
 88:                 Padding(
 89:                   padding: const EdgeInsets.fromLTRB(52, 0, 16, 20),
 90:                   child: Text(
 91:                     model.answer,
 92:                     style: TextStyle(
 93:                       fontSize: 14,
 94:                       color: Colors.grey[700],
 95:                       height: 1.5,
 96:                     ),
 97:                   ),
 98:                 ),
 99:               ],
100:             );
101:           },
102:         ),
103:       ),
104:     );
105:   }
106: }
````

## File: lib/widgets/icon_comp.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../core/utils/constants/colors_constants.dart';
 4: 
 5: class IconComponent extends StatelessWidget {
 6:   const IconComponent({
 7:     this.radius= 10,
 8:     required this.icon,
 9:     Key? key,
10:      this.padding = 12,
11:   }) : super(key: key);
12: 
13:   final double radius;
14:   final Widget icon;
15:   final double padding;
16: 
17:   @override
18:   Widget build(BuildContext context) {
19:     return Material(
20:       color: AppColor.secondaryColor,
21:       borderRadius: BorderRadius.all(Radius.circular(radius)),
22:       child: Padding(padding: EdgeInsets.all(10),
23:         child: icon,
24:     ));
25:   }
26: }
````

## File: lib/widgets/images/add_image_widget.dart
````dart
 1: import 'dart:io';
 2: 
 3: import 'package:flutter/material.dart';
 4: 
 5: import '../../core/utils/constants/colors_constants.dart';
 6: import '../../core/utils/size_config.dart';
 7: 
 8: class AddImageWidget extends StatelessWidget {
 9:   const AddImageWidget({super.key, this.file, this.onTap, this.deleteImage, this.height = 150});
10:   final File? file;
11:   final GestureTapCallback? onTap;
12:   final GestureTapCallback? deleteImage;
13:   final double height;
14: 
15:   @override
16:   Widget build(BuildContext context) {
17:     return GestureDetector(
18:       onTap: onTap,
19:       child: Container(
20:         height: height,
21:         width: SizeConfig.widthResponsive(0.50),
22:         decoration: BoxDecoration(
23:           border: Border.all(color: Colors.grey),
24:           borderRadius: BorderRadius.circular(8),
25:           color: AppColor.secondaryColor,
26:         ),
27:         child: file != null
28:             ? Stack(
29:           fit: StackFit.expand,
30:           children: [
31:             ClipRRect(
32:               borderRadius: BorderRadius.circular(8),
33:               child: Image.file(
34:                 file!,
35:                 fit: BoxFit.cover,
36:               ),
37:             ),
38:             Positioned(
39:               top: 5,
40:               right: 5,
41:               child: InkWell(
42:                 onTap: deleteImage,
43:                 child: Container(
44:                   decoration: const BoxDecoration(
45:                     color: Colors.red,
46:                     shape: BoxShape.circle,
47:                   ),
48:                   padding: const EdgeInsets.all(4),
49:                   child: const Icon(Icons.close,
50:                       color: Colors.white, size: 18),
51:                 ),
52:               ),
53:             ),
54:           ],
55:         )
56:             : const Center(
57:           child: Icon(Icons.add_a_photo,
58:               size: 40, color: AppColor.primaryColor),
59:         ),
60:       ),
61:     );
62:   }
63: }
````

## File: lib/widgets/images/custom_image.dart
````dart
  1: import 'dart:io';
  2: 
  3: import 'package:cached_network_image/cached_network_image.dart';
  4: import 'package:flutter/material.dart';
  5: import 'package:shimmer/shimmer.dart';
  6: 
  7: import '../../core/data_sources/remote/api_path.dart';
  8: import '../../core/utils/constants/assets_path.dart';
  9: 
 10: class CustomImageWidget extends StatelessWidget {
 11:   final File? fileImage;
 12:   final String? urlImage;
 13:   final String? assetImage;
 14:   final double width;
 15:   final double height;
 16:   final double radius;
 17:   final BoxFit fit;
 18:   final Color bgColor;
 19:   final Color? color;
 20:   final String assetDefaultPath;
 21: 
 22:   const CustomImageWidget({
 23:       super.key,
 24:       this.fileImage,
 25:       this.urlImage,
 26:       this.assetImage,
 27:        this.width = double.infinity,
 28:        this.height = double.infinity,
 29:        this.radius = 10,
 30:        this.fit = BoxFit.cover,
 31:      this.bgColor = Colors.transparent,
 32:      this.color,
 33:     this.assetDefaultPath = AssetsPath.logo
 34:   });
 35: 
 36:   @override
 37:   Widget build(BuildContext context) {
 38:     return ClipRRect(
 39:       borderRadius:  BorderRadius.all(Radius.circular(radius)),
 40:       child: Material(
 41:         color: bgColor,
 42:         child: _buildImage(),
 43:       ),
 44:     );
 45:   }
 46: 
 47:   Widget _buildImage() {
 48: 
 49:     if (fileImage != null) {
 50:       return Image.file(
 51:         fileImage!,
 52:         height: height,
 53:         width: width,
 54:         fit: fit,
 55:       );
 56:     }
 57: 
 58:     if (urlImage != null && urlImage!.isNotEmpty) {
 59:       return CachedNetworkImage(
 60:         height: height,
 61:         width: width,
 62:         fit: fit,
 63:         color: color,
 64:         imageUrl: '${ApiPath.baseUrlImage}$urlImage',
 65:         placeholder: (_, __) => _placeholder(),
 66:         errorWidget: (_, __, ___) => _errorImage(),
 67:       );
 68:     }
 69: 
 70:     if (assetImage != null && assetImage!.isNotEmpty) {
 71:       return Image.asset(
 72:         assetImage!,
 73:         height: height,
 74:         width: width,
 75:         fit: fit,
 76:         color: color,
 77:       );
 78:     }
 79: 
 80:     return _errorImage();
 81:   }
 82: 
 83:   Widget _placeholder() => Shimmer.fromColors(
 84:     baseColor: Colors.grey[100]!,
 85:     highlightColor: Colors.grey[300]!,
 86:     child: Image.asset(
 87:       AssetsPath.logo,
 88:       height: width,
 89:       width: width,
 90:     ),
 91:   );
 92: 
 93:   Widget _errorImage() => Image.asset(
 94:     assetDefaultPath,
 95:     height: height,
 96:     width: width,
 97:     fit: fit,
 98:     color: color,
 99:   );
100: }
````

## File: lib/widgets/info_widget.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../core/utils/constants/colors_constants.dart';
 4: 
 5: class InfoWidget extends StatelessWidget {
 6:   const InfoWidget({super.key, required this.text});
 7:   final String text;
 8: 
 9:   @override
10:   Widget build(BuildContext context) {
11:     return Container(
12:       padding: const EdgeInsets.all(16),
13:       decoration: BoxDecoration(
14:         color: const Color(0xFFFFEED6), // لون البيج
15:         borderRadius: BorderRadius.circular(20),
16:       ),
17:       child: Row(
18:         crossAxisAlignment: CrossAxisAlignment.start,
19:         children: [
20:           // أيقونة التنبيه
21:           const Icon(Icons.info, color: AppColor.primaryColor,),
22: 
23:           const SizedBox(width: 12),
24: 
25:           // النص
26:            Expanded(
27:             child: Text(text,
28:               textAlign: TextAlign.right,
29:               style: const TextStyle(
30:                 fontSize: 14,
31:                 fontWeight: FontWeight.w600,
32:                 height: 1.6,
33:                 color: Color(0xFF7A7A7A),
34:               ),
35:             ),
36:           ),
37:         ],
38:       ),
39:     );
40:   }
41: }
````

## File: lib/widgets/item_settings_comp.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../core/utils/constants/colors_constants.dart';
 4: 
 5: class ItemSettingsComponent extends StatelessWidget {
 6:   final double width;
 7:   final double radius;
 8:   final double marginTop;
 9:   final Color color;
10:   final GestureTapCallback? onTap;
11:   final Widget icon;
12:   final String label;
13:   final String? counter;
14:   final String? subtitle;
15: 
16:   const ItemSettingsComponent({
17:     Key? key,
18:     required this.width,
19:     this.radius = 10,
20:     this.marginTop = 10,
21:     this.color = Colors.white,
22:     required this.icon,
23:     required this.label,
24:      this.counter,
25:     this.onTap, this.subtitle,
26:   }) : super(key: key);
27: 
28:   @override
29:   Widget build(BuildContext context) {
30:     return Container(
31:       alignment: Alignment.center,
32:       margin: EdgeInsets.only(top: marginTop),
33:       decoration: BoxDecoration(
34:         borderRadius:BorderRadius.circular(5),
35:         border: Border(right: BorderSide(color: AppColor.primaryColor,width: 4,)),
36:         boxShadow: [
37:           BoxShadow(
38:             color: Colors.grey.withOpacity(0.1),
39:             spreadRadius: 1,
40:             blurRadius: 2,
41:             offset: Offset(1, 1), // changes position of shadow
42:           ),
43:         ],
44:       ),
45:       child:Material(
46:         color: Colors.white,
47:         child: ListTile(
48:           onTap: onTap,
49:           minTileHeight: 0,
50:           contentPadding: const EdgeInsets.only(left: 10,right: 10,bottom: 5,top: 5),
51:           title: Row(
52:             mainAxisSize: MainAxisSize.min,
53:             children: [
54:               Expanded(child: Text( label ,style: TextStyle(fontSize: width * 0.035,color: AppColor.blackColor, fontWeight: FontWeight.w600,),)),
55:               if(counter != null)
56:               Text( '${counter}' ,style: TextStyle(fontSize: width * 0.035,color: AppColor.greyShade2, fontWeight: FontWeight.w600,),),
57:             ],
58:           ),
59:           subtitle: subtitle == null ? null : Text('${subtitle}'),
60:           leading:  icon,
61:           trailing: const Icon(Icons.arrow_forward_ios,color: AppColor.primaryColor, size: 18,),
62:         ),
63:       ) ,
64:     );
65:   }
66: }
````

## File: lib/widgets/item_table_widget.dart
````dart
 1: import 'package:car_mediator_mobile/widgets/vertical_divider_widget.dart';
 2: import 'package:flutter/material.dart';
 3: 
 4: import '../core/utils/constants/colors_constants.dart';
 5: import '../core/utils/size_config.dart';
 6: 
 7: class ItemTableWidget extends StatelessWidget {
 8:   const ItemTableWidget({Key? key, required this.keyString, required this.value,}) : super(key: key);
 9:   final String keyString;
10:   final dynamic value;
11: 
12:   @override
13:   Widget build(BuildContext context) {
14:     if(value == null || value == '') {
15:       return const SizedBox.shrink();
16:     }
17:     return Container(
18:       width: SizeConfig.width,
19:       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 8,),
20:       margin: const EdgeInsets.only(bottom: 5,),
21:       decoration: BoxDecoration(
22:         color: AppColor.secondaryColor,
23:         borderRadius: BorderRadius.circular(8.0),
24:       ),
25:       child: Row(
26:         mainAxisSize: MainAxisSize.min,
27:         crossAxisAlignment: CrossAxisAlignment.center,
28:         children: [
29:           Expanded(flex:1,child:Text(keyString,style: TextStyle(color: AppColor.greyColor,fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w500),),),
30:           VerticalDividerWidget(height: SizeConfig.heightResponsive(0.035),),
31:           const SizedBox(width: 3,),
32:           Expanded(flex:2,child: Text('${value ?? ''}',style: TextStyle(color: AppColor.textColor,fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w400),),),
33:         ],
34:       ),
35:     );
36:   }
37: }
````

## File: lib/widgets/my_account/info_account_card_widget.dart
````dart
  1: import 'package:car_mediator_mobile/core/styles/styles.dart';
  2: import 'package:flutter/material.dart';
  3: import 'package:provider/provider.dart';
  4: 
  5: import '../../core/providers/auth_provider.dart';
  6: import '../../core/utils/constants/assets_path.dart';
  7: import '../../core/utils/constants/colors_constants.dart';
  8: import '../../core/utils/dialogUtils.dart';
  9: import '../../core/utils/size_config.dart';
 10: import '../../features/user/profile/screens/profile_user_screen.dart';
 11: import '../../models/user_model.dart';
 12: import '../components.dart';
 13: import '../custom_button.dart';
 14: import '../images/custom_image.dart';
 15: 
 16: 
 17: class InfoAccountCardWidget extends StatelessWidget {
 18:   const InfoAccountCardWidget({Key? key, required this.width, required this.height, this.model,}) : super(key: key);
 19:   final double width;
 20:   final double height;
 21:   final UserModel? model;
 22: 
 23:   @override
 24:   Widget build(BuildContext context) {
 25:     final _authProvider = Provider.of<AuthProvider>(context);
 26:     return Container(
 27:       padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
 28:       decoration: whiteBoxDecoration(),
 29:       child: Column(
 30:         crossAxisAlignment: CrossAxisAlignment.start,
 31:         mainAxisAlignment: MainAxisAlignment.center,
 32:         mainAxisSize: MainAxisSize.min,
 33:         children: [
 34:           // const SizedBox(height: 16,),
 35:           Row(
 36:             crossAxisAlignment: CrossAxisAlignment.center,
 37:             mainAxisSize: MainAxisSize.min,
 38:             children: [
 39:               // CircularImageComponent(size: width * 0.20, url: model?.logo,),
 40:               CustomImageWidget(
 41:                 urlImage: _authProvider.currentUseModel?.logo,
 42:                 width: SizeConfig.widthResponsive(0.20),
 43:                 height: SizeConfig.widthResponsive(0.20),
 44:                 assetDefaultPath: AssetsPath.user_image,
 45:               ),
 46:               const SizedBox(width: 8,),
 47:               Expanded(child: Column(
 48:                 crossAxisAlignment: CrossAxisAlignment.start,
 49:                 mainAxisSize: MainAxisSize.min,
 50:                 children: [
 51:                   Text('${ _authProvider.currentUseModel?.name ?? 'مستخدم مجهول'}',overflow:TextOverflow.ellipsis ,style: txtMedium04),
 52:                   // if(model?.created_at != null && model?.created_at != '')
 53:                   // Padding(padding: const EdgeInsets.only(top: 5),child: Text('${'عضو منذ'} ${DateParser.getDateFromString(model?.created_at ?? '')}',overflow:TextOverflow.ellipsis ,style: grey035W500(width)),),
 54:                   CustomButton(
 55:                     label: 'عرض وتعديل الملف الشخصي',
 56:                     paddingHorizontal: 0,
 57:                     alignmentText: Alignment.centerRight,
 58:                     primaryColor: Colors.transparent,
 59:                     bgOverlayColor: AppColor.secondaryColor,
 60:                     isUnderLineText: true,
 61:                     txtSize: width * 0.04,
 62:                     textColor: Colors.blue,
 63:                     onTap: (){
 64:                       if(!_authProvider.isLoggedIn){
 65:                         DialogUtils().showLoginDialog(context);
 66:                       }else{
 67:                         navigationPush(context, ProfileVendorScreen());
 68:                       }
 69:                     },
 70:                   ),
 71:                 ],
 72:               )),
 73:             ],
 74:           ),
 75:           // if(_authProvider.isLogIn)
 76:           // Padding(
 77:           //   padding: const EdgeInsets.only(top: 10),
 78:           // child: Row(
 79:           //   children: [
 80:           //     if(ValidationUtils.isNotNullOrEmpty(model?.accountNumber))
 81:           //       Expanded(flex:1,child: CustomButton(
 82:           //         label: '${'رقم الحساب'}: ${model?.accountNumber}',
 83:           //         paddingHorizontal: 5,
 84:           //         primaryColor: AppColor.secondaryColor,
 85:           //         bgOverlayColor: AppColor.primaryColor.withOpacity(0.2),
 86:           //         txtSize: width * 0.03,
 87:           //         textColor: AppColor.blackColor,
 88:           //         icon: const Icon(Icons.copy, color: AppColor.primaryColor, size: 16,),
 89:           //         onTap: () async {
 90:           //           await Utils.copyToClipboard(context, model?.accountNumber.toString() ?? '');
 91:           //         },
 92:           //       )),
 93:           //     const SizedBox(width: 8,),
 94:           //
 95:           //
 96:           //   ],
 97:           // ),)
 98: 
 99:         ],
100:       ),);
101:   }
102: 
103:   bool _isVersionOlder(String current, String latest) {
104:     List<String> currentParts = current.split('.');
105:     List<String> latestParts = latest.split('.');
106: 
107:     for (int i = 0; i < latestParts.length; i++) {
108:       int currentPart = int.parse(currentParts[i]);
109:       int latestPart = int.parse(latestParts[i]);
110: 
111:       if (currentPart < latestPart) {
112:         return true;
113:       } else if (currentPart > latestPart) {
114:         return false;
115:       }
116:     }
117:     return false;
118:   }
119: }
````

## File: lib/widgets/ontap_container_widget.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../core/utils/constants/colors_constants.dart';
 4: import '../core/utils/constants/constants.dart';
 5: 
 6: class OnTapContainerWidget extends StatelessWidget {
 7:   const OnTapContainerWidget({super.key, required this.child, this.onTap});
 8: 
 9:   final Widget child;
10:   final GestureTapCallback? onTap;
11: 
12:   @override
13:   Widget build(BuildContext context) {
14:     return Material(
15:       color: AppColor.secondaryColor,
16:       borderRadius: BorderRadius.circular(borderRadiusConst),
17:       child: InkWell(
18:         splashColor: AppColor.primaryColor.withOpacity(0.2),
19:         highlightColor: Colors.transparent,
20:         borderRadius: BorderRadius.circular(borderRadiusConst),
21:         onTap: onTap,
22:         child: Container(
23:           alignment: Alignment.center,
24:           margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
25:           decoration: BoxDecoration(
26:             borderRadius: BorderRadius.circular(borderRadiusConst),
27:             border: Border.all(color: AppColor.primaryColor.withOpacity(0.03)),
28:           ),
29:           child: child ,
30:         ),
31:       ),
32:     );
33:   }
34: }
````

## File: lib/widgets/request_status_widget.dart
````dart
 1: import 'package:car_mediator_mobile/core/utils/size_config.dart';
 2: import 'package:flutter/material.dart';
 3: 
 4: import '../core/utils/constants/enumeration.dart';
 5: 
 6: class RequestStatusWidget extends StatelessWidget {
 7:   const RequestStatusWidget({super.key, required this.status});
 8:   final String status;
 9: 
10:   @override
11:   Widget build(BuildContext context) {
12:     if(status == RequestCustomerStatusEnum.open.name) {
13:       return const _BuildStatus(status: 'مفتوح', color: Color(0xff2196F3),);
14:     }
15: 
16:     if(status == RequestCustomerStatusEnum.closed.name) {
17:       return const _BuildStatus(status: 'مغلق', color: Color(0xff9E9E9E),);
18:     }
19: 
20:     if(status == RequestCustomerStatusEnum.canceled.name) {
21:       return const _BuildStatus(status: 'ملغي', color: Color(0xffF44336),);
22:     }
23: 
24:     if(status == RequestCustomerStatusEnum.completed.name) {
25:       return const _BuildStatus(status: 'مكتمل', color: Color(0xff4CAF50),);
26:     }
27: 
28:     return const SizedBox.shrink();
29:   }
30: }
31: 
32: class _BuildStatus extends StatelessWidget {
33:   const _BuildStatus({super.key, required this.status, required this.color});
34:   final String status;
35:   final Color color;
36: 
37:   @override
38:   Widget build(BuildContext context) {
39:     return Container(
40:       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
41:       margin: const EdgeInsets.symmetric(horizontal: 20,),
42:       decoration: BoxDecoration(
43:         borderRadius: BorderRadius.circular(10),
44:         color: color.withOpacity(0.1),
45:       ),
46:       child: Text(
47:         status,
48:         style: TextStyle(
49:             fontSize: SizeConfig.widthResponsive(0.04),
50:             fontWeight: FontWeight.w600,
51:             color: color),
52:       ),
53:     );
54:   }
55: }
````

## File: lib/widgets/section_badge_widget.dart
````dart
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
````

## File: lib/widgets/section_label_widget.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../core/utils/constants/colors_constants.dart';
 4: import '../core/utils/constants/constants.dart';
 5: import '../core/utils/size_config.dart';
 6: 
 7: class SectionLabelWidget extends StatelessWidget {
 8:   const SectionLabelWidget({super.key,required this.label, this.fontSize, this.onTap, this.paddingVertical,});
 9:   final String label;
10:   final double? paddingVertical;
11:   final double? fontSize;
12:   final GestureTapCallback? onTap;
13:   @override
14:   Widget build(BuildContext context) {
15:     return Padding(
16:       padding: EdgeInsets.symmetric(horizontal: paddingHorizontalConst ,vertical: SizeConfig.heightResponsive(paddingVertical ?? 0.02)),
17:     child: Row(
18:       children: [
19:         SizedBox(
20:           height: SizeConfig.widthResponsive(0.07),
21:           child:  VerticalDivider(
22:             color: AppColor.thirdColor,
23:             thickness: 3.5,
24:           ),
25:         ),
26:         const SizedBox(width: 5,),
27:         Expanded(child: Text(label,
28:           style: TextStyle(color: AppColor.primaryColor ,fontSize: SizeConfig.widthResponsive(fontSize ?? 0.045),fontWeight: FontWeight.w700,),
29:         ),),
30:         if(onTap != null)
31:           Align(
32:             alignment: Alignment.centerLeft,
33:             child: Padding(
34:                 padding: const EdgeInsets.all(8),
35:                 child:InkWell(
36:                   onTap: onTap,
37:                   child: Row(
38:                     crossAxisAlignment: CrossAxisAlignment.center,
39:                     children: [
40:                       Text('المزيد',
41:                         style: TextStyle(color: Colors.blue ,fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w600,),),
42:                       const Icon(Icons.arrow_forward_ios ,size: 15,color: Colors.blue,),
43:                     ],
44:                   ),
45:                 )
46:             ),
47:           )
48:       ],
49:     ),);
50:   }
51: }
````

## File: lib/widgets/shared/complaint_vendor_service_widget.dart
````dart
  1: import 'package:car_mediator_mobile/core/providers/common_provider.dart';
  2: import 'package:car_mediator_mobile/core/styles/styles.dart';
  3: import 'package:flutter/material.dart';
  4: import 'package:provider/provider.dart';
  5: 
  6: import '../../core/helpers/helpers.dart';
  7: import '../../core/utils/connection_utils.dart';
  8: import '../../core/utils/constants/colors_constants.dart';
  9: import '../../core/utils/dialogUtils.dart';
 10: import '../../core/utils/form_validator.dart';
 11: import '../../core/utils/size_config.dart';
 12: import '../custom_button.dart';
 13: import '../custom_textfield.dart';
 14: 
 15: class ComplaintVendorServiceWidget extends StatefulWidget {
 16:   const ComplaintVendorServiceWidget({super.key, required this.requestId, required this.responseId});
 17:   final int requestId;
 18:   final int responseId;
 19: 
 20:   @override
 21:   State<ComplaintVendorServiceWidget> createState() =>
 22:       _ComplaintVendorServiceWidgetState();
 23: }
 24: 
 25: class _ComplaintVendorServiceWidgetState
 26:     extends State<ComplaintVendorServiceWidget> {
 27: 
 28:   final _formKey = GlobalKey<FormState>();
 29:   final descriptionController = TextEditingController();
 30: 
 31:   @override
 32:   void dispose() {
 33:     super.dispose();
 34:     descriptionController.dispose();
 35:   }
 36: 
 37: 
 38:   @override
 39:   Widget build(BuildContext context) {
 40:     final _prov = Provider.of<CommonProvider>(context);
 41:     return Container(
 42:       width: SizeConfig.width,
 43:       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
 44:       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
 45:       decoration: BoxDecoration(
 46:           color: Colors.white,
 47:           borderRadius: BorderRadius.circular(15)
 48:       ),
 49:       child: Form(
 50:         key: _formKey,
 51:         child: ListView(
 52:           shrinkWrap: true,
 53:           children: [
 54:             Align(
 55:               alignment: Alignment.centerLeft,
 56:               child: IconButton(
 57:                   onPressed: () => Navigator.pop(context),
 58:                   icon: const Icon(
 59:                     Icons.close,
 60:                     color: AppColor.primaryColor,
 61:                   )),
 62:             ),
 63:             SizedBox(
 64:               height: 10,
 65:             ),
 66:             Text('إبلاغ عن إساءة',textAlign: TextAlign.center, style: TextStyle(color: Colors.red, fontSize: SizeConfig.widthResponsive(0.04), fontWeight: FontWeight.w600),),
 67:             SizedBox(
 68:               height: SizeConfig.heightResponsive(0.03),
 69:             ),
 70:             CustomTextField(
 71:               label: 'البلاغ',
 72:               hint: 'إكتب وتفاصيل البلاغ...',
 73:               maxLines: 6,
 74:               controller: descriptionController,
 75:               validator: (value) => FormValidatorUtils.textValidator(value,
 76:                   isRequired: true, minLength: 50, maxLength: 2000),
 77:               maxLength: 2000,
 78:             ),
 79:             SizedBox(
 80:               height: SizeConfig.heightResponsive(0.02),
 81:             ),
 82:             CustomButton(
 83:               label: 'إرسال البلاغ',
 84:               txtSize: SizeConfig.widthResponsive(0.04),
 85:               loading: _prov.isLoading,
 86:               onTap: () async {
 87:                 Helper.dismissKeyBoard();
 88:                 bool myValid = _formKey.currentState!.validate();
 89:                 if (myValid) {
 90:                   if (!await ConnectionUtils.hasInternetConnection()) {
 91:                     DialogUtils().showNoInternetDialog(context);
 92:                     return;
 93:                   }
 94:                   await _prov.complaintVendorService(context,body: {
 95:                     'requestId' : widget.requestId,
 96:                     'responseId' : widget.responseId,
 97:                     'description' : descriptionController.text.toString(),
 98:                   });
 99:                 }
100:               },
101:             ),
102:             SizedBox(
103:               height: SizeConfig.heightResponsive(0.04),
104:             ),
105:           ],
106:         ),
107:       ),
108:     );
109:   }
110: }
````

## File: lib/widgets/vendor/dashboard_item_home.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: import '../../core/styles/styles.dart';
 4: import '../../core/utils/constants/colors_constants.dart';
 5: 
 6: class DashboardItemHome extends StatelessWidget {
 7:   const DashboardItemHome(
 8:       {super.key, required this.title, this.subTitle = '', required this.icon, this.onTap});
 9:   final String title;
10:   final String subTitle;
11:   final Widget icon;
12:   final GestureTapCallback? onTap;
13: 
14:   @override
15:   Widget build(BuildContext context) {
16:     return Material(
17:       color: AppColor.secondaryColor,
18:       borderRadius: BorderRadius.circular(10),
19:       child: ListTile(
20:         onTap: onTap,
21:         contentPadding:
22:         const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
23:         leading: icon,
24:         title: Text(title, style: txtBold04,),
25:         subtitle: Text(subTitle),
26:       ),
27:     );
28:   }
29: }
````

## File: lib/widgets/vendor/request_vendor_card.dart
````dart
 1: import 'package:car_mediator_mobile/core/styles/styles.dart';
 2: import 'package:car_mediator_mobile/core/utils/constants/assets_path.dart';
 3: import 'package:car_mediator_mobile/core/utils/size_config.dart';
 4: import 'package:car_mediator_mobile/features/vendor/new_requests/screens/details_new_request_screen.dart';
 5: import 'package:car_mediator_mobile/widgets/components.dart';
 6: import 'package:car_mediator_mobile/widgets/custom_button.dart';
 7: import 'package:flutter/material.dart';
 8: 
 9: import '../../core/utils/constants/colors_constants.dart';
10: import '../../core/utils/date_parser_utils.dart';
11: import '../../core/utils/utils.dart';
12: import '../../models/request_eligible_vendor_model.dart';
13: 
14: class RequestVendorCard extends StatelessWidget {
15:   const RequestVendorCard({super.key, required this.model});
16:   final RequestEligibleVendorModel model;
17:   @override
18:   Widget build(BuildContext context) {
19:     return Material(
20:       color: Colors.white,
21:       borderRadius: BorderRadius.circular(10),
22:       elevation: 1,
23:       child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
24:       child: Column(
25:         mainAxisSize: MainAxisSize.min,
26:         crossAxisAlignment: CrossAxisAlignment.start,
27:         children: [
28:           Row(
29:             children: [
30:               Expanded(flex:1, child: Align(
31:                 alignment: Alignment.centerRight,
32:                 child: Text('رقم الطلب :  ${Utils.numberFormatting(model.requestId)}', style: txtMedium04,),
33:               )),
34:              const SizedBox(width: 5,),
35:               Expanded(flex:1, child: Align(
36:                 alignment: Alignment.centerRight,
37:                 child: Row(
38:                   mainAxisAlignment: MainAxisAlignment.center,
39:                   crossAxisAlignment: CrossAxisAlignment.center,
40:                   children: [
41:                     const Icon(Icons.date_range, color: AppColor.grey350, size: 20,),
42:                     const SizedBox(width: 5,),
43:                     Text(DateParserUtils.getDateWithTimeFromString(model.requestDate), style: txtMedium04,),
44:                   ],
45:                 ),
46:               )),
47:             ],
48:           ),
49:           const Divider(color: AppColor.grey200,),
50:           Row(
51:             mainAxisSize: MainAxisSize.min,
52:             children: [
53:               const Icon(Icons.category, color: AppColor.grey350, size: 18,),
54:               const SizedBox(width: 5,),
55:               Text('القسم :', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
56:               const SizedBox(width: 5,),
57:               Text(model.catNameAr, style: txtMedium04 ,),
58:             ],
59:           ),
60:           const SizedBox(height: 5,),
61:           Row(
62:             mainAxisSize: MainAxisSize.min,
63:             children: [
64:               const Icon(Icons.location_on, color: AppColor.grey350, size: 18,),
65:               const SizedBox(width: 5,),
66:               Text('مدينة الطلب :', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
67:               const SizedBox(width: 5,),
68:               Text(model.cityCustomerNameAr, style: txtMedium04,),
69:             ],
70:           ),
71:           const SizedBox(height: 8,),
72:           Text(model.description, style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w400), overflow: TextOverflow.ellipsis, maxLines: 2,),
73: 
74:           const SizedBox(height: 8,),
75:           CustomButton(
76:               label: 'تفاصيل الطلب',
77:               txtSize: SizeConfig.widthResponsive(0.04),
78:               primaryColor: Colors.transparent,
79:               textColor: AppColor.primaryColor,
80:               borderColor: AppColor.primaryColor,
81:               bgOverlayColor: AppColor.primaryColor.withOpacity(0.08),
82:               onTap: (){
83:                 navigationPush(context, DetailsNewRequestScreen(requestId: model.requestId,));
84:               },
85:           )
86:         ],
87:       ),),
88:     );
89:   }
90: }
````

## File: lib/widgets/vendor/response_vendor_card.dart
````dart
  1: import 'package:car_mediator_mobile/core/styles/styles.dart';
  2: import 'package:car_mediator_mobile/core/utils/size_config.dart';
  3: import 'package:car_mediator_mobile/features/vendor/new_requests/screens/details_new_request_screen.dart';
  4: import 'package:car_mediator_mobile/widgets/components.dart';
  5: import 'package:car_mediator_mobile/widgets/custom_button.dart';
  6: import 'package:flutter/material.dart';
  7: 
  8: import '../../core/utils/constants/colors_constants.dart';
  9: import '../../core/utils/constants/enumeration.dart';
 10: import '../../core/utils/date_parser_utils.dart';
 11: import '../../core/utils/utils.dart';
 12: import '../../features/vendor/responses/screens/details_response_request_screen.dart';
 13: import '../../models/response_request_model.dart';
 14: import '../request_status_widget.dart';
 15: 
 16: class ResponseVendorCard extends StatelessWidget {
 17:   const ResponseVendorCard({super.key, required this.model});
 18:   final ResponseRequestModel model;
 19: 
 20:   @override
 21:   Widget build(BuildContext context) {
 22:     return Material(
 23:       color: Colors.white,
 24:       borderRadius: BorderRadius.circular(10),
 25:       elevation: 1,
 26:       child: Padding(
 27:         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
 28:         child: Column(
 29:           mainAxisSize: MainAxisSize.min,
 30:           crossAxisAlignment: CrossAxisAlignment.start,
 31:           children: [
 32:             Row(
 33:               children: [
 34:                 Expanded(
 35:                     flex: 1,
 36:                     child: Align(
 37:                       alignment: Alignment.centerRight,
 38:                       child: Text(
 39:                         'رقم الطلب :  ${Utils.numberFormatting(model.requestId)}',
 40:                         style: txtMedium04,
 41:                       ),
 42:                     )),
 43:                 const SizedBox(
 44:                   width: 5,
 45:                 ),
 46:                 Expanded(
 47:                     flex: 1,
 48:                     child: Align(
 49:                       alignment: Alignment.centerLeft,
 50:                       child: RequestStatusWidget(
 51:                         status: model.requestStatus,
 52:                       ),
 53:                     )),
 54:               ],
 55:             ),
 56:             const Divider(
 57:               color: AppColor.grey200,
 58:             ),
 59:             _BuildResponseCardItem(
 60:               icon: Icons.category,
 61:               label: 'القسم :',
 62:               value: model.catNameAr,
 63:             ),
 64:             const SizedBox(
 65:               height: 5,
 66:             ),
 67:             _BuildResponseCardItem(
 68:               icon: Icons.location_on,
 69:               label: 'مدينة الطلب :',
 70:               value: model.cityCustomerNameAr,
 71:             ),
 72:             const SizedBox(
 73:               height: 5,
 74:             ),
 75:             _BuildResponseCardItem(
 76:               icon: Icons.date_range,
 77:               label: 'تاريخ الطلب :',
 78:               value:
 79:                   DateParserUtils.getDateWithTimeFromString(model.requestDate),
 80:             ),
 81:             const SizedBox(
 82:               height: 5,
 83:             ),
 84:             _BuildResponseCardItem(
 85:               icon: Icons.date_range,
 86:               label: 'تاريخ الرد :',
 87:               value:
 88:                   DateParserUtils.getDateWithTimeFromString(model.responseDate),
 89:             ),
 90:             const SizedBox(
 91:               height: 5,
 92:             ),
 93:             _BuildResponseCardItem(
 94:               icon: Icons.reply,
 95:               label: 'حالة الرد :',
 96:               value: model.responseStatus ==
 97:                       ResponseRequestAvailabilityEnum.available.name
 98:                   ? 'متوفر'
 99:                   : model.responseStatus ==
100:                           ResponseRequestAvailabilityEnum
101:                               .available_with_difference.name
102:                       ? 'متوفر مع إختلاف'
103:                       : 'لم يتم الرد',
104:               textColor: Colors.green,
105:             ),
106:             const SizedBox(
107:               height: 8,
108:             ),
109:             Text(
110:               model.description,
111:               style: TextStyle(
112:                   fontSize: SizeConfig.widthResponsive(0.04),
113:                   color: AppColor.greyColor,
114:                   fontWeight: FontWeight.w400),
115:               overflow: TextOverflow.ellipsis,
116:               maxLines: 2,
117:             ),
118:             const SizedBox(
119:               height: 8,
120:             ),
121:             CustomButton(
122:               label: 'تفاصيل الرد',
123:               txtSize: SizeConfig.widthResponsive(0.04),
124:               primaryColor: Colors.transparent,
125:               textColor: AppColor.primaryColor,
126:               borderColor: AppColor.primaryColor,
127:               bgOverlayColor: AppColor.primaryColor.withOpacity(0.08),
128:               onTap: () {
129:                 navigationPush(
130:                     context,
131:                     DetailsResponseRequestScreen(
132:                       responseId: model.responseId,
133:                     ));
134:               },
135:             )
136:           ],
137:         ),
138:       ),
139:     );
140:   }
141: }
142: 
143: class _BuildResponseCardItem extends StatelessWidget {
144:   const _BuildResponseCardItem(
145:       {super.key,
146:       required this.icon,
147:       required this.label,
148:       required this.value,
149:         this.textColor = AppColor.primaryColor});
150:   final IconData icon;
151:   final String label;
152:   final String value;
153:   final Color textColor;
154: 
155:   @override
156:   Widget build(BuildContext context) {
157:     return Row(
158:       mainAxisSize: MainAxisSize.min,
159:       children: [
160:         Icon(
161:           icon,
162:           color: AppColor.grey350,
163:           size: 18,
164:         ),
165:         const SizedBox(
166:           width: 5,
167:         ),
168:         Text(
169:           label,
170:           style: TextStyle(
171:               fontSize: SizeConfig.widthResponsive(0.04),
172:               color: AppColor.greyColor,
173:               fontWeight: FontWeight.w500),
174:         ),
175:         const SizedBox(
176:           width: 5,
177:         ),
178:         Text(
179:           value,
180:           style: TextStyle(
181:             color: textColor,fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w500,
182:           ),
183:         ),
184:       ],
185:     );
186:   }
187: }
````

## File: lib/widgets/vertical_divider_widget.dart
````dart
 1: import 'package:flutter/material.dart';
 2: 
 3: class VerticalDividerWidget extends StatelessWidget {
 4:   const VerticalDividerWidget({Key? key, required this.height, this.bgColor = Colors.white,}) : super(key: key);
 5:   final double height;
 6:   final Color bgColor;
 7:   @override
 8:   Widget build(BuildContext context) {
 9:     return SizedBox(
10:       height: height,
11:       child:  VerticalDivider(
12:         color: bgColor,
13:         thickness: 3,
14:         width: 20,
15:       ),
16:     );
17:   }
18: }
````

## File: pubspec.yaml
````yaml
  1: name: car_mediator_mobile
  2: description: "A new Flutter project."
  3: # The following line prevents the package from being accidentally published to
  4: # pub.dev using `flutter pub publish`. This is preferred for private packages.
  5: publish_to: 'none' # Remove this line if you wish to publish to pub.dev
  6: 
  7: # The following defines the version and build number for your application.
  8: # A version number is three numbers separated by dots, like 1.2.43
  9: # followed by an optional build number separated by a +.
 10: # Both the version and the builder number may be overridden in flutter
 11: # build by specifying --build-name and --build-number, respectively.
 12: # In Android, build-name is used as versionName while build-number used as versionCode.
 13: # Read more about Android versioning at https://developer.android.com/studio/publish/versioning
 14: # In iOS, build-name is used as CFBundleShortVersionString while build-number is used as CFBundleVersion.
 15: # Read more about iOS versioning at
 16: # https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html
 17: # In Windows, build-name is used as the major, minor, and patch parts
 18: # of the product and file versions while build-number is used as the build suffix.
 19: version: 1.0.0+1
 20: 
 21: environment:
 22:   sdk: '>=3.4.3 <4.0.0'
 23: 
 24: # Dependencies specify other packages that your package needs in order to work.
 25: # To automatically upgrade your package dependencies to the latest versions
 26: # consider running `flutter pub upgrade --major-versions`. Alternatively,
 27: # dependencies can be manually updated by changing the version numbers below to
 28: # the latest version available on pub.dev. To see which dependencies have newer
 29: # versions available, run `flutter pub outdated`.
 30: dependencies:
 31:   flutter:
 32:     sdk: flutter
 33:   flutter_localizations:
 34:     sdk: flutter
 35: 
 36:   # The following adds the Cupertino Icons font to your application.
 37:   # Use with the CupertinoIcons class for iOS style icons.
 38:   cupertino_icons: ^1.0.6
 39:   cached_network_image: ^3.4.1
 40:   image_picker: ^1.1.2
 41:   provider: ^6.1.5
 42:   http: ^1.5.0
 43:   flutter_secure_storage: ^9.2.4
 44:   permission_handler: ^12.0.1
 45:   intl: ^0.20.2
 46:   shimmer: ^3.0.0
 47:   timeago: ^3.7.1
 48:   hive: ^2.2.3
 49:   hive_flutter: ^1.1.0
 50:   another_flushbar: ^1.12.30
 51:   badges: ^3.1.2
 52:   carousel_slider: ^5.1.1
 53:   dropdown_search: ^5.0.6
 54:   device_info_plus: ^12.1.0
 55:   url_launcher: ^6.3.2
 56:   firebase_core: ^4.2.0
 57:   firebase_messaging: ^16.0.3
 58:   flutter_local_notifications: ^19.4.2
 59:   web_socket_channel: ^3.0.3
 60: 
 61: # build_runner run ---> flutter packages pub run build_runner build
 62: dev_dependencies:
 63:   hive_generator: ^2.0.1
 64:   build_runner: ^2.4.6
 65:   flutter_test:
 66:     sdk: flutter
 67: 
 68:   # The "flutter_lints" package below contains a set of recommended lints to
 69:   # encourage good coding practices. The lint set provided by the package is
 70:   # activated in the `analysis_options.yaml` file located at the root of your
 71:   # package. See that file for information about deactivating specific lint
 72:   # rules and activating additional ones.
 73:   flutter_lints: ^3.0.0
 74: 
 75: # For information on the generic Dart part of this file, see the
 76: # following page: https://dart.dev/tools/pub/pubspec
 77: 
 78: # The following section is specific to Flutter packages.
 79: flutter:
 80:   # generate: true => for flutter_localizations run --> flutter gen-l10n | flutter gen-l10n --watch for devlopment
 81:   generate: true
 82: 
 83:   # The following line ensures that the Material Icons font is
 84:   # included with your application, so that you can use the icons in
 85:   # the material Icons class.
 86:   uses-material-design: true
 87: 
 88:   # To add assets to your application, add an assets section, like this:
 89:   assets:
 90:     - assets/
 91:     - assets/images/
 92:   fonts:
 93:     - family: Tajawal
 94:       fonts:
 95:         - asset: assets/fonts/Tajawal-Light.ttf
 96:           weight: 300
 97:         - asset: assets/fonts/Tajawal-Regular.ttf
 98:           weight: 400
 99:         - asset: assets/fonts/Tajawal-Medium.ttf
100:           weight: 500
101:         - asset: assets/fonts/Tajawal-Bold.ttf
102:           weight: 700
103: 
104:   # An image asset can refer to one or more resolution-specific "variants", see
105:   # https://flutter.dev/assets-and-images/#resolution-aware
106: 
107:   # For details regarding adding assets from package dependencies, see
108:   # https://flutter.dev/assets-and-images/#from-packages
109: 
110:   # To add custom fonts to your application, add a fonts section here,
111:   # in this "flutter" section. Each entry in this list should have a
112:   # "family" key with the font family name, and a "fonts" key with a
113:   # list giving the asset and other descriptors for the font. For
114:   # example:
115:   # fonts:
116:   #   - family: Schyler
117:   #     fonts:
118:   #       - asset: fonts/Schyler-Regular.ttf
119:   #       - asset: fonts/Schyler-Italic.ttf
120:   #         style: italic
121:   #   - family: Trajan Pro
122:   #     fonts:
123:   #       - asset: fonts/TrajanPro.ttf
124:   #       - asset: fonts/TrajanPro_Bold.ttf
125:   #         weight: 700
126:   #
127:   # For details regarding fonts from package dependencies,
128:   # see https://flutter.dev/custom-fonts/#from-packages
````

## File: test/widget_test.dart
````dart
1: import 'package:flutter_test/flutter_test.dart';
2: 
3: void main() {
4:   testWidgets('Smoke test placeholder', (WidgetTester tester) async {
5:     // Placeholder test
6:   });
7: }
````

## File: lib/core/data_sources/remote/firebase/fcm_service.dart
````dart
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
````

## File: lib/core/providers/notification_badge_provider.dart
````dart
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
````

## File: lib/features/user/home/screens/home_user_page.dart
````dart
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
````

## File: lib/features/user/home/widgets/home_app_bar_widget.dart
````dart
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
````

## File: lib/features/vendor/home/screens/home_vendor_page.dart
````dart
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
````

## File: lib/features/vendor/home/widgets/app_bar_home_vendor_page.dart
````dart
 1: import 'package:badges/badges.dart' as badges;
 2: import 'package:car_mediator_mobile/core/styles/styles.dart';
 3: import 'package:car_mediator_mobile/core/utils/constants/extensions.dart';
 4: import 'package:car_mediator_mobile/widgets/images/custom_image.dart';
 5: import 'package:flutter/material.dart';
 6: import 'package:provider/provider.dart';
 7: 
 8: import '../../../../core/providers/auth_provider.dart';
 9: import '../../../../core/utils/constants/assets_path.dart';
10: import '../../../../core/utils/constants/colors_constants.dart';
11: import '../../../../core/utils/size_config.dart';
12: import '../../../../widgets/components.dart';
13: import '../../../shared/notifications/screens/notifications_screen.dart';
14: 
15: class AppBarHomeVendorPage extends StatelessWidget implements PreferredSizeWidget {
16:   const AppBarHomeVendorPage({super.key});
17: 
18:   @override
19:   Widget build(BuildContext context) {
20:     final _provider = context.read<AuthProvider>();
21:     return AppBar(
22:         backgroundColor: Colors.white,
23:         title: Row(
24:           children: [
25:             const SizedBox(width: 5),
26:             Column(
27:               crossAxisAlignment: CrossAxisAlignment.start,
28:               children: [
29:                 Text('مـرحبـاً', style: txtLightSemiBold035,),
30:                 Text(
31:                     _provider.currentUseModel?.companyNameAr ?? context.loc.appName,
32:                   style: txtSemiBold033,
33:                 ),
34:               ],
35:             ),
36:           ],
37:         ),
38:         elevation: 0,
39:         actions: const [],
40:         leadingWidth: SizeConfig.widthResponsive(0.18),
41:         titleSpacing: 0,
42:         leading:  Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
43:           child: CustomImageWidget(urlImage: _provider.currentUseModel?.logo),
44:         ));
45:   }
46: 
47:   // height of appbar
48:   @override
49:   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
50: }
````

## File: lib/features/vendor/register/screens/register_vendor_screen.dart
````dart
  1: import 'dart:convert';
  2: 
  3: import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
  4: import 'package:car_mediator_mobile/core/utils/connection_utils.dart';
  5: import 'package:car_mediator_mobile/core/utils/dialogUtils.dart';
  6: import 'package:car_mediator_mobile/widgets/dropdown_search/categories_dropdown_search.dart';
  7: import 'package:flutter/material.dart';
  8: import 'package:provider/provider.dart';
  9: 
 10: import '../../../../core/helpers/helpers.dart';
 11: import '../../../../core/providers/vendors/register_vendor_provider.dart';
 12: import '../../../../core/utils/constants/colors_constants.dart';
 13: import '../../../../core/utils/date_parser_utils.dart';
 14: import '../../../../core/utils/form_validator.dart';
 15: import '../../../../core/utils/image_picker_bottom_sheet_utils.dart';
 16: import '../../../../core/utils/permissions_utils.dart';
 17: import '../../../../core/utils/size_config.dart';
 18: import '../../../../models/category_model.dart';
 19: import '../../../../models/city_model.dart';
 20: import '../../../../widgets/custom_button.dart';
 21: import '../../../../widgets/dropdown_search/cities_dropdown_search.dart';
 22: import '../../../../widgets/custom_textfield.dart';
 23: import '../../../../widgets/dropdown_search/city_dropdown_search.dart';
 24: import '../../../../widgets/icon_comp.dart';
 25: import '../../../../widgets/images/add_image_widget.dart';
 26: import '../widgets/app_bar_register_widget.dart';
 27: 
 28: class RegisterVendorScreen extends StatefulWidget {
 29:   const RegisterVendorScreen({super.key,});
 30: 
 31:   @override
 32:   State<RegisterVendorScreen> createState() => _RegisterVendorScreenState();
 33: }
 34: 
 35: class _RegisterVendorScreenState extends State<RegisterVendorScreen> {
 36:   final _formKey = GlobalKey<FormState>();
 37:   final nameCompanyArController = TextEditingController();
 38:   final phoneNumberController = TextEditingController();
 39:   final commercialRecordController = TextEditingController();
 40:   final dateExpireCommercialRecordController = TextEditingController();
 41: 
 42:   @override
 43:   void dispose() {
 44:     super.dispose();
 45:     nameCompanyArController.dispose();
 46:     phoneNumberController.dispose();
 47:     commercialRecordController.dispose();
 48:     dateExpireCommercialRecordController.dispose();
 49:   }
 50: 
 51:   @override
 52:   Widget build(BuildContext context) {
 53:     SizeConfig.init(context);
 54:     final _provider = Provider.of<RegisterVendorProvider>(context);
 55: 
 56:     return Scaffold(
 57:         backgroundColor: Colors.white,
 58:         appBar: const AppBarRegisterWidget(),
 59:         body: Form(
 60:             key: _formKey,
 61:             child: ListView(
 62:               shrinkWrap: true,
 63:               physics: const ScrollPhysics(),
 64:               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
 65:               children: [
 66:                 const SizedBox(height: 10,),
 67:                  Row(
 68:                   children: [
 69:                     const IconComponent(icon: Icon(Icons.business_sharp, color: AppColor.primaryColor,),),
 70:                     const SizedBox(width: 10,),
 71:                     Expanded(child: CustomTextField(
 72:                       label: 'إسم الشركة',
 73:                       hint: 'إسم الشركة',
 74:                       controller: nameCompanyArController,
 75:                       validator: (value) => FormValidatorUtils.textValidator(value, isRequired: true),
 76:                       fillColor: AppColor.secondaryColor,
 77:                       filled: true,
 78:                     ),)
 79:                   ],
 80:                 ),
 81:                
 82:                 const SizedBox(height: 15,),
 83:                 Row(
 84:                   children: [
 85:                     const IconComponent(icon: Icon(Icons.phone_android, color: AppColor.primaryColor,),),
 86:                     const SizedBox(width: 10,),
 87:                     Expanded(child: CustomTextField(
 88:                       label: 'رقم الجوال',
 89:                       hint: '05xxxxxxxx',
 90:                       controller: phoneNumberController,
 91:                       validator: (value) => FormValidatorUtils.phoneValidator(value, isRequired: true),
 92:                       fillColor: AppColor.secondaryColor,
 93:                       filled: true,
 94:                     ),)
 95:                   ],
 96:                 ),
 97: 
 98:                 const SizedBox(height: 15,),
 99:                 Row(
100:                   children: [
101:                     const IconComponent(icon: Icon(Icons.assignment, color: AppColor.primaryColor,),),
102:                     const SizedBox(width: 10,),
103:                     Expanded(child: CustomTextField(
104:                       label: 'رقم السجل التجاري',
105:                       hint: 'رقم السجل التجاري',
106:                       controller: commercialRecordController,
107:                       validator: (value) => FormValidatorUtils.textValidator(value, isRequired: true),
108:                       fillColor: AppColor.secondaryColor,
109:                       filled: true,
110:                     ),)
111:                   ],
112:                 ),
113:                 const SizedBox(height: 15,),
114:                 Row(
115:                   children: [
116:                     const IconComponent(icon: Icon(Icons.date_range, color: AppColor.primaryColor,),),
117:                     const SizedBox(width: 10,),
118:                     Expanded(child: CustomTextField(
119:                       label: 'تاريخ إنتهاء السجل التجاري',
120:                       hint: 'تاريخ إنتهاء السجل التجاري',
121:                       readOnly: true,
122:                       controller: dateExpireCommercialRecordController,
123:                       fillColor: AppColor.secondaryColor,
124:                       filled: true,
125:                       validator: (value) => FormValidatorUtils.textValidator(
126:                         value,
127:                         isRequired: true,
128:                       ),
129:                       onTap: () async {
130:                         dateExpireCommercialRecordController.text = await DateParserUtils.getDatePicker(context);
131:                       },
132:                     ),)
133:                   ],
134:                 ),
135:                 const SizedBox(height: 15,),
136:                 Row(
137:                   children: [
138:                     const IconComponent(icon: Icon(Icons.location_on, color: AppColor.primaryColor,),),
139:                     const SizedBox(width: 10,),
140:                     Expanded(child: CityDropdownSearch(
141:                       filled: true,
142:                       fillColor: AppColor.secondaryColor,
143:                       selectedCityModel: _provider.selectedCity,
144:                       onChanged: (CityModel? selectedItem) {
145:                         _provider.changeCity(selectedItem);
146:                       },
147:                     ),)
148:                   ],
149:                 ),
150:                 const SizedBox(height: 15,),
151:                 Row(
152:                   children: [
153:                     const IconComponent(icon: Icon(Icons.miscellaneous_services, color: AppColor.primaryColor,),),
154:                     const SizedBox(width: 10,),
155:                     Expanded(child: CategoriesDropdownSearch(
156:                       filled: true,
157:                       fillColor: AppColor.secondaryColor,
158:                       selectedCategories: _provider.selectedCategoriesList,
159:                       onChanged: (List<CategoryModel>? selectedItems) {
160:                         _provider.changeCategories(selectedItems);
161:                       },
162:                     ),)
163:                   ],
164:                 ),
165: 
166:                 const SizedBox(height: 20,),
167:                 Text('صورة السجل التجاري', style: TextStyle(color: AppColor.primaryColor, fontSize: SizeConfig.widthResponsive(0.04), fontWeight: FontWeight.w500),),
168:                 const SizedBox(height: 10,),
169:                 AddImageWidget(
170:                   height: SizeConfig.heightResponsive(0.20),
171:                   file: _provider.selectedCommercialRecordImage,
172:                   onTap: () async {
173:                     if(await PermissionsUtils.checkCameraAndGalleryPermission(context)){
174:                       ImagePickerBottomSheet.show(context, (picked) {
175:                         if (picked != null) {
176:                           _provider.changeSelectedCommercialRecordImage(picked);
177:                         }
178:                       });
179:                     }
180:                   },
181:                     deleteImage : () {
182:                       _provider.changeSelectedCommercialRecordImage(null);
183:                     }
184:                 ),
185:                 SizedBox(height: SizeConfig.heightResponsive(0.04),),
186:                 CustomButton(
187:                   primaryColor:AppColor.primaryColor,
188:                   txtSize: SizeConfig.widthResponsive(0.05),
189:                   loading: _provider.isLoading,
190:                   onTap: () async {
191:                     await _execute(context, _provider);
192:                   },
193:                   label: 'تقديم الطلب',
194:                 ),
195:               ],
196:             )),
197:         );
198:   }
199: 
200:   Future<void> _execute(BuildContext context, RegisterVendorProvider myProvider)async {
201:     Helper.dismissKeyBoard();
202: 
203:     bool myValid = _formKey.currentState!.validate();
204:     if (myValid) {
205: 
206:       if(myProvider.selectedCategoriesList == null || myProvider.selectedCategoriesList!.isEmpty){
207:         ToastHelper.showInfo('الرجاء إختيار الخدمات');
208:         return;
209:       }
210: 
211:       if(myProvider.selectedCommercialRecordImage == null || myProvider.selectedCommercialRecordImage!.path.isEmpty){
212:         ToastHelper.showInfo('الرجاء إختيار صورة السجل التجاري');
213:         return;
214:       }
215: 
216:       if(! await ConnectionUtils.hasInternetConnection()){
217:         DialogUtils().showNoInternetDialog(context);
218:         return;
219:       }
220: 
221:       await myProvider.registerVendor(context,{
222:         'companyNameAr' : nameCompanyArController.text,
223:         'phoneNumber' : phoneNumberController.text,
224:         'commercialRecord' : commercialRecordController.text,
225:         'dateExpireCommercialRecord' : dateExpireCommercialRecordController.text,
226:         'categoriesIds' : jsonEncode(myProvider.selectedCategoriesList?.map((e) => e.id).toList()),
227:         'cityId' : myProvider.selectedCity?.id.toString() ?? '0',
228:       });
229:     }
230:   }
231: }
````

## File: lib/main.dart
````dart
  1: import 'dart:async';
  2: 
  3: import 'package:car_mediator_mobile/core/data_sources/remote/api_service.dart';
  4: import 'package:car_mediator_mobile/core/providers/auth_provider.dart';
  5: import 'package:car_mediator_mobile/core/services/shared/auth_service.dart';
  6: import 'package:car_mediator_mobile/core/services/shared/common_service.dart';
  7: import 'package:car_mediator_mobile/features/shared/chat/screens/chat_screen.dart';
  8: import 'package:firebase_core/firebase_core.dart';
  9: import 'package:flutter/material.dart';
 10: import 'package:flutter/services.dart';
 11: import 'package:flutter_localizations/flutter_localizations.dart';
 12: import 'package:intl/date_symbol_data_local.dart';
 13: import 'package:provider/provider.dart';
 14: import 'package:timeago/timeago.dart' as timeago;
 15: 
 16: import 'core/data_sources/local/cache_helper.dart';
 17: import 'core/data_sources/local/secure_storage.dart';
 18: import 'core/data_sources/remote/firebase/fcm_service.dart';
 19: import 'core/localization/app_language_provider.dart';
 20: import 'core/providers/bottom_navigation_bar_provider.dart';
 21: import 'core/providers/cache_provider.dart';
 22: import 'core/providers/common_provider.dart';
 23: import 'core/providers/conversation_provider.dart';
 24: import 'core/providers/dynamic_form_provider.dart';
 25: import 'core/providers/home/home_user_provider.dart';
 26: import 'core/providers/notification_badge_provider.dart';
 27: import 'core/providers/notification_provider.dart';
 28: import 'core/providers/orders/create_order_provider.dart';
 29: import 'core/providers/shipping_provider.dart';
 30: import 'core/providers/users/my_request_user_provider.dart';
 31: import 'core/providers/users/profile_user_provider.dart';
 32: import 'core/providers/users/responses_my_request_provider.dart';
 33: import 'core/providers/vendors/app_commission_provider.dart';
 34: import 'core/providers/vendors/new_request_vendor_provider.dart';
 35: import 'core/providers/vendors/profile_vendor_provider.dart';
 36: import 'core/providers/vendors/register_vendor_provider.dart';
 37: import 'core/providers/vendors/response_request_provider.dart';
 38: import 'core/providers/vendors/specialty_vendor_provider.dart';
 39: import 'core/services/shared/cache_service.dart';
 40: import 'core/services/shared/conversation_service.dart';
 41: import 'core/services/shared/notification_service.dart';
 42: import 'core/services/shared/shipping_service.dart';
 43: import 'core/services/user/my_requests/my_request_user_service.dart';
 44: import 'core/services/user/profile_user_service.dart';
 45: import 'core/services/user/requests/request_service.dart';
 46: import 'core/services/vendor/new_request_service.dart';
 47: import 'core/services/vendor/profile_vendor_service.dart';
 48: import 'core/services/vendor/response_request_service.dart';
 49: import 'core/services/vendor/specialty_vendor_service.dart';
 50: import 'core/theme/app_theme.dart';
 51: import 'core/utils/custom_time_ago.dart';
 52: import 'features/shared/cache/init_cache.dart';
 53: import 'l10n/app_localizations.dart';
 54: import 'package:web_socket_channel/web_socket_channel.dart';
 55: 
 56: // Use GlobalKey to access BuildContext safely outside the widget tree
 57: final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
 58: 
 59: Future<void> main() async {
 60:   runZonedGuarded<Future<void>>(() async {
 61:     WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
 62: 
 63:     SystemChrome.setPreferredOrientations(
 64:         [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
 65: 
 66:     // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
 67: 
 68:     await CacheHelper.init();
 69:     AppLanguageProvider _appLanguage = AppLanguageProvider();
 70: 
 71:     await Firebase.initializeApp();
 72:     await Future.wait([
 73:       _appLanguage.fetchLocale(),
 74:       initializeDateFormatting(),
 75:     ]);
 76: 
 77:     // final String? token = await SecureStorage.getToken();
 78:     // print(token);
 79:     final apiService = ApiService();
 80:     await FcmService.initializeFirebase();
 81:     timeago.setLocaleMessages('ar', CustomTimeAgo());
 82: 
 83:     // final channel = WebSocketChannel.connect(
 84:     //   Uri.parse('ws://192.168.1.34:8080/app/abc123xyz'),
 85:     // );
 86:     //
 87:     // channel.sink.add(
 88:     //     jsonEncode({
 89:     //       "event": "pusher:subscribe",
 90:     //       "data": {
 91:     //         "channel": "chat"
 92:     //       }
 93:     //     })
 94:     // );
 95:     //
 96:     // channel.stream.listen((data) {
 97:     //   final decoded = jsonDecode(data);
 98:     //   print("New message channel.stream.listen ----------------");
 99:     //
100:     //   if (decoded["event"] == "message.sent") {
101:     //     print("New message: ${decoded['data']}");
102:     //   }
103:     // });
104: 
105:     // إرسال رسالة عبر API Laravel
106:     // Future sendMessage(String user, String message) async {
107:     // await http.post(
108:     // Uri.parse('http://127.0.0.1:8000/api/message'),
109:     // body: {
110:     // 'user': user,
111:     // 'message': message,
112:     // },
113:     // );
114:     // }
115: 
116:     String? userRole = await SecureStorage.getUserRole();
117:     runApp( MyApp(appLanguage: _appLanguage, apiService: apiService, userRole: userRole,));
118: 
119:   }, (error, stack) {
120:     // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
121:     print('-------Error  From Inside Framework---runZonedGuarded-----');
122:     print('---Error----${error}');
123:     print('---StackTrack----${stack}');
124:     print('-------------------------------------------');
125:   }
126:   );
127: }
128: 
129: class MyApp extends StatelessWidget {
130:   final AppLanguageProvider appLanguage;
131:   final ApiService apiService;
132:   final String? userRole;
133:   const MyApp({super.key, required this.appLanguage, required this.apiService, this.userRole});
134: 
135:   @override
136:   Widget build(BuildContext context) {
137:     return ChangeNotifierProvider<AppLanguageProvider>(
138:       create: (_) => appLanguage,
139:       child: Consumer<AppLanguageProvider>(builder: (context, model, child) {
140:         return MultiProvider(providers:[
141:            ChangeNotifierProvider<BottomNavigationBarProvider>(create: (_) => BottomNavigationBarProvider(),),
142:            ChangeNotifierProvider<CacheProvider>(create: (_) => CacheProvider(CacheService(apiService)),),
143:            ChangeNotifierProvider<HomeUserProvider>(create: (_) => HomeUserProvider(),),
144:            ChangeNotifierProvider<CreateOrderProvider>(create: (_) => CreateOrderProvider(RequestService(apiService)),),
145:            ChangeNotifierProvider<DynamicFormProvider>(create: (_) => DynamicFormProvider(),),
146:           ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider(AuthService(apiService)),),
147:           ChangeNotifierProvider<RegisterVendorProvider>(create: (_) => RegisterVendorProvider(apiService),),
148:           ChangeNotifierProvider<NewRequestVendorProvider>(create: (_) => NewRequestVendorProvider(NewRequestService(apiService)),),
149:           ChangeNotifierProvider<ResponseRequestProvider>(create: (_) => ResponseRequestProvider(ResponseRequestService(apiService)),),
150:           ChangeNotifierProvider<SpecialtyVendorProvider>(create: (_) => SpecialtyVendorProvider(SpecialtyVendorService(apiService)),),
151:           ChangeNotifierProvider<ProfileVendorProvider>(create: (_) => ProfileVendorProvider(ProfileVendorService(apiService)),),
152:           ChangeNotifierProvider<MyRequestUserProvider>(create: (_) => MyRequestUserProvider(MyRequestsUserService(apiService)),),
153:           ChangeNotifierProvider<ResponsesMyRequestProvider>(create: (_) => ResponsesMyRequestProvider(MyRequestsUserService(apiService)),),
154:           ChangeNotifierProvider<CommonProvider>(create: (_) => CommonProvider(CommonService(apiService)),),
155:           ChangeNotifierProvider<ConversationProvider>(create: (_) => ConversationProvider(ConversationService(apiService)),),
156:           ChangeNotifierProvider<NotificationProvider>(create: (_) => NotificationProvider(NotificationService(apiService)),),
157:           ChangeNotifierProvider<NotificationBadgeProvider>(create: (_) => NotificationBadgeProvider(NotificationService(apiService)),),
158:           ChangeNotifierProvider<ProfileUserProvider>(create: (_) => ProfileUserProvider(ProfileUserService(apiService)),),
159:           ChangeNotifierProvider<AppCommissionProvider>(create: (_) => AppCommissionProvider(apiService),),
160:           ChangeNotifierProvider<ShippingProvider>(create: (_) => ShippingProvider(ShippingService(apiService)),),
161:         ] ,
162:           child:GestureDetector(
163:             onTap: (){
164:               // FocusManager.instance.primaryFocus?.unfocus();
165:               FocusScope.of(context).requestFocus(FocusNode());
166:             },
167:             child:MaterialApp(
168:               navigatorKey: navigatorKey,
169:               title: 'وسيط سيارات',
170:               debugShowCheckedModeBanner: false,
171:               locale: model.appLocal,
172:               supportedLocales: const [
173:                 Locale('ar', ''),
174:                 Locale('en', 'US'),
175:               ],
176:               localizationsDelegates: const [
177:                 AppLocalizations.delegate,
178:                 GlobalMaterialLocalizations.delegate,
179:                 GlobalWidgetsLocalizations.delegate,
180:                 GlobalCupertinoLocalizations.delegate,
181:               ],
182:               builder: (context, child) {
183:                 return Directionality(
184:                   textDirection: model.textDirection,
185:                   child: MediaQuery(
186:                     data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
187:                     child: child!,
188:                   ),
189:                 );
190:               },
191:               theme: AppTheme.lightTheme,
192:               home:  InitCache(userRole: userRole,),
193:               //home:  ChatScreen(conversationId: 1, token: '7|28H5dtm3zAchciFPbjwJNzSTg9ofG8REAuC8Fghl2980be1d', myUserId: 2),
194:             ) ,
195:           ) ,);
196:       }),
197:     );
198:   }
199: }
````

## File: README.md
````markdown
  1: # 🚗 تطبيق وسيط السيارات - Car Mediator Mobile App
  2: 
  3: تطبيق فلاتر (Flutter Mobile App) لمنصة وسيط السيارات، متاح لعملاء ومزودي الخدمة (التجار) للبحث، تقديم الطلبات، التواصل، وتحديد مناطق وقنوات التغطية في المملكة العربية السعودية.
  4: 
  5: ---
  6: 
  7: ## 🔗 روابط مهمة (Important Links)
  8: 
  9: - **رابط الريبو (GitHub Repository)**: [https://github.com/Ahmedsayed732004444/car-mobile.git](https://github.com/Ahmedsayed732004444/car-mobile.git)
 10: - **السيرفر المباشر (Production Backend API)**: `https://car-production-93a1.up.railway.app/`
 11: 
 12: ---
 13: 
 14: ## 🛠️ المتطلبات الأساسية (Prerequisites)
 15: 
 16: قبل البدء، تأكد من تثبيت الأدوات التالية على جهازك:
 17: 
 18: 1. **Flutter SDK** (إصدار 3.0.0 أو أحدث).
 19: 2. **Dart SDK** (يأتي مدمجاً مع Flutter).
 20: 3. **محرر أكواد**: [VS Code](https://code.visualstudio.com/) أو [Android Studio](https://developer.android.com/studio).
 21: 4. **محاكي أو جهاز حقيقي**: Android Emulator أو جهاز محمول متصل عبر الوصلة (USB Debugging).
 22: 
 23: ---
 24: 
 25: ## 🚀 طريقة التشغيل بالتفصيل (Step-by-Step Running Guide)
 26: 
 27: ### 1️⃣ الخطوة الأولى: تحميل المشروع (Clone Repository)
 28: افتح مجلد المشاريع في الـ Terminal أو PowerShell وقم باستنساخ المشروع:
 29: 
 30: ```bash
 31: git clone https://github.com/Ahmedsayed732004444/car-mobile.git
 32: cd car-mobile
 33: ```
 34: 
 35: ---
 36: 
 37: ### 2️⃣ الخطوة الثانية: تثبيت الحزم والمكتبات (Install Dependencies)
 38: قم بتنزيل كافة مكتبات فلاتر المعتمدة للمشروع:
 39: 
 40: ```bash
 41: flutter pub get
 42: ```
 43: 
 44: ---
 45: 
 46: ### 3️⃣ الخطوة الثالثة: التأكد من تشغيل المحاكي/الجهاز (Check Active Devices)
 47: لتفقد الأجهزة المتاحة لتشغيل التطبيق عليها:
 48: 
 49: ```bash
 50: flutter devices
 51: ```
 52: 
 53: - **في حال استخدام Android Studio**: قم بفتح الـ Device Manager وتشغيل المحاكي (Virtual Device).
 54: - **في حال استخدام جهاز حقيقي**: قم بتفعيل وضع التنسيق (USB Debugging).
 55: 
 56: ---
 57: 
 58: ### 4️⃣ الخطوة الرابعة: تشغيل التطبيق (Run Application)
 59: 
 60: #### 🔹 التشغيل العادي (Default Run):
 61: ```bash
 62: flutter run
 63: ```
 64: 
 65: #### 🔹 التشغيل على محاكي محدد (Run on Specific Emulator):
 66: إذا كان لديك أكثر من محاكي يعمل في نفس الوقت:
 67: ```bash
 68: flutter run -d emulator-5554
 69: ```
 70: 
 71: #### 🔹 التشغيل بوضع الأداء المتقدم (Release Mode):
 72: ```bash
 73: flutter run --release
 74: ```
 75: 
 76: ---
 77: 
 78: ## ⚡ اختصارات التحديث الفوري أثناء التشغيل (Hot Reload Shortcuts)
 79: 
 80: أثناء تشغيل التطبيق بالـ Terminal، يمكنك استخدام الاختصارات التالية لتسريع التطوير:
 81: 
 82: | الاختصار | الوظيفة |
 83: | :--- | :--- |
 84: | **`r`** | **Hot Reload**: تحديث وتطبيق الكود فورياً على الشاشات خلال 1 ثانية دون إغلاق التطبيق. |
 85: | **`R`** | **Hot Restart**: إعادة تشغيل التطبيق وتنظيف الـ State خلال ثانيتين. |
 86: | **`q`** | **Quit**: إغلاق التطبيق وإنهاء جلسة التشغيل. |
 87: 
 88: ---
 89: 
 90: ## 📦 استخراج ملف الـ APK النهائي (Build Release APK)
 91: 
 92: لإنشاء ملف APK جاهز للتثبيت والتجربة على أجهزة الأندرويد المحمولة:
 93: 
 94: ```bash
 95: flutter build apk --release
 96: ```
 97: 
 98: سيكون الملف الجاهز متوفراً في المسار التالي:
 99: `build/app/outputs/flutter-apk/app-release.apk`
100: 
101: ---
102: 
103: ## 📁 هيكلية المشروع الأساسية (Project Architecture)
104: 
105: ```text
106: lib/
107: ├── core/                  # المكونات الأساسية (الخدمات، الشبكة API، المزودات Providers، الألوان والتصميم)
108: ├── features/              # الميزات والواجهات المقسمة حسب النوع:
109: │   ├── shared/            # التسجيل، كود التحقق OTP، الإشعارات، والمحادثات
110: │   ├── user/              # واجهات العميل (إنشاء الطلب، تحديد المدن، طلباتي)
111: │   └── vendor/            # واجهات مزود الخدمة (التخصصات، الاستجابة للطلبات، العمولات)
112: ├── models/                # نماذج البيانات (Models & Data Parsing)
113: └── widgets/               # المكونات والودجت Reusable Components
114: ```
115: 
116: ---
117: 
118: ✨ **تم إعداد دليل التشغيل بنجاح!**
````

## File: lib/core/services/shared/notification_service.dart
````dart
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
````

## File: lib/widgets/dropdown_search/categories_dropdown_search.dart
````dart
  1: import 'package:car_mediator_mobile/core/providers/vendors/register_vendor_provider.dart';
  2: import 'package:car_mediator_mobile/models/category_model.dart';
  3: import 'package:dropdown_search/dropdown_search.dart';
  4: import 'package:flutter/material.dart';
  5: import 'package:provider/provider.dart';
  6: 
  7: import '../../core/localization/app_language_provider.dart';
  8: import '../../core/providers/cache_provider.dart';
  9: import '../../core/providers/vendors/specialty_vendor_provider.dart';
 10: import '../../core/utils/constants/colors_constants.dart';
 11: import '../../core/utils/form_validator.dart';
 12: import '../../core/utils/size_config.dart';
 13: import '../components.dart';
 14: import 'category_dropdown_builder_multiselection_widget.dart';
 15: 
 16: class CategoriesDropdownSearch extends StatelessWidget {
 17:   const CategoriesDropdownSearch({
 18:     super.key,
 19:     this.selectedCategories,
 20:     this.onChanged,
 21:     this.filled,
 22:     this.fillColor,
 23:   });
 24: 
 25:   final List<CategoryModel>? selectedCategories;
 26:   final ValueChanged<List<CategoryModel>>? onChanged;
 27:   final bool? filled;
 28:   final Color? fillColor;
 29: 
 30:   void _showCategoriesBottomSheet(
 31:     BuildContext context,
 32:     CacheProvider cacheProvider,
 33:   ) {
 34:     final allCategories = cacheProvider.categoriesList;
 35:     final List<CategoryModel> tempSelected =
 36:         List<CategoryModel>.from(selectedCategories ?? []);
 37:     final _isArabic = context.read<AppLanguageProvider>().isArabic;
 38: 
 39:     showModalBottomSheet(
 40:       context: context,
 41:       isScrollControlled: true,
 42:       backgroundColor: Colors.transparent,
 43:       builder: (context) {
 44:         return StatefulBuilder(
 45:           builder: (context, setState) {
 46:             final bool isAllSelected =
 47:                 tempSelected.length == allCategories.length && allCategories.isNotEmpty;
 48: 
 49:             return Container(
 50:               height: MediaQuery.of(context).size.height * 0.70,
 51:               decoration: const BoxDecoration(
 52:                 color: Colors.white,
 53:                 borderRadius: BorderRadius.only(
 54:                   topLeft: Radius.circular(30.0),
 55:                   topRight: Radius.circular(30.0),
 56:                 ),
 57:               ),
 58:               child: Column(
 59:                 children: [
 60:                   Container(
 61:                     padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 8),
 62:                     child: Column(
 63:                       children: [
 64:                         Container(
 65:                           width: SizeConfig.widthResponsive(0.40),
 66:                           height: 3,
 67:                           decoration: BoxDecoration(
 68:                             color: AppColor.primaryColor,
 69:                             borderRadius: BorderRadius.circular(8),
 70:                           ),
 71:                         ),
 72:                         const SizedBox(height: 12),
 73:                         Row(
 74:                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
 75:                           children: [
 76:                             InkWell(
 77:                               onTap: () {
 78:                                 setState(() {
 79:                                   if (isAllSelected) {
 80:                                     tempSelected.clear();
 81:                                   } else {
 82:                                     tempSelected.clear();
 83:                                     tempSelected.addAll(allCategories);
 84:                                   }
 85:                                 });
 86:                               },
 87:                               child: Row(
 88:                                 children: [
 89:                                   Checkbox(
 90:                                     value: isAllSelected,
 91:                                     activeColor: AppColor.primaryColor,
 92:                                     shape: RoundedRectangleBorder(
 93:                                       borderRadius: BorderRadius.circular(4),
 94:                                     ),
 95:                                     onChanged: (bool? checked) {
 96:                                       setState(() {
 97:                                         if (checked == true) {
 98:                                           tempSelected.clear();
 99:                                           tempSelected.addAll(allCategories);
100:                                         } else {
101:                                           tempSelected.clear();
102:                                         }
103:                                       });
104:                                     },
105:                                   ),
106:                                   const Text(
107:                                     'تحديد الكل',
108:                                     style: TextStyle(
109:                                       fontSize: 15,
110:                                       fontWeight: FontWeight.bold,
111:                                       color: Colors.black87,
112:                                     ),
113:                                   ),
114:                                 ],
115:                               ),
116:                             ),
117:                             Text(
118:                               'الخدمات',
119:                               style: TextStyle(
120:                                 color: AppColor.primaryColor,
121:                                 fontSize: SizeConfig.widthResponsive(0.05),
122:                                 fontWeight: FontWeight.w600,
123:                               ),
124:                             ),
125:                           ],
126:                         ),
127:                       ],
128:                     ),
129:                   ),
130:                   const Divider(height: 1),
131:                   Expanded(
132:                     child: ListView.builder(
133:                       itemCount: allCategories.length,
134:                       itemBuilder: (context, index) {
135:                         final cat = allCategories[index];
136:                         final bool isSelected = tempSelected.any((e) => e.id == cat.id);
137:                         final catName = (_isArabic ? cat.catNameAr : cat.catNameEn) ?? '';
138: 
139:                         return CheckboxListTile(
140:                           value: isSelected,
141:                           activeColor: AppColor.primaryColor,
142:                           title: Text(
143:                             catName,
144:                             style: const TextStyle(
145:                               fontSize: 16,
146:                               fontWeight: FontWeight.w500,
147:                             ),
148:                           ),
149:                           onChanged: (bool? checked) {
150:                             setState(() {
151:                               if (checked == true) {
152:                                 if (!tempSelected.any((e) => e.id == cat.id)) {
153:                                   tempSelected.add(cat);
154:                                 }
155:                               } else {
156:                                 tempSelected.removeWhere((e) => e.id == cat.id);
157:                               }
158:                             });
159:                           },
160:                         );
161:                       },
162:                     ),
163:                   ),
164:                   const Divider(height: 1),
165:                   Padding(
166:                     padding: EdgeInsets.only(
167:                       bottom: SizeConfig.heightResponsive(0.04),
168:                       left: 20,
169:                       right: 20,
170:                       top: 10,
171:                     ),
172:                     child: SizedBox(
173:                       width: double.infinity,
174:                       height: 48,
175:                       child: ElevatedButton(
176:                         style: ElevatedButton.styleFrom(
177:                           backgroundColor: Colors.blue,
178:                           shape: RoundedRectangleBorder(
179:                             borderRadius: BorderRadius.circular(10),
180:                           ),
181:                         ),
182:                         onPressed: () {
183:                           if (onChanged != null) {
184:                             onChanged!(tempSelected);
185:                           }
186:                           Navigator.pop(context);
187:                         },
188:                         child: Text(
189:                           'تحديد',
190:                           style: TextStyle(
191:                             color: Colors.white,
192:                             fontSize: SizeConfig.widthResponsive(0.04),
193:                             fontWeight: FontWeight.bold,
194:                           ),
195:                         ),
196:                       ),
197:                     ),
198:                   ),
199:                 ],
200:               ),
201:             );
202:           },
203:         );
204:       },
205:     );
206:   }
207: 
208:   @override
209:   Widget build(BuildContext context) {
210:     final _cacheProvider = context.read<CacheProvider>();
211: 
212:     return InkWell(
213:       onTap: () => _showCategoriesBottomSheet(context, _cacheProvider),
214:       child: InputDecorator(
215:         decoration: customDropdownDecoratorProps(
216:           label: 'الخدمات',
217:           hint: 'إختر الخدمات',
218:           filled: filled,
219:           fillColor: fillColor,
220:         ).dropdownSearchDecoration!,
221:         child: CategoryDropdownBuilderMultiselectionWidget(
222:           selectedItems: selectedCategories ?? [],
223:           hint: 'إختر الخدمات',
224:         ),
225:       ),
226:     );
227:   }
228: }
````

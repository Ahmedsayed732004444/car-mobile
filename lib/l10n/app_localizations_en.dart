// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'وسيط سيارات';

  @override
  String get welcomeToApp => 'مرحباً بكم في تطبيق وسيط سيارات';

  @override
  String get dataIsBeingFormatted => 'جارِ تهيئة البيانات';

  @override
  String get noInternetConnection => 'no internet connection';
}

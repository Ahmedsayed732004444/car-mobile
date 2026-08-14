// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'تطبيق وسيط سيارات';

  @override
  String get welcomeToApp => 'مرحباً بكم في تطبيق وسيط سيارات';

  @override
  String get dataIsBeingFormatted => 'جارِ تهيئة البيانات';

  @override
  String get noInternetConnection => 'الرجاء التأكد من إتصالك بالإنترنت';
}


import 'package:car_mediator_mobile/core/data_sources/local/secure_storage.dart';
import 'package:flutter/material.dart';

import '../../features/shared/auth/login_screen.dart';
import '../../widgets/components.dart';
import '../utils/constants/assets_path.dart';
import '../utils/constants/colors_constants.dart';
import '../utils/dialogUtils.dart';


class BottomNavigationBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  // screen required login
  final List<int> _lockedPages = [1, 2];

  Future<void> setCurrentIndex(BuildContext context, int index, {PageController? controller}) async {

    if (_lockedPages.contains(index) && !(await SecureStorage.isLoggedIn())) {
      _showLoginDialog(context, index);
      return;
    }

    if (_currentIndex == index) return;

    _currentIndex = index;

    if (controller != null) {
      controller.jumpToPage(index);
    }

    notifyListeners();
  }

  void _showLoginDialog(BuildContext context, int targetIndex) {
    DialogUtils().showAdvancedDialog(
      context,
      description: 'الرجاء تسجيل الدخول',
      iconPath: AssetsPath.login,
      iconColor: AppColor.primaryColor,
      textCancel: 'تسجيل الدخول',
      onTabCancel: () async {
        Navigator.of(context).pop();
        navigationPush(context, LoginScreen());
      },
    );
  }
}
// class BottomNavigationBarProvider extends ChangeNotifier {
//   int _currentIndex = 0;
//   int get currentIndex => _currentIndex;
//
//   final PageController pageController = PageController();
//
//   // الصفحات التي تتطلب تسجيل دخول
//   final List<int> _lockedPages = [1, 2]; // 1: التذاكر, 2: التشجيع
//
//   /// تغيير الصفحة عند الضغط على الـ BottomNavigationBar
//   void changePage(BuildContext context, int index) {
//     // تحقق إذا الصفحة تتطلب تسجيل دخول
//     // if (_lockedPages.contains(index) && !SharedPrefs.isLogIn) {
//     //   _showLoginDialog(context, index);
//     //   return;
//     // }
//
//     _updatePage(index);
//   }
//
//   //  تحديث الصفحة عند السحب (PageView)
//   void onPageChanged(int index) {
//     _currentIndex = index;
//     notifyListeners();
//   }
//
//   // نافذة تنبيه تسجيل الدخول
//   void _showLoginDialog(BuildContext context, int targetIndex) {
//     // DialogUtils().showAdvancedDialog(
//     //   context,
//     //   description: 'الرجاء تسجيل الدخول',
//     //   iconPath: AssetsPath.login,
//     //   iconColor: AppColor.primaryColor,
//     //   textCancel: 'تسجيل الدخول',
//     //   onTabCancel: () async {
//     //     Navigator.of(context).pop();
//     //     navigationPush(context, LoginScreen());
//     //
//     //     // إذا تم تسجيل الدخول بعد العودة
//     //     if (SharedPrefs.isLogIn) {
//     //       _updatePage(targetIndex);
//     //     }
//     //   },
//     // );
//   }
//
//   // تحديث الصفحة داخلياً
//   void _updatePage(int index) {
//     _currentIndex = index;
//     pageController.jumpToPage(index);
//     notifyListeners();
//   }
//
//   @override
//   void dispose() {
//     pageController.dispose();
//     super.dispose();
//   }
// }
//

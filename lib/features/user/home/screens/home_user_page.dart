
import 'package:car_mediator_mobile/core/data_sources/remote/firebase/fcm_service.dart';
import 'package:car_mediator_mobile/core/ui_models/nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/bottom_navigation_bar_provider.dart';
import '../../../../core/providers/notification_badge_provider.dart';
import '../../../../core/utils/constants/assets_path.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/section_badge_widget.dart';
import '../../../shared/account/screens/account_screen.dart';
import '../../my_conversations/screens/user_conversations_screen.dart';
import '../../my_requests/screens/my_requests_user_screen.dart';
import '../widgets/home_app_bar_widget.dart';
import 'home_user_screen.dart';


class HomeUserPage extends StatefulWidget {
  const HomeUserPage({super.key});

  @override
  State<HomeUserPage> createState() => _HomeUserPageState();
}

class _HomeUserPageState extends State<HomeUserPage> {

  final PageController _pageController = PageController();

  final List<Widget> _pages = const [
    HomeUserScreen(),
    MyRequestUserScreen(),
    UserConversationScreen(),
    AccountScreen(),
  ];

  final List<NavBarItem> _navItems = const [
    NavBarItem(icon: AssetsPath.home_icon, label: 'الرئيسية'),
    NavBarItem(icon: AssetsPath.my_orders_icon, label: 'طلباتي'),
    NavBarItem(icon: AssetsPath.chat_bubble, label: 'محادثاتي'),
    NavBarItem(icon: AssetsPath.user_icon, label: 'حسابي'),
  ];

  @override
  void initState() {
    super.initState();
    FcmService.onMessage();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<NotificationBadgeProvider>().startRealTimePolling();
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final navProvider = context.watch<BottomNavigationBarProvider>();

    return Scaffold(
      appBar: const HomeAppBarWidget(),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) => navProvider.setCurrentIndex(context, index),
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navProvider.currentIndex,
        onTap: (index) => navProvider.setCurrentIndex(context, index, controller: _pageController),
        items: List.generate(_navItems.length, (index) {
          final item = _navItems[index];
          final isActive = index == navProvider.currentIndex;
          final String? categoryKey = index == 2 ? 'conversations' : null;
          final List<String>? categoryKeys = index == 1 ? ['company_responses', 'conversations'] : null;

          Widget iconWidget = Image.asset(
            item.icon,
            color: isActive ? AppColor.primaryColor : AppColor.greyColor,
          );

          if (categoryKey != null || categoryKeys != null) {
            iconWidget = SectionBadgeWidget(
              categoryKey: categoryKey,
              categoryKeys: categoryKeys,
              child: iconWidget,
            );
          }

          return BottomNavigationBarItem(
            icon: iconWidget,
            label: item.label,
          );
        }),
        backgroundColor: AppColor.secondaryColor,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.greyColor,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
    );
  }
}



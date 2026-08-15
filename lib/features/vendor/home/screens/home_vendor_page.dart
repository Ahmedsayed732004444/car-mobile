import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/core/utils/constants/colors_constants.dart';
import 'package:car_mediator_mobile/features/vendor/new_requests/screens/new_request_screen.dart';
import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/data_sources/remote/firebase/fcm_service.dart';
import '../../../../core/providers/auth_provider.dart';
import '../../../../core/providers/notification_badge_provider.dart';
import '../../../../core/utils/dialogUtils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/banners/banner_widget.dart';
import '../../../../widgets/section_badge_widget.dart';
import '../../../../widgets/vendor/dashboard_item_home.dart';
import '../../app_commission/screens/app_commission_screen.dart';
import '../../my_conversations/screens/vendor_conversations_screen.dart';
import '../../profile/screens/profile_vendor_screen.dart';
import '../../responses/screens/my_response_request_screen.dart';
import '../../specialties/screens/specialties_screen.dart';
import '../widgets/app_bar_home_vendor_page.dart';

class HomeVendorPage extends StatefulWidget {
  const HomeVendorPage({super.key});

  @override
  State<HomeVendorPage> createState() => _HomeVendorPageState();
}

class _HomeVendorPageState extends State<HomeVendorPage> {

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

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarHomeVendorPage(),
      body: ListView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          const SizedBox(
            height: 20,
          ),
          const BannerWidget(),
           SizedBox(
            height: SizeConfig.heightResponsive(0.08),
          ),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: SectionBadgeWidget(
                  categoryKey: 'customer_requests',
                  child: DashboardItemHome(
                    title: 'طلبات العملاء',
                    icon: const Icon(Icons.sticky_note_2, color: AppColor.primaryColor, size: 32,),
                    subTitle: 'الطلبات الجديدة',
                    onTap: (){
                      navigationPush(context, const NewRequestScreen());
                    },
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: SectionBadgeWidget(
                  categoryKey: 'company_responses',
                  child: DashboardItemHome(
                    title: 'ردود الشركة',
                    subTitle: 'ردود الطلبات',
                    icon: const Icon(Icons.reply_all_outlined, color: AppColor.primaryColor, size: 32),
                    onTap: (){
                      navigationPush(context, const MyResponseRequestScreen());
                    },
                  ),
                ),
              ),
            ],
          ),),
          const SizedBox(
            height: 10,
          ),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 1,
                  child: DashboardItemHome(
                    title: 'التخصصات',
                    icon: const Icon(Icons.settings, color: AppColor.primaryColor, size: 32),
                    subTitle: 'الخدمات , المدن',
                    onTap: (){
                      navigationPush(context, const SpecialtiesScreen());
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: SectionBadgeWidget(
                    categoryKey: 'conversations',
                    child: DashboardItemHome(
                      title: 'المحادثات',
                      subTitle: 'محادثاتي',
                      icon: const Icon(Icons.chat, color: AppColor.primaryColor, size: 32),
                      onTap: (){
                        navigationPush(context, const VendorConversationScreen());
                      },
                    ),
                  ),
                ),
              ],
            ),),
          const SizedBox(height: 10,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 1,
                  child: DashboardItemHome(
                    title: 'إدارة الحساب',
                    icon: const Icon(Icons.business, color: AppColor.primaryColor, size: 32),
                    subTitle: 'حسابي',
                    onTap: (){
                      navigationPush(context, const ProfileVendorScreen());
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: DashboardItemHome(
                    title: 'سداد العمولة',
                    subTitle: 'عمولة التطبيق',
                    icon: const Icon(Icons.monetization_on, color: AppColor.primaryColor, size: 32),
                    onTap: (){
                      navigationPush(context, const AppCommissionScreen());
                    },
                  ),
                ),
              ],
            ),),
          const SizedBox(height: 10,),
          Padding(padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthResponsive(0.15)),
          child: DashboardItemHome(
            title: 'تسجيل الخروج',
            subTitle: 'تسجيل الخروج من الحساب',
            icon: const Icon(Icons.logout, color: AppColor.primaryColor, size: 32),
            onTap: (){
              DialogUtils().showConfirmDialog(context, message: 'هل تريد تسجيل الخروج', confirm: () async => await context.read<AuthProvider>().logout(context));
            },
          ),),
          const SizedBox(height: 10,),

        ],
      ),
    );
  }
}



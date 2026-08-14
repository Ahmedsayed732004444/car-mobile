
import 'package:badges/badges.dart' as badges;
import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/core/utils/constants/extensions.dart';
import 'package:car_mediator_mobile/widgets/images/custom_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/assets_path.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/components.dart';
import '../../../shared/notifications/screens/notifications_screen.dart';

class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
           const SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('مـرحبـاً', style: txtLightSemiBold035,),
               Text(
                context.loc.appName,
                style: txtSemiBold033,
              ),
            ],
          ),
        ],
      ),
      elevation: 0,
      actions:  [
        IconButton(onPressed: (){
          navigationPush(context, const NotificationsScreen());
        }, icon: badges.Badge(
          position: badges.BadgePosition.topEnd(top: -10, end: 10),
          badgeContent:   Text('0', style: TextStyle(color: Colors.white, fontSize: SizeConfig.widthResponsive(0.025)),),
          child: const Icon(Icons.notifications_none_outlined, color: AppColor.primaryColor,),
        ),),

        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 10),
        //   child: InkWell(
        //     onTap: () => navigationPush(context, const NotificationsScreen()),
        //     child: Consumer<NotificationsProvider>( // استخدام Consumer لتحسين الأداء
        //       builder: (context, notificationsProvider, child) {
        //         return badges.Badge(
        //           position: badges.BadgePosition.topEnd(top: -14, end: 10),
        //           badgeContent: Text(
        //             '${notificationsProvider.counterNotification ?? 0}',
        //             style: const TextStyle(color: Colors.white),
        //           ),
        //           child: child,
        //         );
        //       },
        //       child: const Icon(Icons.notifications_sharp, color: AppColor.primaryColor),
        //     ),
        //   ),
        // ),
      ],
      leadingWidth: SizeConfig.widthResponsive(0.18),
      titleSpacing: 0,
      leading: const Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: CustomImageWidget(assetImage: AssetsPath.logo, bgColor: AppColor.secondaryColor, color: AppColor.primaryColor,),
    ));
  }

  // height of appbar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

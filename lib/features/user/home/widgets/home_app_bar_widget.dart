
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
      actions: const [],
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

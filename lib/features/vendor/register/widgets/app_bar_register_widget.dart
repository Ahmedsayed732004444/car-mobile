import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/size_config.dart';

class AppBarRegisterWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: ListTile(
        title: Text('إنشاء حساب', style: txtLightRegular035,),
        subtitle: Text('طلب الإنظمام كشركة',
          style: txtSemiBold033,
        ),),
      elevation: 0,
      titleSpacing: - SizeConfig.widthResponsive(0.04),
      leading: ArrowBackWidget(myContext: context),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

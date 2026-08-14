
import 'package:flutter/material.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../widgets/custom_button.dart';

class BuildBottomAppBarCreateOrder extends StatelessWidget {
  const BuildBottomAppBarCreateOrder({super.key, this.onTap,});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
        ),
        child: CustomButton(
          label: 'التالي',
          txtSize: SizeConfig.widthResponsive(0.04),
          onTap: onTap,
        ),
      ),
    );
  }
}

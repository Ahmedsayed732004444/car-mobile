
import 'package:flutter/material.dart';

import '../core/utils/constants/colors_constants.dart';
import '../core/utils/constants/constants.dart';

class OnTapContainerWidget extends StatelessWidget {
  const OnTapContainerWidget({super.key, required this.child, this.onTap});

  final Widget child;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.secondaryColor,
      borderRadius: BorderRadius.circular(borderRadiusConst),
      child: InkWell(
        splashColor: AppColor.primaryColor.withOpacity(0.2),
        highlightColor: Colors.transparent,
        borderRadius: BorderRadius.circular(borderRadiusConst),
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadiusConst),
            border: Border.all(color: AppColor.primaryColor.withOpacity(0.03)),
          ),
          child: child ,
        ),
      ),
    );
  }
}

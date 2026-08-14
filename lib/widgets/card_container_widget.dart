
import 'package:flutter/material.dart';

import '../core/utils/constants/colors_constants.dart';
import '../core/utils/constants/constants.dart';

class CardContainerWidget extends StatelessWidget {
  const CardContainerWidget({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadiusConst),
        border: Border.all(color: AppColor.primaryColor.withOpacity(0.03)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: children,
      ) ,
    );
  }
}

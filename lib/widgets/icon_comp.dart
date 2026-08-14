import 'package:flutter/material.dart';

import '../core/utils/constants/colors_constants.dart';

class IconComponent extends StatelessWidget {
  const IconComponent({
    this.radius= 10,
    required this.icon,
    Key? key,
     this.padding = 12,
  }) : super(key: key);

  final double radius;
  final Widget icon;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.secondaryColor,
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: Padding(padding: EdgeInsets.all(10),
        child: icon,
    ));
  }
}
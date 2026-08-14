
import 'package:flutter/material.dart';

import '../../core/styles/styles.dart';
import '../../core/utils/constants/colors_constants.dart';

class DashboardItemHome extends StatelessWidget {
  const DashboardItemHome(
      {super.key, required this.title, this.subTitle = '', required this.icon, this.onTap});
  final String title;
  final String subTitle;
  final Widget icon;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.secondaryColor,
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        onTap: onTap,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        leading: icon,
        title: Text(title, style: txtBold04,),
        subtitle: Text(subTitle),
      ),
    );
  }
}
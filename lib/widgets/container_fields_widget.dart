
import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:flutter/material.dart';

import '../core/utils/constants/colors_constants.dart';
import '../core/utils/constants/constants.dart';
import '../core/utils/size_config.dart';

class ContainerFieldsWidget extends StatelessWidget {
  const ContainerFieldsWidget({super.key, this.padding =10 , required this.title, required this.children, this.trailingTitleWidget});
  final double padding;
  final String title;
  final List<Widget> children;
  final Widget? trailingTitleWidget;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 12,),
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadiusConst),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: SizeConfig.width,
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            decoration: BoxDecoration(
                color: AppColor.primaryColor.withOpacity(0.02),
                border:const Border(bottom: BorderSide(color:AppColor.secondaryColor )),
                borderRadius:const BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, textAlign: TextAlign.start, style: txtSemiBold035,),
                if (trailingTitleWidget != null) trailingTitleWidget!,
              ],
            ),
          ),
          const SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}

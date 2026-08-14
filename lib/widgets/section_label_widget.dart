
import 'package:flutter/material.dart';

import '../core/utils/constants/colors_constants.dart';
import '../core/utils/constants/constants.dart';
import '../core/utils/size_config.dart';

class SectionLabelWidget extends StatelessWidget {
  const SectionLabelWidget({super.key,required this.label, this.fontSize, this.onTap, this.paddingVertical,});
  final String label;
  final double? paddingVertical;
  final double? fontSize;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontalConst ,vertical: SizeConfig.heightResponsive(paddingVertical ?? 0.02)),
    child: Row(
      children: [
        SizedBox(
          height: SizeConfig.widthResponsive(0.07),
          child:  VerticalDivider(
            color: AppColor.thirdColor,
            thickness: 3.5,
          ),
        ),
        const SizedBox(width: 5,),
        Expanded(child: Text(label,
          style: TextStyle(color: AppColor.primaryColor ,fontSize: SizeConfig.widthResponsive(fontSize ?? 0.045),fontWeight: FontWeight.w700,),
        ),),
        if(onTap != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: const EdgeInsets.all(8),
                child:InkWell(
                  onTap: onTap,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('المزيد',
                        style: TextStyle(color: Colors.blue ,fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w600,),),
                      const Icon(Icons.arrow_forward_ios ,size: 15,color: Colors.blue,),
                    ],
                  ),
                )
            ),
          )
      ],
    ),);
  }
}
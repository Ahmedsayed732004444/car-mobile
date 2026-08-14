import 'package:car_mediator_mobile/widgets/vertical_divider_widget.dart';
import 'package:flutter/material.dart';

import '../core/utils/constants/colors_constants.dart';
import '../core/utils/size_config.dart';

class ItemTableWidget extends StatelessWidget {
  const ItemTableWidget({Key? key, required this.keyString, required this.value,}) : super(key: key);
  final String keyString;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    if(value == null || value == '') {
      return const SizedBox.shrink();
    }
    return Container(
      width: SizeConfig.width,
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 8,),
      margin: const EdgeInsets.only(bottom: 5,),
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex:1,child:Text(keyString,style: TextStyle(color: AppColor.greyColor,fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w500),),),
          VerticalDividerWidget(height: SizeConfig.heightResponsive(0.035),),
          const SizedBox(width: 3,),
          Expanded(flex:2,child: Text('${value ?? ''}',style: TextStyle(color: AppColor.textColor,fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w400),),),
        ],
      ),
    );
  }
}


import 'package:car_mediator_mobile/core/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../core/utils/constants/colors_constants.dart';

class CustomContainerListTileWidget extends StatelessWidget {
  const CustomContainerListTileWidget({super.key,required this.title , this.color});
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin : const EdgeInsets.symmetric(horizontal: 10,vertical: 5,),
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: ListTile(
          title: Text('${title}',style: TextStyle(color: AppColor.blackColor,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600),),
          trailing: Icon(Icons.arrow_forward_ios,color: AppColor.blackColor,size: 18,),
        )
    );
  }
}

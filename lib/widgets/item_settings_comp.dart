
import 'package:flutter/material.dart';

import '../core/utils/constants/colors_constants.dart';

class ItemSettingsComponent extends StatelessWidget {
  final double width;
  final double radius;
  final double marginTop;
  final Color color;
  final GestureTapCallback? onTap;
  final Widget icon;
  final String label;
  final String? counter;
  final String? subtitle;

  const ItemSettingsComponent({
    Key? key,
    required this.width,
    this.radius = 10,
    this.marginTop = 10,
    this.color = Colors.white,
    required this.icon,
    required this.label,
     this.counter,
    this.onTap, this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: marginTop),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(5),
        border: Border(right: BorderSide(color: AppColor.primaryColor,width: 4,)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      child:Material(
        color: Colors.white,
        child: ListTile(
          onTap: onTap,
          minTileHeight: 0,
          contentPadding: const EdgeInsets.only(left: 10,right: 10,bottom: 5,top: 5),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: Text( label ,style: TextStyle(fontSize: width * 0.035,color: AppColor.blackColor, fontWeight: FontWeight.w600,),)),
              if(counter != null)
              Text( '${counter}' ,style: TextStyle(fontSize: width * 0.035,color: AppColor.greyShade2, fontWeight: FontWeight.w600,),),
            ],
          ),
          subtitle: subtitle == null ? null : Text('${subtitle}'),
          leading:  icon,
          trailing: const Icon(Icons.arrow_forward_ios,color: AppColor.primaryColor, size: 18,),
        ),
      ) ,
    );
  }
}

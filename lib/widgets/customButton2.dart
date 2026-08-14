import 'package:flutter/material.dart';
import '../core/utils/constants/colors_constants.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({Key? key,
    required this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 10.0 ,vertical: 10.0),
    this.margin = const EdgeInsets.symmetric(horizontal: 10.0 ,vertical: 10.0),
    this.width = double.infinity,
    this.bgColor = AppColor.primaryColor,
    this.bgOverlayColor = Colors.white70 ,
    this.rediusCircular = 10.0 ,
    this.borderColor = AppColor.primaryColor,
    this.textSize = 18.0 ,
    required this.text  ,
    this.txtColor = Colors.white ,
    this.iconPath,
    this.iconColor = Colors.white ,
    this.icon ,

  }) : super(key: key);

  final EdgeInsets padding;
  final EdgeInsets margin;
  final double width;
  final double textSize;
  final VoidCallback? onPressed;
  final Color bgColor;
  final Color bgOverlayColor;
  final double rediusCircular ;
  final Color borderColor;
  final String text ;
  final Color txtColor;
  final String? iconPath;
  final Color iconColor;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      width: width,
      child:ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(bgColor),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return bgOverlayColor; //<-- SEE HERE
              return null; // Defer to the widget's default.
            },
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(rediusCircular),
              side: BorderSide(width: 1, color: borderColor),
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            iconPath !=null ?Image.asset(iconPath ?? '',color: iconColor,) : const SizedBox(),
            icon != null ? icon! : const SizedBox(),
            if(iconPath !=null || icon != null)
              const SizedBox( width: 10.0,),
            Text(text,textAlign: TextAlign.center,
              style:TextStyle(
                color: txtColor , fontSize: textSize,fontWeight: FontWeight.w200 ,
              ) ,), // <-- Text
          ],
        ),
      ),
    );
  }
}

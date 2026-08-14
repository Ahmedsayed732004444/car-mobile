import 'package:flutter/material.dart';
import '../core/utils/constants/colors_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.paddingHorizontal = 10,
    this.primaryColor = AppColor.primaryColor,
    this.borderColor = Colors.transparent,
    this.textColor = Colors.white,
    required this.txtSize,
    this.loading = false,
    this.bgOverlayColor = Colors.white70 ,
    this.iconPath,
    this.iconColor = Colors.white ,
    this.icon ,
    this.isUnderLineText = false ,
    this.alignmentText = Alignment.center ,
  }) : super(key: key);

  final String label;
  final double txtSize;
  final Color primaryColor;
  final Color bgOverlayColor;
  final Color borderColor;
  final Color textColor;
  final bool loading;
  final double paddingHorizontal;
  final void Function()? onTap;
  final String? iconPath;
  final Color iconColor;
  final Icon? icon;
  final bool isUnderLineText;
  final AlignmentGeometry alignmentText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        child: loading ? CircularProgressIndicator(
          color: AppColor.whiteColor,
        ) :  Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if(iconPath !=null) Image.asset(iconPath ?? '',color: iconColor,),
            if(icon != null) icon!,
            if(iconPath !=null || icon != null)
              SizedBox(width: 5,),
            Expanded(child: Align(
              alignment: alignmentText ,
              child: Text(label, overflow: TextOverflow.ellipsis, style:TextStyle(color: textColor , fontSize: txtSize,fontWeight: FontWeight.w500 , decoration: isUnderLineText ? TextDecoration.underline : null ,decorationColor:textColor) ,),
            ))// <-- Text
          ],
        ),
        style: ButtonStyle(
          elevation: MaterialStateProperty.resolveWith<double>(  // As you said you dont need elevation. I'm returning 0 in both case
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return 0;
              }
              return 0; // Defer to the widget's default.
            },
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: 8,)
          ),
          backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return bgOverlayColor; //<-- SEE HERE
              return null; // Defer to the widget's default.
            },
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 1, color: borderColor),
            ),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({Key? key, required this.height, this.bgColor = Colors.white,}) : super(key: key);
  final double height;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child:  VerticalDivider(
        color: bgColor,
        thickness: 3,
        width: 20,
      ),
    );
  }
}

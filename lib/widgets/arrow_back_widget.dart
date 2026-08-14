
import 'package:flutter/material.dart';

import '../core/utils/constants/colors_constants.dart';

class ArrowBackWidget extends StatelessWidget {
  const ArrowBackWidget({Key? key ,required this.myContext}) : super(key: key);
  final BuildContext myContext;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed:() => Navigator.pop(myContext),
        icon: const Icon(Icons.arrow_back_ios ,color: AppColor.primaryColor,));
  }
}

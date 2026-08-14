
import 'package:flutter/cupertino.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key, this.radius = 24});
  final double radius;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: CupertinoActivityIndicator(
        radius: radius,
      ),
    );
  }
}

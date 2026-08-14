import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQuery;
  static late double _screenWidth;
  static late double _screenHeight;
  static late double safeAreaTop;
  static late double safeAreaBottom;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  // Initialize once at app startup or once in every page
  static void init(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);
    _screenWidth = _mediaQuery.size.width;
    _screenHeight = _mediaQuery.size.height;
    safeAreaTop = _mediaQuery.padding.top;
    safeAreaBottom = _mediaQuery.padding.bottom;

    // For responsive grid layout (optional)
    blockSizeHorizontal = _screenWidth / 100;
    blockSizeVertical = (_screenHeight - safeAreaTop - safeAreaBottom) / 100;
  }

  // Screen dimensions
  static double get width => _screenWidth;
  static double get height => _screenHeight;

  // Safe area dimensions
  static double get heightSafeArea => _screenHeight - safeAreaTop - safeAreaBottom;
  static double get safeAreaTopPadding => safeAreaTop;
  static double get safeAreaBottomPadding => safeAreaBottom;

  // Responsive size helpers
  static double widthResponsive(double percentage) => _screenWidth * percentage;
  static double heightResponsive(double percentage) => _screenHeight * percentage;

  // Text size scaling (optional)
  static double textScaleFactor(BuildContext context) =>
      MediaQuery.of(context).textScaleFactor;

  // App bar utilities
  static double appBarHeight(AppBar appBar) => appBar.preferredSize.height;

  // Screen height without app bar
  static double heightWithoutAppBar(AppBar appBar) =>
      _screenHeight - appBarHeight(appBar);
}
/*
 Ex:
 Scaffold(
  appBar: AppBar(),
  body: Container(
    height: SizeConfig.heightWithoutAppBar(context, appBar),
    child: // ...
  )
)
---------------
// Instead of fixed sizes
Container(
  width: SizeConfig.widthResponsive(0.9),
  margin: EdgeInsets.symmetric(
    vertical: SizeConfig.blockSizeVertical * 2,
  ),
)
---------------
Container(
  width: 10 * SizeConfig.blockSizeHorizontal, // 10% من العرض
  height: 15 * SizeConfig.blockSizeVertical,   // 15% من الارتفاع المتاح
)
---------------
Text(
  'Responsive Text',
  style: TextStyle(
    fontSize: 16 * SizeConfig.textScaleFactor(context),
  ),
)

*/
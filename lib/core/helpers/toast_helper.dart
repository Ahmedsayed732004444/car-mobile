import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

import '../utils/context_utils.dart';

const int _durationToast = 4;

enum ToastType {
  success,
  error,
  warning,
  info,
}

class ToastHelper {

  static void _showToast(
      String message,
      {
        ToastType type = ToastType.info,
        Duration duration = const Duration(seconds: _durationToast),
        FlushbarPosition position = FlushbarPosition.TOP,
        EdgeInsets margin = const EdgeInsets.all(8),
        BorderRadius borderRadius = const BorderRadius.all(Radius.circular(10)),
        Duration animationDuration = const Duration(milliseconds: 500),
        Color? backgroundColor,
        Color? textColor,
        double? iconSize,
        Widget? mainButton,
        Function? onStatusChanged,
        bool? showProgressIndicator,
        Color? progressIndicatorBackgroundColor,
        Color? progressIndicatorColor,
      }
      ) {

    final context = ContextUtils.globalContext;
    if(context == null) return;

    Color defaultBackgroundColor;
    IconData defaultIcon;


    switch (type) {
      case ToastType.success:
        defaultBackgroundColor = Colors.green;
        defaultIcon = Icons.check_circle;
        break;
      case ToastType.error:
        defaultBackgroundColor = Colors.red;
        defaultIcon = Icons.error;
        break;
      case ToastType.warning:
        defaultBackgroundColor = Colors.orange;
        defaultIcon = Icons.warning;
        break;
      case ToastType.info:
        defaultBackgroundColor = Colors.blueGrey;
        defaultIcon = Icons.info;
        break;
    }

    Flushbar(
      message: message,
      icon: Icon(
        defaultIcon,
        size: iconSize ?? 28.0,
        color: Colors.white,
      ),
      duration: duration,
      backgroundColor: backgroundColor ?? defaultBackgroundColor,
      borderRadius: borderRadius,
      margin: margin,
      flushbarPosition: position,
      animationDuration: animationDuration,
      mainButton: mainButton,
      onStatusChanged: onStatusChanged != null ? (status) => onStatusChanged(status) : null,
      showProgressIndicator: showProgressIndicator ?? false,
      progressIndicatorBackgroundColor: progressIndicatorBackgroundColor,
      progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(progressIndicatorColor ?? Colors.yellow) ,
      messageText: Text(
        message,
        style: TextStyle(color: textColor ?? Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
      ),
    ).show(context);
  }

  // Convenience methods for common toast types
  static void showSuccess(
      String message,
      {Duration duration = const Duration(seconds: _durationToast), FlushbarPosition position = FlushbarPosition.TOP}
      ) {
    _showToast(message, type: ToastType.success, duration: duration, position: position);
  }

  static void showError(
      String message,
      {Duration duration = const Duration(seconds: _durationToast), FlushbarPosition position = FlushbarPosition.TOP}
      ) {
    _showToast(message, type: ToastType.error, duration: duration, position: position);
  }

  static void showWarning(
      String message,
      {Duration duration = const Duration(seconds: _durationToast), FlushbarPosition position = FlushbarPosition.TOP}
      ) {
    _showToast(message, type: ToastType.warning, duration: duration, position: position);
  }

  static void showInfo(
      String message,
      {Duration duration = const Duration(seconds: _durationToast), FlushbarPosition position = FlushbarPosition.TOP}
      ) {
    _showToast(message, type: ToastType.info, duration: duration, position: position);
  }
}





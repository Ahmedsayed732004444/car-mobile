
import 'package:flutter/material.dart';

import '../../main.dart';

class ContextUtils {

  static BuildContext? get globalContext {
    // 1. Check the key status first
    if (navigatorKey.currentState == null || !navigatorKey.currentState!.mounted) {
      return null;
    }

    final overlayContext = navigatorKey.currentState?.overlay?.context;
    if (overlayContext != null) {
      return overlayContext;
    }
    // another solution is to use currentContext
    final currentContext = navigatorKey.currentContext;
    if (currentContext != null && Navigator.of(currentContext).mounted) {
      return currentContext;
    }

    return null;
  }
}
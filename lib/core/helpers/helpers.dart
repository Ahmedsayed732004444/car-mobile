
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Helper{

  static bool isBoolean(dynamic value) {
    if (value is bool) return value;
    if(value is int) return value == 1;
    if(value is String) return value == '1';

    return false;
  }

  static void logDebug(dynamic message) {
    if (kDebugMode) {
      debugPrint(message);
    }
  }

  static void dismissKeyBoard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static String formatDisplayName(String? name) {
    if (name == null || name.trim().isEmpty) return 'مستخدم مجهول';
    if (name.startsWith('user-05') && name.length >= 14) return 'مستخدم جديد';
    return name;
  }
}
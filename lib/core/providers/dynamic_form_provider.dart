import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../localization/app_language_provider.dart';
import '../utils/constants/enumeration.dart';
import 'cache_provider.dart';

class DynamicFormProvider with ChangeNotifier {
  final Map<String, TextEditingController> _controllers = {};
  final Map<String, dynamic> _values = {};

  Map<String, dynamic> get valuesMap => _values;
  Map<String, TextEditingController> get controllersMap => _controllers;

  /// create or get controller for specific field
  TextEditingController getController(String fieldName) {
    if (!_controllers.containsKey(fieldName)) {
      _controllers[fieldName] = TextEditingController();
    }
    return _controllers[fieldName]!;
  }

  // تحديث قيمة الحقل (مفيد للـ select, checkbox, radio)
  void updateValue(String fieldName, dynamic value) {
    _values[fieldName] = value;
    notifyListeners();
  }

  dynamic getValue(String fieldName) {
    if (_values.containsKey(fieldName)) {
      return _values[fieldName];
    }
    return _controllers[fieldName]?.text;
  }

  // تحويل جميع القيم إلى JSON
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    for (var entry in _controllers.entries) {
      data[entry.key] = entry.value.text;
    }
    for (var entry in _values.entries) {
      data[entry.key] = entry.value;
    }
    return data;
  }

  String getLabelName(BuildContext context, String fieldName) {
    final _list = context.read<CacheProvider>().customFieldsList;
    final _isArabic = context.read<AppLanguageProvider>().isArabic;

    for (var field in _list) {
      if (field.fieldName == fieldName) {
        return _isArabic ? field.labelAr : field.labelEn;
      }
    }
    return '';
  }

  bool isFileByFieldName(BuildContext context, String fieldName) {
    final _list = context.read<CacheProvider>().customFieldsList;

    for (var field in _list) {
      if (field.fieldName == fieldName) {
        return field.fieldType == CustomFieldTypeEnum.file.name;
      }
    }
    return false;
  }

  // تنظيف الكنترولرز عند التخلص من الـ Provider
  void disposeControllers() {
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    _controllers.clear();
    _values.clear();
  }

  @override
  void dispose() {
    disposeControllers();
    super.dispose();
  }
}

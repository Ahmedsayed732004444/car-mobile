import '../core/helpers/helpers.dart';

class CustomFieldResultModel {
  final bool success;
  final String message;
  final List<CustomFieldModel> customFieldModelList;

  const CustomFieldResultModel({
    this.success = false,
    this.message = '',
    this.customFieldModelList = const [],
  });

  factory CustomFieldResultModel.fromJson(Map<String, dynamic>? json) {
    return CustomFieldResultModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      customFieldModelList: _parseCustomFieldResult(json?['result']),
    );
  }

  static List<CustomFieldModel> _parseCustomFieldResult(dynamic result) {
    if(result == null || result is! List) return [];
    return List<CustomFieldModel>.from((result).map((e) => CustomFieldModel.fromJson(e)).toList());
  }

}

class CustomFieldModel {

  final int id;
  final int categoryId;
  final String labelAr;
  final String labelEn;
  final String fieldName;
  final String fieldType;
  final bool isRequired;
  final List<String>? options;
  final int? minLength;
  final int? maxLength;

  const CustomFieldModel({
    required this.id,
    required this.categoryId,
    required this.labelAr,
    required this.labelEn,
    required this.fieldName,
    required this.fieldType,
    required this.isRequired,
    this.options,
    this.minLength,
    this.maxLength,
  });

  factory CustomFieldModel.fromJson(Map<String, dynamic>? json) {
    return CustomFieldModel(
      id: json?['id'] ?? 0,
      categoryId: json?['category_id'] ?? 0,
      labelAr: json?['label_ar'] ?? '',
      labelEn: json?['label_en'] ?? '',
      fieldName: json?['field_name'] ?? '',
      fieldType: json?['field_type'] ?? '',
      isRequired: Helper.isBoolean(json?['is_required']),
      options: json?['options'] != null
          ? List<String>.from(json?['options'])
          : null,
      minLength: json?['min_length'],
      maxLength: json?['max_length'] ,
    );
  }
}

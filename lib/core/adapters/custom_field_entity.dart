import 'package:hive/hive.dart';

import '../utils/constants/constants.dart';

part 'custom_field_entity.g.dart';

@HiveType(typeId: AdapterTypeId.customFields)
class CustomFieldEntity extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int categoryId;
  @HiveField(2)
  final String labelAr;
  @HiveField(3)
  final String labelEn;
  @HiveField(4)
  final String fieldName;
  @HiveField(5)
  final String fieldType;
  @HiveField(6)
  final bool isRequired;
  @HiveField(7)
  final List<String>? options;
  @HiveField(8)
  final int? minLength;
  @HiveField(9)
  final int? maxLength;

  CustomFieldEntity({
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

  factory CustomFieldEntity.fromJson(Map<String, dynamic> json) => CustomFieldEntity(
    id: json['id'] as int ?? 0,
    categoryId: json['category_id'] as int ?? 0,
    labelAr: json['label_ar'] as String ?? '',
    labelEn: json['label_en'] as String ?? '',
    fieldName: json['field_name'] as String ?? '',
    fieldType: json['field_type'] as String ?? '',
    isRequired: json['is_required'] as bool ?? false,
    options: json['options'] != null
        ? List<String>.from(json['options'])
        : null,
    minLength: json['min_length'] as int?,
    maxLength: json['max_length'] as int?,
  );

  Map<String, dynamic>? toJson() {
    return {
      'id': id,
      'category_id': categoryId,
      'label_ar': labelAr,
      'label_en': labelEn,
      'field_name': fieldName,
      'field_type': fieldType,
      'is_required': isRequired,
      'options': options,
      'min_length': minLength,
      'max_length': maxLength
    };
  }
}

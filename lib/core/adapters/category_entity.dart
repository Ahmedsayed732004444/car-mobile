

import 'package:hive/hive.dart';

import '../utils/constants/constants.dart';

part 'category_entity.g.dart';

@HiveType(typeId: AdapterTypeId.categories)
class CategoryEntity extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String catNameAr;
  @HiveField(2)
  final String catNameEn;
  @HiveField(3)
  final String catIconPath;
  @HiveField(4)
  final String commissionType;
  @HiveField(5)
  final double commission;
  @HiveField(6)
  final String active;

  CategoryEntity({
    required this.id,
    required this.catNameAr,
    required this.catNameEn,
    required this.catIconPath,
    required this.commissionType,
    required this.commission,
    required this.active
  });

  factory CategoryEntity.fromJson(Map<String, dynamic> json) => CategoryEntity(
    id: json['id'] as int ?? 0,
    catNameAr: json['cat_name_ar'] as String ?? '',
    catNameEn: json['cat_name_en'] as String ?? '',
    catIconPath: json['cat_icon_path'] as String ?? '',
    commissionType: json['commission_type'] as String ?? '',
    commission: (json['commission'] is double) ? json['commission'] : double.parse(json['commission'] ?? '0.0'),
    active: json['active'] as String ?? '',
  );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cat_name_ar': catNameAr,
      'cat_name_en': catNameEn,
      'cat_icon_path': catIconPath,
      'commission_type': commissionType,
      'commission': commission,
      'active': active
    };
  }
}
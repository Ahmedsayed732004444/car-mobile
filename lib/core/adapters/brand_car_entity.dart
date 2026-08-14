import 'package:hive/hive.dart';

import '../utils/constants/constants.dart';

part 'brand_car_entity.g.dart';

@HiveType(typeId: AdapterTypeId.brandsCars)
class BrandCarEntity extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String brandCarNameAr;
  @HiveField(2)
  final String brandCarNameEn;

  BrandCarEntity({
    required this.id,
    required this.brandCarNameAr,
    required this.brandCarNameEn,
  });

  factory BrandCarEntity.fromJson(Map<String, dynamic> json) => BrandCarEntity(
        id: json['id'] as int ?? 0,
        brandCarNameAr: json['brand_name_ar'] as String ?? '',
        brandCarNameEn: json['brand_name_en'] as String ?? '',
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'brand_name_ar': brandCarNameAr,
      'brand_name_en': brandCarNameEn
    };
  }
}

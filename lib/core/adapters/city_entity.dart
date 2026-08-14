import 'package:hive/hive.dart';

import '../utils/constants/constants.dart';

part 'city_entity.g.dart';

@HiveType(typeId: AdapterTypeId.cities)
class CityEntity extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String cityNameAr;
  @HiveField(2)
  final String cityNameEn;
  @HiveField(3)
  final bool isActive;

  CityEntity({
    required this.id,
    required this.cityNameAr,
    required this.cityNameEn,
    required this.isActive,
  });

  factory CityEntity.fromJson(Map<String, dynamic> json) => CityEntity(
    id: json['id'] as int ?? 0,
    cityNameAr: json['city_name_ar'] as String ?? '',
    cityNameEn: json['city_name_en'] as String ?? '',
    isActive: json['is_active'] as bool ?? false,
  );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'city_name_ar': cityNameAr,
      'city_name_en': cityNameEn,
      'is_active': isActive
    };
  }

}


import 'package:hive/hive.dart';

import '../utils/constants/constants.dart';

part 'ads_banner_entity.g.dart';

@HiveType(typeId: AdapterTypeId.AdsBanners)
class AdsBannerEntity extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String adsImage;
  @HiveField(2)
  final bool isActive;

  AdsBannerEntity({
    required this.id,
    required this.adsImage,
    required this.isActive
  });

  factory AdsBannerEntity.fromJson(Map<String, dynamic> json) => AdsBannerEntity(
    id: json['id'] as int ?? 0,
    adsImage: json['ads_image'] as String ?? '',
    isActive: json['is_active'] as bool ?? false,
  );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ads_image': adsImage,
      'is_active': isActive
    };
  }
}
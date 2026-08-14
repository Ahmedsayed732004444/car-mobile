
import 'package:hive/hive.dart';

import '../utils/constants/constants.dart';

part 'category_has_brand_field_entity.g.dart';

@HiveType(typeId: AdapterTypeId.categoryHasBrandField)
class CategoryHasBrandFieldEntity extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int categoryId;

  CategoryHasBrandFieldEntity({
    required this.id,
     required this.categoryId
  });

  factory CategoryHasBrandFieldEntity.fromJson(Map<String, dynamic> json) => CategoryHasBrandFieldEntity(
      id: json['id'] as int ?? 0,
      categoryId: json['category_id'] as int ?? 0,
  );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category_id': categoryId
    };
  }
}

import '../core/helpers/helpers.dart';

class CategoryResultModel {
  final bool success;
  final String message;
  final List<CategoryModel> categoryModelList;

  const CategoryResultModel({
    this.success = false,
    this.message = '',
    this.categoryModelList = const [],
  });

  factory CategoryResultModel.fromJson(Map<String, dynamic>? json) {
    return CategoryResultModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      categoryModelList: _parseCategoryResult(json?['result']),
    );
  }
  
  static List<CategoryModel> _parseCategoryResult(dynamic result) {
    if(result == null || result is! List) return [];
    return List<CategoryModel>.from((result).map((e) => CategoryModel.fromJson(e)).toList());
  }

}

class CategoryModel {
  final int id;
  final String catNameAr;
  final String catNameEn;
  final String catIconPath;
  final String commissionType;
  final double commission;
  final String active;

  const CategoryModel({
    this.id = 0,
    this.catNameAr = '',
    this.catNameEn = '',
    this.catIconPath = '',
    this.commissionType = '',
    this.commission = 0.0,
    this.active = '',
  });

  factory CategoryModel.fromJson(Map<String, dynamic>? json) {
    return CategoryModel(
      id: json?['id'] ?? 0,
      catNameAr: json?['cat_name_ar'] ?? '',
      catNameEn: json?['cat_name_en'] ?? '',
      catIconPath: json?['cat_icon_path'] ?? '',
      commissionType: json?['commission_type'] ?? '',
      commission: (json?['commission'] ?? 0).toDouble(),
      active: json?['active'] ?? '',
    );
  }

  String getName([String languageCode = 'ar']) {
    return languageCode == 'ar' ? catNameAr : catNameEn;
  }
}

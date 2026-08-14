class CategoryHasBrandFieldResultModel {
  final bool success;
  final String message;
  final List<CategoryHasBrandFieldModel> categoryHasBrandFieldModelList;

  const CategoryHasBrandFieldResultModel({
    this.success = false,
    this.message = '',
    this.categoryHasBrandFieldModelList = const [],
  });

  factory CategoryHasBrandFieldResultModel.fromJson(Map<String, dynamic>? json) {
    return CategoryHasBrandFieldResultModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      categoryHasBrandFieldModelList: _parseCategoryHasBrandFieldResult(json?['result']),
    );
  }

  static List<CategoryHasBrandFieldModel> _parseCategoryHasBrandFieldResult(dynamic result) {
    if(result == null || result is! List) return [];
    return List<CategoryHasBrandFieldModel>.from((result).map((e) => CategoryHasBrandFieldModel.fromJson(e)).toList());
  }

}

class CategoryHasBrandFieldModel {
  final int id;
  final int categoryId;

  const CategoryHasBrandFieldModel({
    this.id = 0,
    this.categoryId = 0,
  });

  factory CategoryHasBrandFieldModel.fromJson(Map<String, dynamic>? json) {
    return CategoryHasBrandFieldModel(
      id: json?['id'] ?? 0,
      categoryId: json?['category_id'] ?? 0,
    );
  }
}

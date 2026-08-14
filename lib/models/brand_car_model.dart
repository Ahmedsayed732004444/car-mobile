class BrandCarResultModel {
  final bool success;
  final String message;
  final List<BrandCarModel> brandCarModelList;

  const BrandCarResultModel({
    this.success = false,
    this.message = '',
    this.brandCarModelList = const [],
  });

  factory BrandCarResultModel.fromJson(Map<String, dynamic>? json) {
    return BrandCarResultModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      brandCarModelList: _parseBrandCarResult(json?['result']),
    );
  }

  static List<BrandCarModel> _parseBrandCarResult(dynamic result) {
    if(result == null || result is! List) return [];
    return List<BrandCarModel>.from((result).map((e) => BrandCarModel.fromJson(e)).toList());
  }

}

class BrandCarModel {
  final int id;
  final String brandCarNameAr;
  final String brandCarNameEn;

  const BrandCarModel({
    this.id = 0,
    this.brandCarNameAr = '',
    this.brandCarNameEn = '',
  });

  factory BrandCarModel.fromJson(Map<String, dynamic>? json) {
    return BrandCarModel(
      id: json?['id'] ?? 0,
      brandCarNameAr: json?['brand_name_ar'] ?? '',
      brandCarNameEn: json?['brand_name_en'] ?? '',
    );
  }
}

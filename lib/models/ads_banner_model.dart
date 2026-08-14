import '../core/helpers/helpers.dart';

class AdsBannerResultModel {
  final bool success;
  final String message;
  final List<AdsBannerModel> adsBannerModelList;

  const AdsBannerResultModel({
    this.success = false,
    this.message = '',
    this.adsBannerModelList = const [],
  });

  factory AdsBannerResultModel.fromJson(Map<String, dynamic>? json) {
    return AdsBannerResultModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      adsBannerModelList: _parseAdsBannerResult(json?['result']),
    );
  }

  static List<AdsBannerModel> _parseAdsBannerResult(dynamic result) {
    if(result == null || result is! List) return [];
    return List<AdsBannerModel>.from((result).map((e) => AdsBannerModel.fromJson(e)).toList());
  }

}

class AdsBannerModel {
  final int id;
  final String adsImage;
  final bool isActive;

  const AdsBannerModel({
    this.id = 0,
    this.adsImage = '',
    this.isActive = false,
  });

  factory AdsBannerModel.fromJson(Map<String, dynamic>? json) {
    return AdsBannerModel(
      id: json?['id'] ?? 0,
      adsImage: json?['ads_image'] ?? '',
      isActive: Helper.isBoolean(json?['is_active']),
    );
  }
}

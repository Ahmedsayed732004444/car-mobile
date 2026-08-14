import 'package:car_mediator_mobile/core/helpers/helpers.dart';

class CityResultModel {
  final bool success;
  final String message;
  final List<CityModel> cityModelList;

  const CityResultModel({
    this.success = false,
    this.message = '',
    this.cityModelList = const [],
  });

  factory CityResultModel.fromJson(Map<String, dynamic>? json) {
    return CityResultModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      cityModelList: _parseCityResult(json?['result']),
    );
  }

  static List<CityModel> _parseCityResult(dynamic result) {
    if(result == null || result is! List) return [];
    return List<CityModel>.from((result).map((e) => CityModel.fromJson(e)).toList());
  }

}

class CityModel {
  final int id;
  final String cityNameAr;
  final String cityNameEn;
  final bool isActive;

  const CityModel({
    this.id = 0,
    this.cityNameAr = '',
    this.cityNameEn = '',
    this.isActive = false,
  });

  factory CityModel.fromJson(Map<String, dynamic>? json) {
    return CityModel(
       id: json?['id'] ?? 0,
       cityNameAr: json?['city_name_ar'] ?? '',
       cityNameEn: json?['city_name_en'] ?? '',
       isActive: Helper.isBoolean(json?['is_active']),
    );
  }

}

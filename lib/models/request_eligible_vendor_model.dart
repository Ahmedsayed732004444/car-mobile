import 'key_value_model.dart';

class RequestEligibleVendorResultModel {
  final bool success;
  final String message;
  final Result? result;

  const RequestEligibleVendorResultModel({
    this.success = false,
    this.message = '',
    this.result ,
  });

  factory RequestEligibleVendorResultModel.fromJson(Map<String, dynamic>? json) {
    return RequestEligibleVendorResultModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      result: json?['result'] == null ? null : Result.fromJson(json?['result']),
    );
  }

}

class Result {
  final List<RequestEligibleVendorModel> requestEligibleVendorModelList;
  final int currentPage ;
  final int lastPage ;

  Result({
    this.requestEligibleVendorModelList = const [],
    this.currentPage = 1,
    this.lastPage = 1,
  });

  factory Result.fromJson(Map<String, dynamic>? json) {
    return Result(
      currentPage: json?['current_page'] ?? 1,
      lastPage: json?['last_page'] ?? 1,
      requestEligibleVendorModelList: _parseRequestEligibleVendorResult(json?['data']),
    );
  }

  static List<RequestEligibleVendorModel> _parseRequestEligibleVendorResult(dynamic result) {
    if(result == null || result is! List) return [];
    return List<RequestEligibleVendorModel>.from((result).map((e) => RequestEligibleVendorModel.fromJson(e)).toList());
  }
}

class RequestEligibleVendorModel {

  final int requestId;
  final String catNameAr;
  final String requestDate;
  final String cityCustomerNameAr;
  final String description;
  final List<String> cities;
  final List<String> brandsNames;
  final List<Map<String, dynamic>> fields;
  final List<Map<String, dynamic>> images;

  const RequestEligibleVendorModel({
    this.requestId = 0,
    this.catNameAr = '',
    this.requestDate = '',
    this.cityCustomerNameAr = '',
    this.description = '',
    this.cities = const [],
    this.brandsNames = const [],
    this.fields = const [],
    this.images = const [],
  });

  factory RequestEligibleVendorModel.fromJson(Map<String, dynamic>? json) {
    return RequestEligibleVendorModel(
      requestId: json?['request_id'] ?? 0,
      catNameAr: json?['cat_name_ar'] ?? '',
      requestDate: json?['request_date'] ?? '',
      cityCustomerNameAr: json?['city_customer_name_ar'] ?? '',
      description: json?['description'] ?? '',
      cities: (json?['cities'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
      brandsNames: (json?['brandsNames'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
      fields: (json?['customFields'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList() ?? [],
      images: (json?['requestImages'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList() ?? [],
    );
  }
}




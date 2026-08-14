import 'package:car_mediator_mobile/core/helpers/helpers.dart';

class ResponseRequestResultModel {
  final bool success;
  final String message;
  final Result? result;

  const ResponseRequestResultModel({
    this.success = false,
    this.message = '',
    this.result ,
  });

  factory ResponseRequestResultModel.fromJson(Map<String, dynamic>? json) {
    return ResponseRequestResultModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      result: json?['result'] == null ? null : Result.fromJson(json?['result']),
    );
  }
}

class Result {
  final List<ResponseRequestModel> responseRequestModelList;
  final int currentPage ;
  final int lastPage ;

  Result({
    this.responseRequestModelList = const [],
    this.currentPage = 1,
    this.lastPage = 1,
  });

  factory Result.fromJson(Map<String, dynamic>? json) {
    return Result(
      currentPage: json?['current_page'] ?? 1,
      lastPage: json?['last_page'] ?? 1,
      responseRequestModelList: _parseResponseRequestResult(json?['data']),
    );
  }

  static List<ResponseRequestModel> _parseResponseRequestResult(dynamic result) {
    if(result == null || result is! List) return [];
    return List<ResponseRequestModel>.from((result).map((e) => ResponseRequestModel.fromJson(e)).toList());
  }
}

class ResponseRequestModel {

  final int requestId;
  final int responseId;
  final int vendorId;
  final String catNameAr;
  final String companyNameAr;
  final String requestDate;
  final String responseDate;
  final String cityCustomerNameAr;
  final String description;
  final List<String> cities;
  final List<String> brandsNames;
  final List<Map<String, dynamic>> fields;
  final List<Map<String, dynamic>> images;
  final String responseStatus;
  final String requestStatus;
  final String userName;
  final String userPhone;
  final String userLogo;
  final String vendorLogo;
  final double priceResponse;
  final String noteResponse;
  final String warrantyResponse;
  final String vendorMemberSince;
  final String phoneContact;
  final bool isHidePhoneContact;
  final int shippingRequestId;
  final String shippingRequestStatus;

  const ResponseRequestModel({
    this.requestId = 0,
    this.responseId = 0,
    this.vendorId = 0,
    this.companyNameAr = '',
    this.catNameAr = '',
    this.requestDate = '',
    this.responseDate = '',
    this.cityCustomerNameAr = '',
    this.description = '',
    this.cities = const [],
    this.brandsNames = const [],
    this.fields = const [],
    this.images = const [],
    this.responseStatus = '',
    this.requestStatus = '',
    this.userName = '',
    this.userPhone = '',
    this.userLogo = '',
    this.vendorLogo = '',
    this.priceResponse = 0.0,
    this.noteResponse = '',
    this.warrantyResponse = '',
    this.phoneContact = '',
    this.isHidePhoneContact = false,
    this.vendorMemberSince = '',
    this.shippingRequestId = 0,
    this.shippingRequestStatus = '',
  });

  factory ResponseRequestModel.fromJson(Map<String, dynamic>? json) {
    return ResponseRequestModel(
      requestId: json?['request_id'] ?? 0,
      responseId: json?['response_id'] ?? 0,
      vendorId: json?['vendor_id'] ?? 0,
      companyNameAr: json?['company_name_ar'] ?? '',
      catNameAr: json?['cat_name_ar'] ?? '',
      requestDate: json?['request_date'] ?? '',
      responseDate: json?['response_date'] ?? '',
      vendorMemberSince: json?['vendor_member_since'] ?? '',
      cityCustomerNameAr: json?['city_customer_name_ar'] ?? '',
      description: json?['description'] ?? '',
      cities: (json?['cities'] as List<dynamic>?)
          ?.map((e) => e.toString())
          .toList() ?? [],
      brandsNames: (json?['brandsNames'] as List<dynamic>?)?.map((e) =>
          e.toString()).toList() ?? [],
      fields: (json?['customFields'] as List<dynamic>?)?.map((e) =>
      e as Map<
          String,
          dynamic>).toList() ?? [],
      images: (json?['requestImages'] as List<dynamic>?)?.map((e) =>
      e as Map<
          String,
          dynamic>).toList() ?? [],
      responseStatus: json?['response_status'] ?? '',
      requestStatus: json?['request_status'] ?? '',
      userName: json?['user_name'] ?? '',
      userPhone: json?['user_phone'] ?? '',
      userLogo: json?['user_logo'] ?? '',
      vendorLogo: json?['vendor_logo'] ?? '',
      priceResponse: double.parse(json?['price_response'] ?? '0.0'),
      noteResponse: json?['note_response'] ?? '',
      warrantyResponse: json?['warranty_response'] ?? '',
      phoneContact: json?['phone_contact'] ?? '',
      isHidePhoneContact: Helper.isBoolean(json?['is_hide_phone_contact']),
      shippingRequestId: json?['shipping_request_id'] ?? 0,
      shippingRequestStatus: json?['shipping_request_status'] ?? '',
    );
  }
}

class RequestResultModel {
  final bool success;
  final String message;
  final Result? result;

  const RequestResultModel({
    this.success = false,
    this.message = '',
    this.result ,
  });

  factory RequestResultModel.fromJson(Map<String, dynamic>? json) {
    return RequestResultModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      result: json?['result'] == null ? null : Result.fromJson(json?['result']),
    );
  }
}

class Result {
  final List<RequestModel> requestModelList;
  final int currentPage ;
  final int lastPage ;
  final int shippingRequestId ;

  Result({
    this.requestModelList = const [],
    this.currentPage = 1,
    this.lastPage = 1,
    this.shippingRequestId = 0,
  });

  factory Result.fromJson(Map<String, dynamic>? json) {
    return Result(
      currentPage: json?['current_page'] ?? 1,
      lastPage: json?['last_page'] ?? 1,
      shippingRequestId: json?['shippingRequestId'] ?? 0,
      requestModelList: _parseRequestResult(json?['data']),
    );
  }

  static List<RequestModel> _parseRequestResult(dynamic result) {
    if(result == null || result is! List) return [];
    return List<RequestModel>.from((result).map((e) => RequestModel.fromJson(e)).toList());
  }
}

class RequestModel {

  final int requestId;
  final int responseId;
  final String catNameAr;
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
  final double priceResponse;
  final String noteResponse;
  final String warrantyResponse;
  final int countResponse;

  const RequestModel({
    this.requestId = 0,
    this.responseId = 0,
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
    this.priceResponse = 0.0,
    this.noteResponse = '',
    this.warrantyResponse = '',
    this.countResponse = 0,
  });

  factory RequestModel.fromJson(Map<String, dynamic>? json) {
    return RequestModel(
      requestId: json?['request_id'] ?? 0,
      responseId: json?['response_id'] ?? 0,
      catNameAr: json?['cat_name_ar'] ?? '',
      requestDate: json?['request_date'] ?? '',
      responseDate: json?['response_date'] ?? '',
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
      priceResponse: double.parse(json?['price_response'] ?? '0.0'),
      noteResponse: json?['note_response'] ?? '',
      warrantyResponse: json?['warranty_response'] ?? '',
      countResponse: json?['count_response'] ?? 0,
    );
  }

  RequestModel copyWith({
    int? requestId,
    int? responseId,
    String? catNameAr,
    String? requestDate,
    String? responseDate,
    String? cityCustomerNameAr,
    String? description,
    List<String>? cities,
    List<String>? brandsNames,
    List<Map<String, dynamic>>? fields,
    List<Map<String, dynamic>>? images,
    String? responseStatus,
    String? requestStatus,
    String? userName,
    String? userPhone,
    String? userLogo,
    double? priceResponse,
    String? noteResponse,
    String? warrantyResponse,
    int? countResponse,
  }) {
    return RequestModel(
      requestId: requestId ?? this.requestId,
      responseId: responseId ?? this.responseId,
      catNameAr: catNameAr ?? this.catNameAr,
      requestDate: requestDate ?? this.requestDate,
      responseDate: responseDate ?? this.responseDate,
      cityCustomerNameAr: cityCustomerNameAr ?? this.cityCustomerNameAr,
      description: description ?? this.description,
      cities: cities ?? this.cities,
      brandsNames: brandsNames ?? this.brandsNames,
      fields: fields ?? this.fields,
      images: images ?? this.images,
      responseStatus: responseStatus ?? this.responseStatus,
      requestStatus: requestStatus ?? this.requestStatus,
      userName: userName ?? this.userName,
      userPhone: userPhone ?? this.userPhone,
      userLogo: userLogo ?? this.userLogo,
      priceResponse: priceResponse ?? this.priceResponse,
      noteResponse: noteResponse ?? this.noteResponse,
      warrantyResponse: warrantyResponse ?? this.warrantyResponse,
      countResponse: countResponse ?? this.countResponse,
    );
  }
}



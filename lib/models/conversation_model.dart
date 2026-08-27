class ConversationResponseModel {
  final bool success;
  final String message;
  final Result? result;

  const ConversationResponseModel({
    this.success = false,
    this.message = '',
    this.result ,
  });

  factory ConversationResponseModel.fromJson(Map<String, dynamic>? json) {
    return ConversationResponseModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      result: json?['result'] == null ? null : Result.fromJson(json?['result']),
    );
  }
}

class Result {
  final List<ConversationModel> conversationModelList;
  final int currentPage ;
  final int lastPage ;

  Result({
    this.conversationModelList = const [],
    this.currentPage = 1,
    this.lastPage = 1,
  });

  factory Result.fromJson(Map<String, dynamic>? json) {
    return Result(
      currentPage: json?['current_page'] ?? 1,
      lastPage: json?['last_page'] ?? 1,
      conversationModelList: _parseConversationResult(json?['data']),
    );
  }

  static List<ConversationModel> _parseConversationResult(dynamic result) {
    if(result == null || result is! List) return [];
    return List<ConversationModel>.from((result).map((e) => ConversationModel.fromJson(e)).toList());
  }
}

class ConversationModel{

  final int conversationId;
  final int requestId;
  final int responseId;
  final int vendorId;
  final String receiverName;
  final String receiverPhone;
  final String receiverLogo;

  const ConversationModel({
    this.conversationId = 0,
    this.requestId = 0,
    this.responseId = 0,
    this.vendorId = 0,
    this.receiverName = '',
    this.receiverPhone = '',
    this.receiverLogo = '',
  });

  factory ConversationModel.fromJson(Map<String, dynamic>? json) {
    return ConversationModel(
      conversationId: json?['id'] ?? 0,
      requestId: json?['request_id'] ?? 0,
      responseId: json?['response_id'] ?? 0,
      vendorId: json?['vendor_id'] ?? 0,
      receiverName: json?['receiver_name'] ?? '',
      receiverPhone: json?['receiver_phone'] ?? '',
      receiverLogo: json?['receiver_logo'] ?? '',
    );
  }
}



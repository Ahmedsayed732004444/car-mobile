class NotificationResponseModel {
  final bool success;
  final String message;
  final Result? result;

  const NotificationResponseModel({
    this.success = false,
    this.message = '',
    this.result ,
  });

  factory NotificationResponseModel.fromJson(Map<String, dynamic>? json) {
    return NotificationResponseModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      result: json?['result'] == null ? null : Result.fromJson(json?['result']),
    );
  }
}

class Result {
  final List<NotificationModel> notificationModelList;
  final int currentPage ;
  final int lastPage ;

  Result({
    this.notificationModelList = const [],
    this.currentPage = 1,
    this.lastPage = 1,
  });

  factory Result.fromJson(Map<String, dynamic>? json) {
    return Result(
      currentPage: json?['current_page'] ?? 1,
      lastPage: json?['last_page'] ?? 1,
      notificationModelList: _parseNotificationResult(json?['data']),
    );
  }

  static List<NotificationModel> _parseNotificationResult(dynamic result) {
    if(result == null || result is! List) return [];
    return List<NotificationModel>.from((result).map((e) => NotificationModel.fromJson(e)).toList());
  }
}

class NotificationModel{

  final String title;
  final String body;
  final String createdAt;

  const NotificationModel({
    this.title = '',
    this.body = '',
    this.createdAt = '',
  });

  factory NotificationModel.fromJson(Map<String, dynamic>? json) {
    return NotificationModel(
      title: json?['title'] ?? '',
      body: json?['body'] ?? '',
      createdAt: json?['created_at'] ?? '',
    );
  }
}



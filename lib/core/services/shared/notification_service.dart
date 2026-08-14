
import 'package:car_mediator_mobile/core/services/base_service.dart';
import 'package:flutter/cupertino.dart';

import '../../../models/notification_model.dart';
import '../../data_sources/remote/api_service.dart';
import '../../errors/api_exceptions.dart';
import '../../helpers/toast_helper.dart';

class NotificationService extends BaseService  {
  final ApiService _apiService;

  NotificationService(this._apiService);

  Future<NotificationResponseModel?> getNotifications({ required int page}) async {
    try {
      final response = await _apiService.getData('notifications', queryParams: {'page': page.toString()});
      return NotificationResponseModel.fromJson(response);
    } on ApiException catch (e) {
      ToastHelper.showError(e.message);
      debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
      return null;
    } catch (e) {
      debugPrint('Unexpected Error: $e');
      ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
      return null;
    }
  }

  Future<Map<String, int>?> getUnreadCounts() async {
    try {
      final response = await _apiService.getData('notifications/unread-counts');
      if (response != null && response['success'] == true && response['data'] != null) {
        final Map<String, dynamic> data = response['data'];
        return data.map((key, value) => MapEntry(key, (value as num).toInt()));
      }
      return null;
    } catch (e) {
      debugPrint('Error fetching unread counts: $e');
      return null;
    }
  }

  Future<Map<String, int>?> markCategoryRead(String category) async {
    try {
      final response = await _apiService.postData('notifications/mark-category-read', {'category': category});
      if (response != null && response['success'] == true && response['data'] != null) {
        final Map<String, dynamic> data = response['data'];
        return data.map((key, value) => MapEntry(key, (value as num).toInt()));
      }
      return null;
    } catch (e) {
      debugPrint('Error marking category read: $e');
      return null;
    }
  }
}
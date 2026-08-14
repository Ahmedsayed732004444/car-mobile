
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
        final Map<String, int> result = {};
        data.forEach((key, value) {
          if (value is num) {
            result[key] = value.toInt();
          }
        });
        if (data['sections'] is Map) {
          (data['sections'] as Map).forEach((key, value) {
            if (value is num) {
              result[key.toString()] = value.toInt();
            }
          });
        }
        return result;
      }
      return null;
    } catch (e) {
      debugPrint('Error fetching unread counts: $e');
      return null;
    }
  }

  Future<Map<String, dynamic>?> getRawUnreadCountsData() async {
    try {
      final response = await _apiService.getData('notifications/unread-counts');
      if (response != null && response['success'] == true && response['data'] != null) {
        return response['data'] as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      debugPrint('Error fetching raw unread counts: $e');
      return null;
    }
  }

  Future<Map<String, dynamic>?> markEntityRead({required String section, required int entityId}) async {
    try {
      final response = await _apiService.postData(
        'notifications/mark-entity-read',
        body: {'section': section, 'entity_id': entityId},
      );
      if (response != null && response['success'] == true && response['data'] != null) {
        return response['data'] as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      debugPrint('Error marking entity read: $e');
      return null;
    }
  }

  Future<Map<String, int>?> markCategoryRead(String category) async {
    try {
      final response = await _apiService.postData('notifications/mark-category-read', body: {'category': category});
      if (response != null && response['success'] == true && response['data'] != null) {
        final Map<String, dynamic> data = response['data'];
        final Map<String, int> result = {};
        data.forEach((key, value) {
          if (value is num) {
            result[key] = value.toInt();
          }
        });
        if (data['sections'] is Map) {
          (data['sections'] as Map).forEach((key, value) {
            if (value is num) {
              result[key.toString()] = value.toInt();
            }
          });
        }
        return result;
      }
      return null;
    } catch (e) {
      debugPrint('Error marking category read: $e');
      return null;
    }
  }
}
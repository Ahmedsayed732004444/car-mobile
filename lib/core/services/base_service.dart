
import 'package:car_mediator_mobile/core/data_sources/remote/api_service.dart';
import 'package:car_mediator_mobile/core/errors/api_exceptions.dart';
import 'package:flutter/cupertino.dart';

import '../helpers/toast_helper.dart';

class BaseService {
  void showValidationError(ValidationException e) {
    final allErrorsText = e.errors
        .values
        .expand((list) => list)
        .join('\n');
    ToastHelper.showError(allErrorsText);
  }

  void showApiException(ApiException e) {
    ToastHelper.showError(e.message);
    debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
  }

  void showExceptionError(e) {
    debugPrint('Unexpected Error: $e');
    ToastHelper.showError('حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.');
  }

  Future<T?> postService<T>({
    required ApiService apiService,
    required String endpoint,
    required Map<String, dynamic> body,
    required T Function(Map<String, dynamic>) fromJson,
    bool isGuest = false,
  }) async {

    try {
      final response = await apiService.postData(endpoint, body: body, isGuest: isGuest);
      return fromJson(response);
    } on ValidationException catch (e) {
      showValidationError(e);
      return null;
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
  // end postService

  Future<T?> getService<T>({
    required ApiService apiService,
    required String endpoint,
    Map<String, dynamic>? queryParams,
    required T Function(Map<String, dynamic>) fromJson,
    bool isGuest = false,
  }) async {

    try {
      final response = await apiService.getData(endpoint,queryParams: queryParams, isGuest: isGuest);
      return fromJson(response);
    } on ValidationException catch (e) {
      showValidationError(e);
      return null;
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
// end getService
}
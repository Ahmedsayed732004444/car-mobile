
import 'package:flutter/cupertino.dart';

import '../../../../models/request_model.dart';
import '../../../../models/response_request_model.dart';
import '../../../data_sources/remote/api_endpoints.dart';
import '../../../data_sources/remote/api_service.dart';
import '../../../errors/api_exceptions.dart';
import '../../../helpers/toast_helper.dart';
import '../../base_service.dart';

class MyRequestsUserService extends BaseService {
  final ApiService _apiService;

  MyRequestsUserService(this._apiService);

  Future<RequestResultModel?> getMyRequests({required int page}) async {
    try {
      final response = await _apiService.getData(ApiEndpoints.getMyRequestUser, queryParams: {'page': page.toString()});
      return RequestResultModel.fromJson(response);
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

  Future<RequestModel?> getMyRequestById({required int requestId}) async {
    try {
      final response = await _apiService.getData('${ApiEndpoints.getMyRequestUser}/${requestId}');
      if(response == null)
        return null;

      return (response['success']) ? RequestModel.fromJson(response['result']) : null;

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

  Future<ResponseRequestResultModel?> getResponsesMyRequest({required int page, required int requestId}) async {
    try {
      final response = await _apiService.getData('${ApiEndpoints.getResponsesMyRequest}/$requestId', queryParams: {'page': page.toString()});
      return ResponseRequestResultModel.fromJson(response);
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

  Future<ResponseRequestModel?> getResponseRequestById({required int responseId}) async {
    try {
      final response = await _apiService.getData('${ApiEndpoints.getResponseRequestById}/$responseId');
      if(response['success'] ?? false) {
        return ResponseRequestModel.fromJson(response['result']);
      }

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

  Future<ResponseRequestResultModel?> updateResponseRequest({required Map<String, dynamic> body}) async {
    return postService<ResponseRequestResultModel>(
      apiService: _apiService,
      endpoint: ApiEndpoints.updateStatusMyRequest,
      body: body,
      fromJson: (json) => ResponseRequestResultModel.fromJson(json),
    );
  }

}

import 'package:flutter/cupertino.dart';

import '../../../models/response_request_model.dart';
import '../../data_sources/remote/api_endpoints.dart';
import '../../data_sources/remote/api_service.dart';
import '../../errors/api_exceptions.dart';
import '../../helpers/toast_helper.dart';

class ResponseRequestService{
  final ApiService _apiService;

  ResponseRequestService(this._apiService);

  Future<ResponseRequestResultModel?> getMyResponseRequests({required int page}) async {
    try {
      final response = await _apiService.getData(ApiEndpoints.getMyResponseRequests, queryParams: {'page': page.toString()});
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

  Future<ResponseRequestModel?> detailsResponseRequest({required int responseId}) async {
    try {
      final response = await _apiService.getData(ApiEndpoints.detailResponseRequests+'/${responseId}',);

      if(! response['success']) return null;

      return response?['result'] == null ? null : ResponseRequestModel.fromJson(response?['result']);

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

}
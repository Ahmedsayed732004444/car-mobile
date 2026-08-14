

import 'dart:io';

import 'package:flutter/cupertino.dart';

import '../../../models/request_eligible_vendor_model.dart';
import '../../../models/response_request_model.dart';
import '../../data_sources/remote/api_endpoints.dart';
import '../../data_sources/remote/api_service.dart';
import '../../errors/api_exceptions.dart';
import '../../helpers/toast_helper.dart';
import '../base_service.dart';

class NewRequestService extends BaseService {
  final ApiService _apiService;

  NewRequestService(this._apiService);

  Future<RequestEligibleVendorResultModel?> getAllNewRequests({required int page}) async {
    try {
      final response = await _apiService.getData(ApiEndpoints.getAllNewRequestsVendor, queryParams: {'page': page.toString()});
      return RequestEligibleVendorResultModel.fromJson(response);
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

  Future<RequestEligibleVendorModel?> detailsNewRequests({required int requestId}) async {
    try {
      final response = await _apiService.getData(ApiEndpoints.detailsNewRequestsVendor+'/${requestId}',);

      if(! response['success']) return null;

      return response?['result'] == null ? null : RequestEligibleVendorModel.fromJson(response?['result']);

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

  // Future<ResponseRequestResultModel?> sendResponseRequest({required Map<String, dynamic> body}) async {
  //   return postService<ResponseRequestResultModel>(
  //     apiService: _apiService,
  //     endpoint: ApiEndpoints.sendResponseRequestVendor,
  //     body: body,
  //     fromJson: (json) => ResponseRequestResultModel.fromJson(json),
  //   );
  // }

  Future<ResponseRequestResultModel?> sendResponseRequest({
    required Map<String, String> body,
    required List<File>? files,
  }) async {
    try {
      final response = await _apiService.uploadFiles(ApiEndpoints.sendResponseRequestVendor, fields: body, files: files,);
      return ResponseRequestResultModel.fromJson(response);
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
}

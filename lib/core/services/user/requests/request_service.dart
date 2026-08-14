import 'dart:io';

import 'package:car_mediator_mobile/core/services/base_service.dart';
import 'package:car_mediator_mobile/models/request_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../data_sources/remote/api_endpoints.dart';
import '../../../data_sources/remote/api_service.dart';
import '../../../errors/api_exceptions.dart';
import '../../../helpers/toast_helper.dart';

class RequestService extends BaseService {
  final ApiService _apiService;

  RequestService(this._apiService);

  Future<RequestResultModel?> checkEligibleVendors({required Map<String, dynamic> body}) async {
    return postService<RequestResultModel>(
      apiService: _apiService,
      endpoint: ApiEndpoints.checkEligibleVendors,
      body: body,
      fromJson: (json) => RequestResultModel.fromJson(json),
    );
  }

  // Future<RequestResultModel?> confirmOrderRequest({required Map<String, dynamic> body}) async {
  //   return postService<RequestResultModel>(
  //     apiService: _apiService,
  //     endpoint: ApiEndpoints.confirmOrderRequest,
  //     body: body,
  //     fromJson: (json) => RequestResultModel.fromJson(json),
  //   );
  // }

  Future<RequestResultModel?> confirmOrderRequest({
    required Map<String, String> body,
    required List<File>? files,
  }) async {

    try {
      final response = await _apiService.uploadFiles(ApiEndpoints.confirmOrderRequest, fields: body, files: files,);
      return RequestResultModel.fromJson(response);
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

  Future<RequestResultModel?> confirmShippingRequest({required Map<String, dynamic> body}) async {
    return postService<RequestResultModel>(
      apiService: _apiService,
      endpoint: ApiEndpoints.ConfirmShippingRequest,
      body: body,
      fromJson: (json) => RequestResultModel.fromJson(json),
    );
  }

  Future<RequestResultModel?> confirmPriceShippingRequest({required Map<String, dynamic> body}) async {
    return postService<RequestResultModel>(
      apiService: _apiService,
      endpoint: ApiEndpoints.ConfirmPriceShippingRequest,
      body: body,
      fromJson: (json) => RequestResultModel.fromJson(json),
    );
  }

}

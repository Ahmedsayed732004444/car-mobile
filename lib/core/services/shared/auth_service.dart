

import 'package:car_mediator_mobile/core/data_sources/remote/api_endpoints.dart';
import 'package:flutter/cupertino.dart';

import '../../../models/user_model.dart';
import '../../data_sources/remote/api_service.dart';
import '../../errors/api_exceptions.dart';
import '../../helpers/toast_helper.dart';
import '../base_service.dart';

class AuthService extends BaseService {
  final ApiService _apiService;

  AuthService(this._apiService);

  Future<UserResponseModel?> auth(
      {required Map<String, dynamic> body, required String path}) async {
    try {
      final response = await _apiService.postData(
          path,
          body: body,
          isGuest: true);

      return UserResponseModel.fromJson(response);

    } on ValidationException catch (e) {
      showValidationError(e);
      return null;
    } on ApiException catch (e) {
      ToastHelper.showError(e.message);
      debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
      return null;
    }
  }

  Future<UserResponseModel?> logout() async {
    try {
      final response = await _apiService.postData(
          ApiEndpoints.logout,
          body: {},);

      return UserResponseModel.fromJson(response);

    } on ApiException catch (e) {
      ToastHelper.showError(e.message);
      debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
      return null;
    }
  }
}
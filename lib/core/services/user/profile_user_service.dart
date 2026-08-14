
import 'dart:io';

import 'package:car_mediator_mobile/core/services/base_service.dart';
import 'package:flutter/cupertino.dart';

import '../../../models/user_model.dart';
import '../../data_sources/remote/api_endpoints.dart';
import '../../data_sources/remote/api_service.dart';
import '../../errors/api_exceptions.dart';
import '../../helpers/helpers.dart';
import '../../helpers/toast_helper.dart';

class ProfileUserService extends BaseService {
  final ApiService _apiService;

  ProfileUserService(this._apiService);

  Future<UserModel?> getUserProfile() async {
    try {
      final response = await _apiService.getData(ApiEndpoints.getUserProfile);

      if(response == null) return null;

      if(response['success'])
        return UserModel.fromJson(response?['result']);

      ToastHelper.showError(response['message']);
      return null;

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

  Future<UserResponseModel?> updateUserProfile(BuildContext context, {required Map<String, String> body, required List<File> files}) async {
    try {
      final response = await _apiService.uploadFiles(ApiEndpoints.updateUserProfile, fields: body, files: files);
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

}
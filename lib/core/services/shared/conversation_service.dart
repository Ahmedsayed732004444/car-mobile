
import 'dart:io';

import 'package:car_mediator_mobile/core/errors/api_exceptions.dart';
import 'package:car_mediator_mobile/core/services/base_service.dart';
import 'package:flutter/cupertino.dart';

import '../../../models/conversation_model.dart';
import '../../../models/message_model.dart';
import '../../data_sources/remote/api_endpoints.dart';
import '../../data_sources/remote/api_service.dart';
import '../../helpers/toast_helper.dart';

class ConversationService extends BaseService {
  final ApiService _apiService;

  ConversationService(this._apiService);

  Future<dynamic> createConversation(
      {required Map<String, dynamic> body}) async {
    try {
      return await _apiService.postData(
        ApiEndpoints.createConversation,
          body: body,);
    } on ValidationException catch (e) {
      showValidationError(e);
      return null;
    } on ApiException catch (e) {
      ToastHelper.showError(e.message);
      debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
      return null;
    }
  }

  Future<ConversationResponseModel?> getMyConversations({ required String path, required int page}) async {
    try {
      final response = await _apiService.getData(path, queryParams: {'page': page.toString()});
      return ConversationResponseModel.fromJson(response);
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

  Future<List<Message>> fetchMessages({required int conversationId, required int lastMessageId}) async {
    try {
      final response =  await _apiService.getData("chat/messages/$conversationId?last_message_id=$lastMessageId");
      if (response == null) return [];

      return (response['result'] as List)
          .map((m) => Message.fromJson(m))
          .toList();

    } on ValidationException catch (e) {
      showValidationError(e);
      return [];
    } on ApiException catch (e) {
      // ToastHelper.showError(e.message);
      debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
      return [];
    }
  }

  Future<dynamic> sendMessage(
      {required Map<String, String> body, File? file}) async {
    try {
      return await _apiService.uploadSingleFile(
        ApiEndpoints.sendMessageChat,
          fields: body,
        file: file);
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
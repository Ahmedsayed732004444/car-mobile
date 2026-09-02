
import 'dart:io';

import 'package:car_mediator_mobile/core/utils/connection_utils.dart';
import 'package:car_mediator_mobile/core/utils/dialogUtils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../features/shared/auth/opt_screen.dart';
import '../../features/shared/chat/screens/chat_screen.dart';
import '../../models/conversation_model.dart';
import '../../models/message_model.dart';
import '../../widgets/components.dart';
import '../data_sources/remote/api_endpoints.dart';
import '../helpers/helpers.dart';
import '../helpers/toast_helper.dart';
import '../services/shared/conversation_service.dart';
import 'auth_provider.dart';

class ConversationProvider extends ChangeNotifier {
  final ConversationService _conversationService;

  List<Message> messagesList = [];
  List<ConversationModel> conversationModelList = [];

  int lastMessageId = 0;
  int? activeConversationId;

  void setActiveConversation(int? convId) {
    activeConversationId = convId;
  }

  void onRealtimeMessageReceived(Map<String, dynamic> data) {
    final rawId = data['conversation_id'];
    if (rawId == null) return;
    final convId = int.tryParse(rawId.toString());

    if (convId != null && activeConversationId == convId) {
      fetchNewMessages(conversationId: convId);
    }
  }

  ConversationProvider(this._conversationService);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  bool _isLoadingSend = false;
  bool get isLoadingSend => _isLoadingSend;

  void _toggleLoadingSend() {
    _isLoadingSend = !_isLoadingSend;
    notifyListeners();
  }

  int currentPage = 1;
  int lastPage = 1;

  bool get hasMore => currentPage <= lastPage;

  void resetPagination(){
    conversationModelList.clear();
    currentPage = 1;
    lastPage = 1;
  }

  Future<void> createConversation(
      BuildContext context,
      {
        required Map<String, dynamic> body,
        required int requestId,
        required int responseId,
        required int vendorId,
        required String receiverName,
        required String receiverLogo,
        bool isVendor = false,
      }) async {

    if(!await ConnectionUtils.hasInternetConnection()){
      DialogUtils().showNoInternetDialog(context);
      return;
    }

    _toggleLoading();
    try {
      final _response = await _conversationService.createConversation(body: body);
      if (_response != null) {
        if(_response['success']){
           await navigationPush(context, ChatScreen(
             conversationId: _response['result']['conversationId'],
             requestId: requestId,
             responseId: responseId,
             vendorId: vendorId,
             receiverName: receiverName,
             receiverLogo: receiverLogo,
             myUserId: context.read<AuthProvider>().currentUseModel?.id ?? 0,
             isVendor: isVendor,
           ));
        }else{
          ToastHelper.showError(_response['message']);
        }
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed : ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> getMyConversations({ required String path, bool loadMore = false}) async {
    _toggleLoading();
    try {
      final response = await _conversationService.getMyConversations(path: path, page: currentPage);
      if (response != null) {

        if (loadMore) {
          conversationModelList.addAll(response.result?.conversationModelList ?? []);
        } else {
          conversationModelList = response.result?.conversationModelList ?? [];
        }

        currentPage = (response.result?.currentPage ?? 1) + 1;
        lastPage = (response.result?.lastPage ?? 1);
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed getMyConversations: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> refreshGetMyConversations(String path) async {
    resetPagination();
    await getMyConversations(path: path);
  }

  Future<void> loadInitialMessages({required int conversationId}) async {
    _toggleLoading();
    try {
      final data = await _conversationService.fetchMessages(conversationId: conversationId, lastMessageId: lastMessageId);
      messagesList = data;
      if (messagesList.isNotEmpty) {
              lastMessageId = messagesList.last.id;  // آخر ID عندنا
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed : ${e}');
      // ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> fetchNewMessages({required int conversationId}) async {
    try {
      final newMsgs = await _conversationService.fetchMessages(conversationId: conversationId, lastMessageId: lastMessageId);
      if (newMsgs.isNotEmpty) {
        messagesList.addAll(newMsgs);
        lastMessageId =  messagesList.last.id;
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed : ${e}');
      // ToastHelper.showError(e.toString());
    } finally {
      notifyListeners();
    }
  }

  File? fileImage;
  void changeSelectedConversationImage(File? file){
    fileImage = file;
    notifyListeners();
  }

  Future<void> sendMessage(BuildContext context,{required Map<String, String> body,}) async {
    if (_isLoadingSend) return;
    _toggleLoadingSend();
    try {
      final _response = await _conversationService.sendMessage(body: body, file: fileImage);
      if (_response != null) {
        fileImage = null;
        if(!_response['success']){
          ToastHelper.showError(_response['message']);
          fileImage = null;
        }
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed : ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoadingSend();
    }
  }

  void initProvider(){
    messagesList = [];
    lastMessageId = 0;
  }

}

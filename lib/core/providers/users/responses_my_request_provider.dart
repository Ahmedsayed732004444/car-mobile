import 'package:flutter/material.dart';

import '../../../models/response_request_model.dart';
import '../../helpers/helpers.dart';
import '../../helpers/toast_helper.dart';
import '../../services/user/my_requests/my_request_user_service.dart';

class ResponsesMyRequestProvider extends ChangeNotifier {
  final MyRequestsUserService _myRequestsUserService;

  List<ResponseRequestModel> responseRequestModelList = [];

  ResponseRequestModel? detailsResponseRequestModel;

  ResponsesMyRequestProvider(this._myRequestsUserService);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  int currentPage = 1;
  int lastPage = 1;

  bool get hasMore => currentPage <= lastPage;

  void resetPagination(){
    responseRequestModelList.clear();
    currentPage = 1;
    lastPage = 1;
  }

  Future<void> refreshGetResponsesMyRequest({required int requestId}) async {
    resetPagination();
    await getResponsesMyRequest(requestId: requestId);
  }

  Future<void> getResponsesMyRequest({bool loadMore = false, required int requestId}) async {
    _toggleLoading();
    try {
      final response = await _myRequestsUserService.getResponsesMyRequest(requestId: requestId, page: currentPage);
      if (response != null) {

        if (loadMore) {
          responseRequestModelList.addAll(response.result?.responseRequestModelList ?? []);
        } else {
          responseRequestModelList = response.result?.responseRequestModelList ?? [];
        }

        currentPage = (response.result?.currentPage ?? 1) + 1;
        lastPage = (response.result?.lastPage ?? 1);
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed getResponsesMyRequest: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> getResponseRequestById({required int responseId}) async {
    detailsResponseRequestModel = null;
    _toggleLoading();
    try {
      final response = await _myRequestsUserService.getResponseRequestById(responseId: responseId);
      if (response != null) {
        detailsResponseRequestModel = response;
      }else{
        ToastHelper.showInfo('لا يوجد رد');
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed getResponseRequestById: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }
  
}
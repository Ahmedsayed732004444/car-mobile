
import 'package:car_mediator_mobile/core/services/vendor/response_request_service.dart';
import 'package:car_mediator_mobile/models/response_request_model.dart';
import 'package:flutter/material.dart';

import '../../helpers/helpers.dart';
import '../../helpers/toast_helper.dart';

class ResponseRequestProvider extends ChangeNotifier{

  final ResponseRequestService _responseRequestService;
  ResponseRequestModel? detailsResponseRequestModel;

   List<ResponseRequestModel> responseRequestModelList = [];

  ResponseRequestProvider(this._responseRequestService);

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

  Future<void> refreshGetMyResponseRequests() async {
    resetPagination();
    await getMyResponseRequests();
  }

  Future<void> getMyResponseRequests({bool loadMore = false}) async {
    _toggleLoading();
    try {
      final response = await _responseRequestService.getMyResponseRequests(page: currentPage);
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
      Helper.logDebug('$runtimeType ---> Failed getMyResponseRequests: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> detailsResponseRequest({required int responseId}) async {
    detailsResponseRequestModel = null;
    _toggleLoading();
    try {
      final result = await _responseRequestService.detailsResponseRequest(responseId: responseId);
      if (result != null) detailsResponseRequestModel = result;

    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed getAllNewRequests: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

}

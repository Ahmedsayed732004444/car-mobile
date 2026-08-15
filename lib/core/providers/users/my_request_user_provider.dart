
import 'package:flutter/material.dart';

import '../../../models/request_model.dart';
import '../../../models/response_request_model.dart';
import '../../helpers/helpers.dart';
import '../../helpers/toast_helper.dart';
import '../../services/user/my_requests/my_request_user_service.dart';

class MyRequestUserProvider extends ChangeNotifier {
  final MyRequestsUserService _myRequestsUserService;

  ResponseRequestResultModel? updateMyRequestResultModel;

  List<RequestModel> requestModelList = [];
  RequestModel? detailsMyRequestModel;

  MyRequestUserProvider(this._myRequestsUserService);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _isLoadingUpdate = false;
  bool get isLoadingUpdate => _isLoadingUpdate;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  void _toggleLoadingUpdate() {
    _isLoadingUpdate = !_isLoadingUpdate;
    notifyListeners();
  }

  int currentPage = 1;
  int lastPage = 1;

  bool get hasMore => currentPage <= lastPage;

  void resetPagination(){
    requestModelList.clear();
    currentPage = 1;
    lastPage = 1;
  }

  Future<void> refreshGetMyRequests() async {
    resetPagination();
    await getMyRequests();
  }

  String statusMyRequestSelected = 'open';
  void changeStatusMyRequest(String value) async {
    statusMyRequestSelected = value;
    notifyListeners();
  }

  Future<void> getMyRequests({bool loadMore = false}) async {
    _toggleLoading();
    try {
      final response = await _myRequestsUserService.getMyRequests(page: currentPage);
      if (response != null) {

        if (loadMore) {
          requestModelList.addAll(response.result?.requestModelList ?? []);
        } else {
          requestModelList = response.result?.requestModelList ?? [];
        }

        currentPage = (response.result?.currentPage ?? 1) + 1;
        lastPage = (response.result?.lastPage ?? 1);
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed getMyRequests: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> getMyRequestById({required int requestId }) async {
    detailsMyRequestModel = null;
    _toggleLoading();
    try {
      detailsMyRequestModel = await _myRequestsUserService.getMyRequestById(requestId: requestId);
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed getMyRequestById: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> updateResponseRequest({required Map<String, dynamic> body, required String status}) async {
    updateMyRequestResultModel = null;
    _toggleLoadingUpdate();
    try {
      final _response = await _myRequestsUserService.updateResponseRequest(
          body: body);

      if(_response != null && _response.success){
        statusMyRequestSelected = status;
        
        final index = requestModelList.indexWhere((element) => element.requestId == body['id']);
        if (index != -1) {
          requestModelList[index] = requestModelList[index].copyWith(requestStatus: status);
        }
        if (detailsMyRequestModel != null && detailsMyRequestModel!.requestId == body['id']) {
          detailsMyRequestModel = detailsMyRequestModel!.copyWith(requestStatus: status);
        }
        notifyListeners();
        
        ToastHelper.showSuccess(_response.message ?? '');
      }else{
        ToastHelper.showError(_response?.message ?? '');
      }

    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed updateResponseRequest: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoadingUpdate();
    }
  }

}
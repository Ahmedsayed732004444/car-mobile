
import 'dart:io';

import 'package:car_mediator_mobile/core/services/vendor/new_request_service.dart';
import 'package:car_mediator_mobile/features/vendor/home/screens/home_vendor_page.dart';
import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../models/request_eligible_vendor_model.dart';
import '../../helpers/helpers.dart';
import '../../helpers/toast_helper.dart';
import '../../utils/constants/enumeration.dart';

class NewRequestVendorProvider extends ChangeNotifier{
  final NewRequestService _newRequestService;

  final ImagePicker _picker = ImagePicker();

  List<RequestEligibleVendorModel> requestEligibleVendorModelList  = [];
  RequestEligibleVendorModel? detailsNewRequestsModel;
  List<File> filesList = [];

  NewRequestVendorProvider(this._newRequestService);

  ResponseRequestAvailabilityEnum responseRequestAvailability = ResponseRequestAvailabilityEnum.available;

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
    requestEligibleVendorModelList.clear();
    currentPage = 1;
    lastPage = 1;
  }

  void changeResponseRequestAvailability(ResponseRequestAvailabilityEnum value){
    responseRequestAvailability = value;
    notifyListeners();
  }

  Future<void> refreshGetAllNewRequests() async {
    resetPagination();
    await getAllNewRequests();
  }

  Future<void> getAllNewRequests({bool loadMore = false}) async {
    _toggleLoading();
    try {
      final response = await _newRequestService.getAllNewRequests(page: currentPage);
      if (response != null) {

        if (loadMore) {
          requestEligibleVendorModelList.addAll(response.result?.requestEligibleVendorModelList ?? []);
        } else {
          requestEligibleVendorModelList = response.result?.requestEligibleVendorModelList ?? [];
        }

        currentPage = (response.result?.currentPage ?? 1) + 1;
        lastPage = (response.result?.lastPage ?? 1);
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed getAllNewRequests: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> detailsNewRequests({required int requestId}) async {
    detailsNewRequestsModel = null;
    _toggleLoading();
    try {
      final result = await _newRequestService.detailsNewRequests(requestId: requestId);
      if (result != null) detailsNewRequestsModel = result;

    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed getAllNewRequests: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> sendResponseRequest(BuildContext context, {required Map<String, String> body}) async {
    _toggleLoading();
    try {
      final response = await _newRequestService.sendResponseRequest(body: body, files: filesList);
      if (response != null && response.success){
        filesList.clear();
        navigationPushAndRemoveUntil(context, const HomeVendorPage());
        ToastHelper.showSuccess(response.message);
      }else{
        ToastHelper.showError(response?.message ?? '');
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed sendResponseRequest: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> pickImages() async {
    final List<XFile>? pickedFiles = await _picker.pickMultiImage(imageQuality: 80);

    if (pickedFiles != null && pickedFiles.isNotEmpty) {
      filesList = pickedFiles.map((e) => File(e.path)).toList();
      notifyListeners();
    }
  }

  void removeImage(int index){
    filesList.removeAt(index);
    notifyListeners();
  }
}
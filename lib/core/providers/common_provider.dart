
import 'package:car_mediator_mobile/core/services/shared/common_service.dart';
import 'package:flutter/material.dart';

import '../helpers/helpers.dart';
import '../helpers/toast_helper.dart';

class CommonProvider extends ChangeNotifier{
  final CommonService _service;

  CommonProvider(this._service);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  Future<void> complaintVendorService(BuildContext context,{required Map<String, dynamic> body}) async {
    _toggleLoading();
    try {
      final response = await _service.complaintVendorService(body: body);
      if (response != null) {
        if(response['success'] ?? false){
          Navigator.pop(context);
          ToastHelper.showSuccess(response['message'] ?? '');
        }else{
          ToastHelper.showError(response['message'] ?? '');
        }
      }else{
        ToastHelper.showError('لم يتم الإرسال بنجاح');
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed complaintVendorService: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

}
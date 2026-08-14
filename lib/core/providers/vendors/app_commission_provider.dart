
import 'dart:io';

import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:flutter/material.dart';

import '../../../features/vendor/home/screens/home_vendor_page.dart';
import '../../../models/category_model.dart';
import '../../data_sources/remote/api_endpoints.dart';
import '../../data_sources/remote/api_service.dart';
import '../../errors/api_exceptions.dart';
import '../../helpers/helpers.dart';
import '../../helpers/toast_helper.dart';
import '../../utils/constants/enumeration.dart';

class AppCommissionProvider extends ChangeNotifier {
  final ApiService _apiService;

  CategoryModel? categoryModelSelected;

  File? invoiceTransferBankImageSelected;

  AppCommissionProvider(this._apiService);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  void selectedCategory(CategoryModel? selection) {
    print(selection?.commissionType ?? '');
    print(selection?.commission ?? '');
    categoryModelSelected = selection;
    notifyListeners();
  }

  double commissionFees = 0;
  void calculateCommission(double price) {
    if (categoryModelSelected != null) {
      if (categoryModelSelected?.commissionType == CommissionTypeEnum.rate.name){
        commissionFees = price * (categoryModelSelected?.commission ?? 0);
      }else{
        commissionFees = (categoryModelSelected?.commission ?? 0);
      }
    }
    notifyListeners();
  }

  void changeInvoiceTransferBankImage(File? file) {
    invoiceTransferBankImageSelected = file;
    notifyListeners();
  }

  Future<void> payAppCommission(BuildContext context, Map<String, String> body) async {
    _toggleLoading();
    try {

      List<File> _files = [];
      _files.add(invoiceTransferBankImageSelected!);
      final response = await _apiService.uploadFiles(ApiEndpoints.payAppCommission, fields: body, files: _files);
      if(response != null){
        if(response['success']){
          navigationPush(context, HomeVendorPage());
          ToastHelper.showSuccess(response['message']);
        }else{
          ToastHelper.showError(response['message']);
        }
      }

    } on ValidationException catch (e) {
      final allErrorsText = e.errors
          .values
          .expand((list) => list)
          .join('\n');
      ToastHelper.showError(allErrorsText);
    } on ApiException catch (e) {
      ToastHelper.showError(e.message);
      debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed payAppCommission: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

}



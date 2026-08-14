
import 'dart:io';

import 'package:car_mediator_mobile/features/shared/cache/init_cache.dart';
import 'package:car_mediator_mobile/models/category_model.dart';
import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:flutter/material.dart';

import '../../../models/city_model.dart';
import '../../../models/user_model.dart';
import '../../data_sources/remote/api_endpoints.dart';
import '../../data_sources/remote/api_service.dart';
import '../../errors/api_exceptions.dart';
import '../../helpers/helpers.dart';
import '../../helpers/toast_helper.dart';

class RegisterVendorProvider extends ChangeNotifier{
  final ApiService _apiService;

  UserResponseModel? userResponseModel;
  CityModel? selectedCity;
  List<CategoryModel>? selectedCategoriesList = [];

  File? selectedCommercialRecordImage;

  RegisterVendorProvider(this._apiService);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  void changeCity(CityModel? model) {
    selectedCity = model;
    notifyListeners();
  }

  void changeCategories(List<CategoryModel>? list) {
    selectedCategoriesList = list ?? [];
    notifyListeners();
  }

  void changeSelectedCommercialRecordImage(File? file) {
    selectedCommercialRecordImage = file;
    notifyListeners();
  }

  Future<void> registerVendor(BuildContext context, Map<String, String> body) async {
    userResponseModel = null;
    _toggleLoading();
    try {

      List<File> _files = [];
      _files.add(selectedCommercialRecordImage!);
      final response = await _apiService.uploadFiles(ApiEndpoints.registerVendor, fields: body, files: _files, isGuest: true);
      userResponseModel = UserResponseModel.fromJson(response);
      if(userResponseModel != null){
        if(userResponseModel!.success == true){

          navigationPushAndRemoveUntil(context, InitCache(userRole: null,));
          ToastHelper.showSuccess(userResponseModel!.message);
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
      Helper.logDebug('$runtimeType ---> Failed checkEligibleVendors: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Map<String, String> _buildRegisterVendorBody() {
    return {};
  }

}
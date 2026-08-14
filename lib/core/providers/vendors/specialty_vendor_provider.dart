import 'package:car_mediator_mobile/core/providers/cache_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/category_model.dart';
import '../../../models/city_model.dart';
import '../../../models/specialty_vendor_model.dart';
import '../../../models/vendor_brand_car_model.dart';
import '../../helpers/helpers.dart';
import '../../helpers/toast_helper.dart';
import '../../services/vendor/specialty_vendor_service.dart';

class SpecialtyVendorProvider extends ChangeNotifier {
  final SpecialtyVendorService _service;

  List<CategoryModel>? selectedCategoriesList = [];
  List<CityModel>? selectedCitiesList = [];

  SpecialtyVendorResponseModel? specialtyVendorResponseModel;
  VendorBrandCarResponseModel? vendorBrandCarResponseModel;

  SpecialtyVendorProvider(this._service);

  bool _isLoading = false;
  bool _isLoadingRefresh = false;
  bool get isLoadingRefresh => _isLoadingRefresh;
  bool get isLoading => _isLoading;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  void _toggleLoadingRefresh() {
    _isLoadingRefresh = !_isLoadingRefresh;
    notifyListeners();
  }

  void changeCategories(List<CategoryModel>? list) {
    selectedCategoriesList = list ?? [];
    notifyListeners();
  }

  void changeCities(List<CityModel>? list) {
    selectedCitiesList = list ?? [];
    notifyListeners();
  }

  Future<void> getCategoriesSpecialtyVendor(BuildContext context) async {
    specialtyVendorResponseModel = null;
    _toggleLoadingRefresh();
    try {
      final result = await _service.getCategoriesSpecialtyVendor();
      if (result != null) {
        specialtyVendorResponseModel = result;
        selectedCategoriesList = context
            .read<CacheProvider>()
            .categoriesList
            .where((element) =>
                result.specialtyVendorModel?.categoriesSpecialty
                    .contains(element.id) ??
                false)
            .toList();
      }
    } catch (e) {
      Helper.logDebug(
          '$runtimeType ---> Failed getCategoriesSpecialtyVendor: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoadingRefresh();
    }
  }

  Future<void> updateCategorySpecialtyVendor() async {
    _toggleLoading();
    try {
      final result = await _service.updateCategorySpecialtyVendor(body: {
        'categoriesIds': selectedCategoriesList?.map((e) => e.id).toList(),
      });

      if(result != null){
        (result.success ?? false)
            ? ToastHelper.showSuccess(result.message ?? '')
            : ToastHelper.showError(result.message ?? '');
      }

    } catch (e) {
      Helper.logDebug(
          '$runtimeType ---> Failed updateCategorySpecialtyVendor: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> getVendorCities(BuildContext context) async {
    specialtyVendorResponseModel = null;
    _toggleLoadingRefresh();
    try{
      final result = await _service.getVendorCities();
      if(result != null){
        specialtyVendorResponseModel = result;
        selectedCitiesList = context
            .read<CacheProvider>()
            .citiesList
            .where((element) => result.specialtyVendorModel?.cities
            .contains(element.id) ?? false)
            .toList();
      }
    } catch (e) {
      Helper.logDebug(
          '$runtimeType ---> Failed getVendorCities: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoadingRefresh();
    }
  }

  Future<void> updateVendorCities() async {
    _toggleLoading();
    try {
      final result = await _service.updateVendorCities(body: {
        'citiesIds': selectedCitiesList?.map((e) => e.id).toList(),
      });
      if(result != null){
        (result.success ?? false)
            ? ToastHelper.showSuccess(result.message ?? '')
            : ToastHelper.showError(result.message ?? '');
      }
    } catch (e) {
      Helper.logDebug(
          '$runtimeType ---> Failed updateVendorCities: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> getVendorBrandsCar(BuildContext context) async {
    vendorBrandCarResponseModel = null;
    _toggleLoadingRefresh();
    try{
      vendorBrandCarResponseModel = await _service.getVendorBrandsCar();
    } catch (e) {
      Helper.logDebug(
          '$runtimeType ---> Failed getVendorBrandsCar: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoadingRefresh();
    }
  }
}

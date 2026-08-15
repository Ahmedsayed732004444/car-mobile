import 'dart:convert';
import 'dart:io';

import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
import 'package:car_mediator_mobile/core/providers/dynamic_form_provider.dart';
import 'package:car_mediator_mobile/core/services/user/requests/request_service.dart';
import 'package:car_mediator_mobile/core/utils/context_utils.dart';
import 'package:car_mediator_mobile/core/utils/dialogUtils.dart';
import 'package:car_mediator_mobile/features/user/home/screens/home_user_page.dart';
import 'package:car_mediator_mobile/models/request_model.dart';
import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/brand_car_model.dart';
import '../../../models/category_model.dart';
import '../../../models/city_model.dart';
import '../../errors/empty_response_exception.dart';
import '../../helpers/helpers.dart';
import '../cache_provider.dart';

class CreateOrderProvider extends ChangeNotifier {
  final RequestService _requestService;

  CategoryModel? categorySelectedModel;
  BrandCarModel? brandSelectedModel;
  CityModel? myCitySelectedModel;

  RequestResultModel? checkEligibleVendorsResult;
  RequestResultModel? confirmOrderRequestResult;
  RequestResultModel? confirmShippingRequestResult;

  List<CityModel>? selectedCitiesRequestList = [];
  List<BrandCarModel> selectedBrandsList = [];

  bool isCategoryHasBrand = false;
  String? descriptionRequest;
  String? partNameRequest;
  String? carNameRequest;
  String? messageCheckEligibleVendorsResult = '';

  // constructor provider
  CreateOrderProvider(this._requestService) {
    brandSelectedModel = null;
    selectedBrandsList = [];
    final context = ContextUtils.globalContext;
    if (context != null) {
      context.read<DynamicFormProvider>().disposeControllers();
    }
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  void setCategorySelected(CategoryModel catModel) {
    categorySelectedModel = catModel;
    notifyListeners();
  }

  void setIsCategoryHasBrand(BuildContext context, int catId) {
    isCategoryHasBrand = context
        .read<CacheProvider>()
        .categoryHasBrandFieldsList
        .any((element) => element.categoryId == catId);
    notifyListeners();
  }

  void selectedBrand(BrandCarModel? model) {
    brandSelectedModel = model;
    selectedBrandsList = model != null ? [model] : [];
    notifyListeners();
  }

  void changeSelectedBrands(List<BrandCarModel> list) {
    selectedBrandsList = list;
    brandSelectedModel = list.isNotEmpty ? list.first : null;
    notifyListeners();
  }

  void selectedMyCity(CityModel? model) {
    myCitySelectedModel = model;
    notifyListeners();
  }

  void changeCitiesRequest(List<CityModel>? list) {
    selectedCitiesRequestList = list ?? [];
    notifyListeners();
  }

  Future<void> checkEligibleVendors() async {
    checkEligibleVendorsResult = null;
    messageCheckEligibleVendorsResult = '';
    _toggleLoading();
    try {
      final _response = await _requestService.checkEligibleVendors(
          body: _buildCheckEligibleVendorsBody());

      _buildResponseCheckEligibleVendors(_response);
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed checkEligibleVendors: ${e}');
      messageCheckEligibleVendorsResult = e.toString();
    } finally {
      _toggleLoading();
    }
  }

  Map<String, dynamic> _buildCheckEligibleVendorsBody() {
    return {
      'categoryId': categorySelectedModel?.id ?? 0,
      'brandId': selectedBrandsList.isNotEmpty
          ? selectedBrandsList.map((e) => e.id).toList()
          : (brandSelectedModel?.id != null ? [brandSelectedModel!.id] : null),
      'citiesIdsScope': selectedCitiesRequestList?.map((e) => e.id).toList(),
    };
  }

  void _buildResponseCheckEligibleVendors(RequestResultModel? response) {
    if (response != null) {
      checkEligibleVendorsResult = response;
      messageCheckEligibleVendorsResult = checkEligibleVendorsResult?.message;
    }
  }

  Future<void> confirmOrderRequest(BuildContext context) async {
    confirmOrderRequestResult = null;
    messageCheckEligibleVendorsResult = '';
    _toggleLoading();
    try {
      final _response = await _requestService.confirmOrderRequest(
          body: _buildConfirmOrderRequestBody(context),
          files: _buildFilesListConfirmOrder(context));

      _buildConfirmOrderRequestResponse(context,_response);
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed checkEligibleVendors: ${e}');
      messageCheckEligibleVendorsResult = e.toString();
    } finally {
      _toggleLoading();
    }
  }

  Map<String, String> _buildConfirmOrderRequestBody(BuildContext context) {
    final _dynamicFormProvider = context.read<DynamicFormProvider>();

    Map<String, String> _body = {
      'categoryId': (categorySelectedModel?.id ?? 0).toString(),
      'customerCityId': (myCitySelectedModel?.id ?? 0).toString(),
      'description': descriptionRequest ?? '',
      'partName': partNameRequest ?? '',
      'carName': carNameRequest ?? '',
      'citiesIdsScope': jsonEncode(selectedCitiesRequestList?.map((e) => e.id).toList()),
      'brandId': selectedBrandsList.isNotEmpty
          ? jsonEncode(selectedBrandsList.map((e) => e.id).toList())
          : (brandSelectedModel?.id != null ? brandSelectedModel!.id.toString() : ''),
    };

    Map<String, String> _customFields = {};
    _dynamicFormProvider.controllersMap.entries.forEach((entry) {
      _customFields[entry.key] = _dynamicFormProvider.getValue(entry.key);
    });

    _dynamicFormProvider.valuesMap.entries.forEach((entry) {
      if(!_dynamicFormProvider.isFileByFieldName(context, entry.key)){
        _customFields[entry.key] = entry.value;
      }
    });

    _body['customFields'] = jsonEncode(_customFields);

    debugPrint('_body===========' + jsonEncode(_body));
    return _body;
  }

  List<File> _buildFilesListConfirmOrder(BuildContext context) {
    final _dynamicFormProvider = context.read<DynamicFormProvider>();

    List<File> _files = [];
    _dynamicFormProvider.valuesMap.entries.forEach((entry) {
      if(_dynamicFormProvider.isFileByFieldName(context, entry.key)){
        _files.add(File(entry.value));
      }
    });

    return _files;
  }

  void _buildConfirmOrderRequestResponse(BuildContext context, RequestResultModel? response){
    if (response != null) {
      confirmOrderRequestResult = response;
      messageCheckEligibleVendorsResult = confirmOrderRequestResult?.message;
      if(response.success){
        navigationPushAndRemoveUntil(context, HomeUserPage());
        ToastHelper.showSuccess(confirmOrderRequestResult?.message ?? '');
      }
    }
  }

  Future<void> ConfirmShippingRequest(BuildContext context,{required Map<String, dynamic> body}) async {
    confirmShippingRequestResult = null;
    _toggleLoading();
    try {
      final response = await _requestService.confirmShippingRequest(
          body: body);
      if(response?.success ?? false){
        DialogUtils().showConfirmDialog(context, message: response?.message ?? '', confirm: () async {
          _toggleLoading();
          final _res = await _requestService.confirmPriceShippingRequest(
              body: {
                'id': response?.result?.shippingRequestId ?? 0
              });
          if(_res?.success ?? false){
            navigationPushAndRemoveUntil(context, HomeUserPage());
            ToastHelper.showSuccess(response?.message ?? '');
          }else{
            ToastHelper.showError(response?.message ?? '');
            _toggleLoading();
          }
        });
      }else{
        ToastHelper.showError(response?.message ?? '');
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed checkEligibleVendors: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

}

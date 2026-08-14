import 'package:car_mediator_mobile/core/errors/api_exceptions.dart';
import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
import 'package:car_mediator_mobile/core/providers/auth_provider.dart';
import 'package:car_mediator_mobile/core/utils/constants/enumeration.dart';
import 'package:car_mediator_mobile/core/utils/context_utils.dart';
import 'package:car_mediator_mobile/models/city_model.dart';
import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../features/user/home/screens/home_user_page.dart';
import '../../features/vendor/home/screens/home_vendor_page.dart';
import '../../models/ads_banner_model.dart';
import '../../models/brand_car_model.dart';
import '../../models/category_has_brand_field_model.dart';
import '../../models/category_model.dart';
import '../../models/custom_field_model.dart';
import '../services/shared/cache_service.dart';
import '../helpers/helpers.dart';
import '../utils/connection_utils.dart';

class CacheProvider extends ChangeNotifier {
  final CacheService _cacheService;

  List<CityModel> citiesList = [];
  List<BrandCarModel> brandsCarsList  = [];
  List<CategoryModel> categoriesList  = [];
  List<CategoryHasBrandFieldModel> categoryHasBrandFieldsList  = [];
  List<CustomFieldModel> customFieldsList  = [];
  List<AdsBannerModel> adsBannersList  = [];

  final CityModel selectAllCites = CityModel(
    id: -1,
    cityNameAr: 'اختيار الكل',
    cityNameEn: 'Select All',
  );

  CacheProvider(this._cacheService);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  Future<void> refreshCache({required String? userRole}) async {
    _toggleLoading();

    try {
      await ContextUtils.globalContext?.read<AuthProvider>().getCurrentUser();
      if(! await ConnectionUtils.hasInternetConnection()){
        ToastHelper.showError('الرجاء التحقق من اتصالك بالإنترنت.');
        await _loadDataFromCache();
        _navigationToHomePage(userRole);
         // _toggleLoading();
        return;
      }

      await _cacheService.fetchAndCacheData();
      await _loadDataFromCache();
      _navigationToHomePage(userRole);


    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed to refresh cache: $e');
      await _loadDataFromCache();
      _navigationToHomePage(userRole);
    }
  }

  void _navigationToHomePage (String? userRole){
    if(userRole == UserRoleEnum.vendor.name){
      navigationPush(ContextUtils.globalContext, const HomeVendorPage());
    } else{
      navigationPush(ContextUtils.globalContext, const HomeUserPage());
    }
  }


  Future<void> _loadDataFromCache() async {
    citiesList.clear();
    brandsCarsList.clear();
    categoriesList.clear();
    categoryHasBrandFieldsList.clear();
    customFieldsList.clear();
    adsBannersList.clear();

    citiesList  = _cacheService.getCachedCities();
    brandsCarsList  = _cacheService.getCachedBrandsCars();
    final categoriesListTemp = _cacheService.getCachedCategories();
    for (var element in categoriesListTemp) {
      if(element.active != CategoryStatusEnum.Inactive.name){
        categoriesList.add(element);
      }
    }
    categoryHasBrandFieldsList  = _cacheService.getCachedCategoryBrandFields();
    customFieldsList  = _cacheService.getCachedCustomFields();
    adsBannersList  = _cacheService.getCachedAdsBanners();
    notifyListeners();
  }

  List<CustomFieldModel> getCustomFieldsByCategoryId(int catId) => customFieldsList
      .where((element) => element.categoryId == catId)
      .toList();


}

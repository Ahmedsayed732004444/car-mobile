import 'package:car_mediator_mobile/core/adapters/brand_car_entity.dart';
import 'package:car_mediator_mobile/core/adapters/category_has_brand_field_entity.dart';
import 'package:car_mediator_mobile/core/adapters/city_entity.dart';
import 'package:car_mediator_mobile/core/adapters/custom_field_entity.dart';
import 'package:car_mediator_mobile/core/data_sources/local/cache_helper.dart';
import 'package:car_mediator_mobile/core/data_sources/remote/api_endpoints.dart';
import 'package:car_mediator_mobile/core/data_sources/remote/api_service.dart';
import 'package:car_mediator_mobile/core/errors/api_exceptions.dart';
import 'package:car_mediator_mobile/models/category_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../models/ads_banner_model.dart';
import '../../../models/brand_car_model.dart';
import '../../../models/category_has_brand_field_model.dart';
import '../../../models/city_model.dart';
import '../../../models/custom_field_model.dart';
import '../../adapters/ads_banner_entity.dart';
import '../../adapters/category_entity.dart';
import '../../helpers/toast_helper.dart';
import '../../utils/constants/enumeration.dart';

class CacheService {
  final ApiService _apiService;
  bool _isSyncing = false;

  CacheService(this._apiService);

  // Check if we need to sync data with the server
  Future<void> fetchAndCacheData() async {
    // prevent repetition
    if (_isSyncing) return;
    _isSyncing = true;

    try {
      final response = await _apiService.postData(
          ApiEndpoints.checkCacheUpdates,
          body: _getAllLastUpdatesBodyRequest(),
          isGuest: true);

      if (response?['success'] == true) {
        final dataList = response?['result']?['dataList'] as Map<String, dynamic>?;
        final lastUpdateTimes = response?['result']?['lastUpdateTimesList'] as Map<String, dynamic>?;

        await _processCacheData(dataList, lastUpdateTimes);
      }
    } on ValidationException catch (e) {
      rethrow;
    } on ApiException catch (e) {
      ToastHelper.showError(e.message);
      debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
    } finally {
      _isSyncing = false;
    }
  }

  Map<String, dynamic> _getAllLastUpdatesBodyRequest() {
    return {
      'cities_last_update_at': CacheHelper.getCacheLastUpdateTime('cities_last_update_at'),
      'brands_cars_last_update_at':
          CacheHelper.getCacheLastUpdateTime('brands_cars_last_update_at'),
      'categories_last_update_at':
          CacheHelper.getCacheLastUpdateTime('categories_last_update_at'),
      'category_has_brand_field_last_update_at':
          CacheHelper.getCacheLastUpdateTime('category_has_brand_field_last_update_at'),
      'custom_fields_last_update_at': CacheHelper.getCacheLastUpdateTime('custom_fields_last_update_at'),
      'ads_banners_last_update_at': CacheHelper.getCacheLastUpdateTime('ads_banners_last_update_at'),
    };
  }

  Future<void> _processCacheData(Map<String, dynamic>? dataList, Map<String, dynamic>? lastUpdateTimes) async {
    if (dataList != null) {
      await Future.wait([
        if(dataList.containsKey(EntityNameCacheStaticDataEnum.cities.value))
        _cacheGeneralData<CityEntity>(
            dataList[EntityNameCacheStaticDataEnum.cities.value] ?? [],
            CityEntity.fromJson,
            CacheHelper.cacheCities),

        if(dataList.containsKey(EntityNameCacheStaticDataEnum.brandsCars.value))
        _cacheGeneralData<BrandCarEntity>(
            dataList[EntityNameCacheStaticDataEnum.brandsCars.value] ?? [],
            BrandCarEntity.fromJson,
            CacheHelper.cacheBrandsCars),

        if(dataList.containsKey(EntityNameCacheStaticDataEnum.categories.value))
        _cacheGeneralData<CategoryEntity>(
            dataList[EntityNameCacheStaticDataEnum.categories.value] ?? [],
            CategoryEntity.fromJson,
            CacheHelper.cacheCategories),

        if(dataList.containsKey(EntityNameCacheStaticDataEnum.categoryHasBrandField.value))
        _cacheGeneralData<CategoryHasBrandFieldEntity>(
            dataList[EntityNameCacheStaticDataEnum.categoryHasBrandField.value] ?? [],
            CategoryHasBrandFieldEntity.fromJson,
            CacheHelper.cacheCategoryBrandFields),

        if(dataList.containsKey(EntityNameCacheStaticDataEnum.customFields.value))
        _cacheGeneralData<CustomFieldEntity>( dataList[EntityNameCacheStaticDataEnum.customFields.value] ?? [],
            CustomFieldEntity.fromJson,
            CacheHelper.cacheCustomFields),

        if(dataList.containsKey(EntityNameCacheStaticDataEnum.adsBanners.value))
        _cacheGeneralData<AdsBannerEntity>( dataList[EntityNameCacheStaticDataEnum.adsBanners.value] ?? [],
            AdsBannerEntity.fromJson,
            CacheHelper.cacheAdsBanners),
      ]);
      }

    // update last update times
    await CacheHelper.cacheLastUpdateTimestamps(lastUpdateTimes ?? {});
  }

  //---------------------- Helper methods for cache static data -----------------------------------

  Future<void> _cacheGeneralData<T>(
      List<dynamic> jsonList,
      T Function(Map<String, dynamic>) fromJson,
      Future<void> Function(List<T>) cacheFunction) async {
    final entities = jsonList.map((e) => fromJson(e)).toList();
    await cacheFunction(entities);
  }

  //---------------------- Helper methods for get cached static data -----------------------------------
  List<CityModel> getCachedCities() {
    return CacheHelper.getCachedCities()
        .map((e) => CityModel.fromJson(e.toJson()))
        .toList();
  }

  List<BrandCarModel> getCachedBrandsCars() {
    return CacheHelper.getCachedBrandsCars()
        .map((e) => BrandCarModel.fromJson(e.toJson()))
        .toList();
  }

  List<CategoryModel> getCachedCategories() {
    return CacheHelper.getCachedCategories()
        .map((e) => CategoryModel.fromJson(e.toJson()))
        .toList();
  }

  List<CategoryHasBrandFieldModel> getCachedCategoryBrandFields() {
    return CacheHelper.getCachedCategoryBrandFields()
        .map((e) => CategoryHasBrandFieldModel.fromJson(e.toJson()))
        .toList();
  }

  List<CustomFieldModel> getCachedCustomFields() {
    return CacheHelper.getCachedCustomFields()
        .map((e) => CustomFieldModel.fromJson(e.toJson()))
        .toList();
  }

  List<AdsBannerModel> getCachedAdsBanners() {
    return CacheHelper.getCachedAdsBanners()
        .map((e) => AdsBannerModel.fromJson(e.toJson()))
        .toList();
  }
}

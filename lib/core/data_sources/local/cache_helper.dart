import 'package:car_mediator_mobile/core/adapters/brand_car_entity.dart';
import 'package:car_mediator_mobile/core/adapters/category_has_brand_field_entity.dart';
import 'package:car_mediator_mobile/core/adapters/city_entity.dart';
import 'package:car_mediator_mobile/core/adapters/custom_field_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../adapters/ads_banner_entity.dart';
import '../../adapters/category_entity.dart';

class CacheHelper {
  // Box names
  static const String _citiesBox = 'cities_box';
  static const String _brandsBox = 'brand_car_box';
  static const String _categoriesBox = 'category_box';
  static const String _categoryBrandFieldsBox = 'category_has_brand_field_box';
  static const String _customFieldsBox = 'custom_field_box';
  static const String _adsBannersBox = 'ads_banners_box';
  static const String _generalAppBox = 'general_app_box';

  static const String _current_user_model_key = 'current_user_model_key';

  static const String _suffixLastUpdateKey = '_last_update_at';

  static const String lastUpdateTimestampsMapKey = 'last_update_timestamps_map_key';

  // initialize hive in main
  static Future<void> init() async {
    await Hive.initFlutter();
    // Register all adapters
    Hive.registerAdapter(CityEntityAdapter());
    Hive.registerAdapter(BrandCarEntityAdapter());
    Hive.registerAdapter(CategoryEntityAdapter());
    Hive.registerAdapter(CategoryHasBrandFieldEntityAdapter());
    Hive.registerAdapter(CustomFieldEntityAdapter());
    Hive.registerAdapter(AdsBannerEntityAdapter());
    // Open all boxes
    await Future.wait([
      Hive.openBox(_generalAppBox),
      Hive.openBox<CityEntity>(_citiesBox),
      Hive.openBox<BrandCarEntity>(_brandsBox),
      Hive.openBox<CategoryEntity>(_categoriesBox),
      Hive.openBox<CategoryHasBrandFieldEntity>(_categoryBrandFieldsBox),
      Hive.openBox<CustomFieldEntity>(_customFieldsBox),
      Hive.openBox<AdsBannerEntity>(_adsBannersBox),
    ]);
  }
 /// save data to a general app box
  static Future<void> _saveDataToAppBox<T>(String key, T value) async {
    try {
      await Hive.box(_generalAppBox).put(key, value);
    } catch (e) {
      print('saveDataToAppBox ---> Error saving data: $e');
    }
  }
  /// get data from a general app box
  static T? _getDataFromAppBox<T>(String key) {
    try {
      return Hive.box(_generalAppBox).get(key) as T?;
    } catch (e) {
      print('getDataFromAppBox ---> Error getting data: $e');
      return null;
    }
  }
  /// delete from a general app box
  static Future<void> _deleteDataFromAppBox(String key) async {
    try {
      await Hive.box(_generalAppBox).delete(key);
    } catch (e) {
      print('deleteDataFromAppBox ---> Error deleting data: $e');
    }
  }

  /// Generic method to save a list of items to a box
  static Future<void> _saveItemsByAdapter<T>(String boxName, List<T> items) async {
    final box = Hive.box<T>(boxName);
    await box.clear();
    await box.addAll(items);
  }

  /// Generic method to get all items from a box
  static List<T> _getAllItemsByAdapter<T>(String boxName) {
    return Hive.box<T>(boxName).values.toList();
  }

  //------------- cache last update times map ------------------
  static Future<void> cacheLastUpdateTimestamps(Map<String, dynamic> timestamps) async {
    for (var entry in timestamps.entries) {
      await _saveDataToAppBox<String>(entry.key + _suffixLastUpdateKey, entry.value);
    }
  }
  static String? getCacheLastUpdateTime(String key) {
      return _getDataFromAppBox<String>(key);
  }

 //------------- cache static data ------------------
  // Cities
  static Future<void> cacheCities(List<CityEntity> cities) async {
    await _saveItemsByAdapter<CityEntity>(_citiesBox, cities);
  }

  static List<CityEntity> getCachedCities() {
    return _getAllItemsByAdapter<CityEntity>(_citiesBox);
  }

  // brands car
  static Future<void> cacheBrandsCars(List<BrandCarEntity> brands) async {
    await _saveItemsByAdapter<BrandCarEntity>(_brandsBox, brands);
  }

  static List<BrandCarEntity> getCachedBrandsCars() {
    return _getAllItemsByAdapter<BrandCarEntity>(_brandsBox);
  }

  // categories
  static Future<void> cacheCategories(List<CategoryEntity> categories) async {
    await _saveItemsByAdapter<CategoryEntity>(_categoriesBox, categories);
  }

  static List<CategoryEntity> getCachedCategories() {
    return _getAllItemsByAdapter<CategoryEntity>(_categoriesBox);
  }

  // category Has Brand Field
  static Future<void> cacheCategoryBrandFields(List<CategoryHasBrandFieldEntity> fields) async {
    await _saveItemsByAdapter<CategoryHasBrandFieldEntity>(_categoryBrandFieldsBox, fields);
  }

  static List<CategoryHasBrandFieldEntity> getCachedCategoryBrandFields() {
    return _getAllItemsByAdapter<CategoryHasBrandFieldEntity>(_categoryBrandFieldsBox);
  }

  // custom fields
  static Future<void> cacheCustomFields(List<CustomFieldEntity> fields) async {
    await _saveItemsByAdapter<CustomFieldEntity>(_customFieldsBox, fields);
  }

  static List<CustomFieldEntity> getCachedCustomFields() {
    return _getAllItemsByAdapter<CustomFieldEntity>(_customFieldsBox);
  }

  // ads banners
  static Future<void> cacheAdsBanners(List<AdsBannerEntity> banners) async {
    await _saveItemsByAdapter<AdsBannerEntity>(_adsBannersBox, banners);
  }

  static List<AdsBannerEntity> getCachedAdsBanners() {
    return _getAllItemsByAdapter<AdsBannerEntity>(_adsBannersBox);
  }

  //------------------- current users data ------------------
  static Future<void> cacheCurrentUserData(Map<String, dynamic> data) async {
    await _saveDataToAppBox<Map<String, dynamic>>(_current_user_model_key, data);
  }

  static Map<String, dynamic>? getCachedCurrentUserData() {
    final rawData = _getDataFromAppBox(_current_user_model_key);
    return  rawData != null ? Map<String, dynamic>.from(rawData) : null;
  }

  static Future<void> deleteCurrentUserData() async {
    return await _deleteDataFromAppBox(_current_user_model_key);
  }

}
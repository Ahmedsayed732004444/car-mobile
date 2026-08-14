
import '../../../models/specialty_vendor_model.dart';
import '../../../models/vendor_brand_car_model.dart';
import '../../data_sources/remote/api_endpoints.dart';
import '../../data_sources/remote/api_service.dart';
import '../base_service.dart';

class SpecialtyVendorService extends BaseService {
  final ApiService _apiService;

  SpecialtyVendorService(this._apiService);

  Future<SpecialtyVendorResponseModel?> getCategoriesSpecialtyVendor() async {
    return getService<SpecialtyVendorResponseModel>(
      apiService: _apiService,
      endpoint: ApiEndpoints.getCategoriesSpecialtyVendor,
      fromJson: (json) => SpecialtyVendorResponseModel.fromJson(json),
    );
  }

  Future<SpecialtyVendorResponseModel?> updateCategorySpecialtyVendor({required Map<String, dynamic> body}) async {
    return postService<SpecialtyVendorResponseModel>(
      apiService: _apiService,
      endpoint: ApiEndpoints.updateCategorySpecialtyVendor,
      body: body,
      fromJson: (json) => SpecialtyVendorResponseModel.fromJson(json),
    );
  }

  Future<SpecialtyVendorResponseModel?> getVendorCities() async {
    return getService<SpecialtyVendorResponseModel>(
      apiService: _apiService,
        endpoint: ApiEndpoints.getVendorCitiesVendor,
      fromJson: (json) => SpecialtyVendorResponseModel.fromJson(json),
    );
  }

  Future<SpecialtyVendorResponseModel?> updateVendorCities({required Map<String, dynamic> body}) async {
    return postService<SpecialtyVendorResponseModel>(
      apiService: _apiService,
      endpoint: ApiEndpoints.updateVendorCitiesVendor,
      body: body,
      fromJson: (json) => SpecialtyVendorResponseModel.fromJson(json),
    );
  }

  Future<VendorBrandCarResponseModel?> getVendorBrandsCar() async {
    return getService<VendorBrandCarResponseModel>(
      apiService: _apiService,
      endpoint: ApiEndpoints.getVendorBrandsCar,
      fromJson: (json) => VendorBrandCarResponseModel.fromJson(json),
    );
  }

}
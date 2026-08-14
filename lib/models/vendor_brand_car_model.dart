import '../core/helpers/helpers.dart';

class VendorBrandCarResponseModel {
  final bool success;
  final String message;
  final List<VendorBrandCarModel>? vendorBrandCarModelList;

  const VendorBrandCarResponseModel({
    this.success = false,
    this.message = '',
    this.vendorBrandCarModelList ,
  });

  factory VendorBrandCarResponseModel.fromJson(Map<String, dynamic>? json) {
    return VendorBrandCarResponseModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      vendorBrandCarModelList: (json?['result'] == null || json?['result'] is! List) ? [] : List<VendorBrandCarModel>.from((json?['result']).map((e) => VendorBrandCarModel.fromJson(e)).toList()),
    );
  }
}

class VendorBrandCarModel {

  final int categoryId;
  final bool isReceiveAllBrandCars;
  final List<int> brandIds;

  const VendorBrandCarModel({
    this.categoryId = 0,
    this.isReceiveAllBrandCars = true,
    this.brandIds = const [],
  });

  factory VendorBrandCarModel.fromJson(Map<String, dynamic>? json) {
    return VendorBrandCarModel(
      categoryId: json?['category_id'] ?? 0,
      isReceiveAllBrandCars: Helper.isBoolean(json?['is_receive_all_brand_cars']),
      brandIds: (json?['brand_ids'] as List<dynamic>?)?.map((e) => int.parse(e.toString())).toList() ?? [],
    );
  }
}



class SpecialtyVendorResponseModel {
  final bool success;
  final String message;
  final SpecialtyVendorModel? specialtyVendorModel;

  const SpecialtyVendorResponseModel({
    this.success = false,
    this.message = '',
    this.specialtyVendorModel ,
  });

  factory SpecialtyVendorResponseModel.fromJson(Map<String, dynamic>? json) {
    return SpecialtyVendorResponseModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      specialtyVendorModel: json?['result'] == null ? null : SpecialtyVendorModel.fromJson(json?['result']),
    );
  }
}

class SpecialtyVendorModel {

  final List<int> categoriesSpecialty;
  final List<int> cities;

  const SpecialtyVendorModel({
    this.categoriesSpecialty = const [],
    this.cities = const [],
  });

  factory SpecialtyVendorModel.fromJson(Map<String, dynamic>? json) {
    return SpecialtyVendorModel(
      categoriesSpecialty: (json?['categoriesSpecialty'] as List<dynamic>?)?.map((e) => int.parse(e.toString())).toList() ?? [],
      cities: (json?['cities'] as List<dynamic>?)?.map((e) => int.parse(e.toString())).toList() ?? [],
    );
  }
}



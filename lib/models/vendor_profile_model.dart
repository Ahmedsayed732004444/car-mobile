import 'vendor_review_model.dart';

class VendorProfileResponseModel {
  final bool success;
  final String message;
  final VendorProfileResult? result;

  const VendorProfileResponseModel({
    this.success = false,
    this.message = '',
    this.result,
  });

  factory VendorProfileResponseModel.fromJson(Map<String, dynamic>? json) {
    return VendorProfileResponseModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      result: json?['result'] == null ? null : VendorProfileResult.fromJson(json?['result']),
    );
  }
}

class VendorProfileResult {
  final VendorProfileModel vendor;
  final List<VendorReviewModel> reviews;
  final int reviewsCurrentPage;
  final int reviewsLastPage;

  VendorProfileResult({
    this.vendor = const VendorProfileModel(),
    this.reviews = const [],
    this.reviewsCurrentPage = 1,
    this.reviewsLastPage = 1,
  });

  factory VendorProfileResult.fromJson(Map<String, dynamic>? json) {
    return VendorProfileResult(
      vendor: json?['vendor'] != null ? VendorProfileModel.fromJson(json?['vendor']) : const VendorProfileModel(),
      reviews: _parseReviews(json?['reviews']?['data']),
      reviewsCurrentPage: json?['reviews']?['current_page'] ?? 1,
      reviewsLastPage: json?['reviews']?['last_page'] ?? 1,
    );
  }

  static List<VendorReviewModel> _parseReviews(dynamic result) {
    if (result == null || result is! List) return [];
    return List<VendorReviewModel>.from(result.map((e) => VendorReviewModel.fromJson(e)).toList());
  }
}

class VendorProfileModel {
  final int id;
  final int userId;
  final String companyName;
  final String description;
  final double rating;
  final String logo;
  final int totalReviews;
  final String memberSince;
  final String commercialRecord;
  final int totalResponses;

  const VendorProfileModel({
    this.id = 0,
    this.userId = 0,
    this.companyName = '',
    this.description = '',
    this.rating = 0.0,
    this.logo = '',
    this.totalReviews = 0,
    this.memberSince = '',
    this.commercialRecord = '',
    this.totalResponses = 0,
  });

  factory VendorProfileModel.fromJson(Map<String, dynamic>? json) {
    return VendorProfileModel(
      id: json?['id'] ?? 0,
      userId: json?['user_id'] ?? 0,
      companyName: json?['company_name'] ?? '',
      description: json?['description'] ?? '',
      rating: double.tryParse(json?['rating']?.toString() ?? '0') ?? 0.0,
      logo: json?['logo'] ?? '',
      totalReviews: json?['total_reviews'] ?? 0,
      memberSince: json?['member_since'] ?? '',
      commercialRecord: json?['commercial_record'] ?? '',
      totalResponses: json?['total_responses'] ?? 0,
    );
  }
}


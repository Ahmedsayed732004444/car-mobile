class VendorReviewModel {
  final int id;
  final double rating;
  final String review;
  final String createdAt;
  final String userName;
  final String userLogo;

  const VendorReviewModel({
    this.id = 0,
    this.rating = 0.0,
    this.review = '',
    this.createdAt = '',
    this.userName = '',
    this.userLogo = '',
  });

  factory VendorReviewModel.fromJson(Map<String, dynamic>? json) {
    return VendorReviewModel(
      id: json?['id'] ?? 0,
      rating: double.tryParse(json?['rating']?.toString() ?? '0') ?? 0.0,
      review: json?['review'] ?? '',
      createdAt: json?['created_at']?.toString().split('T')[0] ?? '',
      userName: json?['user_name'] ?? '',
      userLogo: json?['user_logo'] ?? '',
    );
  }
}

import 'package:flutter/material.dart';
import '../data_sources/remote/api_service.dart';
import '../../models/vendor_profile_model.dart';
import '../../models/vendor_review_model.dart';
import '../helpers/toast_helper.dart';
import '../utils/connection_utils.dart';
import '../utils/dialogUtils.dart';

class VendorProfileProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _isSubmitting = false;
  bool get isSubmitting => _isSubmitting;

  VendorProfileModel? vendor;
  List<VendorReviewModel> reviewsList = [];
  int _currentPage = 1;
  int _lastPage = 1;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  void _toggleSubmitting() {
    _isSubmitting = !_isSubmitting;
    notifyListeners();
  }

  Future<void> fetchVendorProfile(BuildContext context, int vendorId, {bool refresh = false}) async {
    if (!await ConnectionUtils.hasInternetConnection()) {
      DialogUtils().showNoInternetDialog(context);
      return;
    }

    if (refresh) {
      _currentPage = 1;
      reviewsList.clear();
      vendor = null;
    }

    if (_currentPage > _lastPage) return;

    if (refresh) _toggleLoading();

    try {
      final response = await ApiService().getData(
        'user/vendor-profiles/$vendorId?page=$_currentPage',
      );

      final resModel = VendorProfileResponseModel.fromJson(response);

      if (resModel.success && resModel.result != null) {
        vendor = resModel.result!.vendor;
        reviewsList.addAll(resModel.result!.reviews);
        _lastPage = resModel.result!.reviewsLastPage;
        _currentPage++;
      } else {
        ToastHelper.showError(resModel.message);
      }
    } catch (e) {
      ToastHelper.showError(e.toString());
    } finally {
      if (refresh) _toggleLoading();
    }
  }

  Future<bool> submitReview(BuildContext context, int vendorId, int requestId, double rating, String review) async {
    if (!await ConnectionUtils.hasInternetConnection()) {
      DialogUtils().showNoInternetDialog(context);
      return false;
    }

    _toggleSubmitting();
    try {
      final response = await ApiService().postData(
        'user/vendor-profiles/$vendorId/rate',
        body: {
          'request_id': requestId,
          'rating': rating,
          'review': review,
        },
      );

      if (response != null && response['success'] == true) {
        ToastHelper.showSuccess(response['message'] ?? 'تم التقييم بنجاح');
        
        // Refresh the profile to get the new review and updated rating
        _currentPage = 1;
        reviewsList.clear();
        await fetchVendorProfile(context, vendorId, refresh: true);
        return true;
      } else {
        ToastHelper.showError(response?['message'] ?? 'حدث خطأ');
        return false;
      }
    } catch (e) {
      ToastHelper.showError(e.toString());
      return false;
    } finally {
      _toggleSubmitting();
    }
  }
}

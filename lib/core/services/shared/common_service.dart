
import 'package:car_mediator_mobile/core/data_sources/remote/api_service.dart';
import 'package:flutter/cupertino.dart';

import '../../data_sources/remote/api_endpoints.dart';
import '../../errors/api_exceptions.dart';
import '../../helpers/toast_helper.dart';

class CommonService {
  final ApiService _apiService;

  CommonService(this._apiService);

  // create post request

  Future<dynamic> complaintVendorService({required Map<String, dynamic> body}) async {
    try {
      return await _apiService.postData(
        ApiEndpoints.complaintVendorService,
        body: body,);
    } on ApiException catch (e) {
      ToastHelper.showError(e.message);
      debugPrint('API Error: ${e.message}, StatusCode: ${e.statusCode}');
      return null;
    }
  }


}

import 'package:flutter/material.dart';

import '../../models/notification_model.dart';
import '../helpers/helpers.dart';
import '../helpers/toast_helper.dart';
import '../services/shared/notification_service.dart';

class NotificationProvider extends ChangeNotifier {
  final NotificationService _service;

  List<NotificationModel> notificationModelList = [];

  int lastMessageId = 0;

  NotificationProvider(this._service);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  int currentPage = 1;
  int lastPage = 1;

  bool get hasMore => currentPage <= lastPage;

  void resetPagination(){
    notificationModelList.clear();
    currentPage = 1;
    lastPage = 1;
  }

  Future<void> getNotifications({  bool loadMore = false}) async {
    _toggleLoading();
    try {
      final response = await _service.getNotifications(page: currentPage);
      if (response != null) {

        if (loadMore) {
          notificationModelList.addAll(response.result?.notificationModelList ?? []);
        } else {
          notificationModelList = response.result?.notificationModelList ?? [];
        }

        currentPage = (response.result?.currentPage ?? 1) + 1;
        lastPage = (response.result?.lastPage ?? 1);
      }
    } catch (e) {
      Helper.logDebug('$runtimeType ---> Failed getNotifications: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> refreshGetNotifications() async {
    resetPagination();
    await getNotifications();
  }

}
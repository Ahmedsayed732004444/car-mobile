import 'package:flutter/material.dart';
import '../services/shared/notification_service.dart';

class NotificationBadgeProvider extends ChangeNotifier {
  final NotificationService _service;

  Map<String, int> unreadCounts = {
    'customer_requests': 0,
    'company_responses': 0,
    'conversations': 0,
  };

  NotificationBadgeProvider(this._service);

  int getCount(String category) {
    return unreadCounts[category] ?? 0;
  }

  Future<void> fetchUnreadCounts() async {
    debugPrint('🔔 Fetching notification unread counts from backend...');
    final counts = await _service.getUnreadCounts();
    debugPrint('🔔 Received unread counts: $counts');
    if (counts != null) {
      unreadCounts = counts;
      notifyListeners();
    }
  }

  Future<void> markCategoryRead(String category) async {
    unreadCounts[category] = 0;
    notifyListeners();

    final updated = await _service.markCategoryRead(category);
    if (updated != null) {
      unreadCounts = updated;
      notifyListeners();
    }
  }

  void updateCountFromRealtime(String category, int count) {
    unreadCounts[category] = count;
    notifyListeners();
  }

  void incrementCategory(String category) {
    unreadCounts[category] = (unreadCounts[category] ?? 0) + 1;
    notifyListeners();
  }
}

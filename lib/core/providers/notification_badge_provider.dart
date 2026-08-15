import 'dart:async';
import 'package:flutter/material.dart';
import '../data_sources/local/secure_storage.dart';
import '../services/shared/notification_service.dart';

class NotificationBadgeProvider extends ChangeNotifier {
  final NotificationService _service;
  Timer? _pollingTimer;

  Map<String, int> unreadCounts = {
    'customer_requests': 0,
    'company_responses': 0,
    'conversations': 0,
  };

  Map<String, Map<int, int>> entityUnreadCounts = {
    'conversations': {},
    'customer_requests': {},
    'company_responses': {},
  };

  NotificationBadgeProvider(this._service);

  void startRealTimePolling() {
    _pollingTimer?.cancel();
    fetchUnreadCounts();
    _pollingTimer = Timer.periodic(const Duration(seconds: 4), (_) async {
      final loggedIn = await SecureStorage.isLoggedIn();
      if (loggedIn) {
        await fetchUnreadCounts();
      } else {
        stopRealTimePolling();
      }
    });
  }

  void stopRealTimePolling() {
    _pollingTimer?.cancel();
    _pollingTimer = null;
  }

  int getCount(String category, {int? entityId}) {
    if (entityId != null) {
      return entityUnreadCounts[category]?[entityId] ?? 0;
    }
    // Main section count from outside:
    // Sum up all unread entity counts for this section if any exist
    final entityMap = entityUnreadCounts[category];
    if (entityMap != null && entityMap.isNotEmpty) {
      int sum = 0;
      entityMap.forEach((_, count) {
        if (count > 0) sum += count;
      });
      return sum;
    }
    return unreadCounts[category] ?? 0;
  }

  int getEntityCount(String category, int entityId) {
    return entityUnreadCounts[category]?[entityId] ?? 0;
  }

  Future<void> fetchUnreadCounts() async {
    final rawData = await _service.getRawUnreadCountsData();
    if (rawData != null) {
      _parseRawData(rawData);
      notifyListeners();
    }
  }

  void _parseRawData(Map<String, dynamic> data) {
    // 1. Parse Section Totals
    if (data['sections'] is Map) {
      final sections = data['sections'] as Map;
      sections.forEach((key, value) {
        if (value is num) {
          unreadCounts[key.toString()] = value.toInt();
        }
      });
    } else {
      data.forEach((key, value) {
        if (value is num) {
          unreadCounts[key] = value.toInt();
        }
      });
    }

    // 2. Parse Entity Breakdown
    if (data['entities'] is Map) {
      final entities = data['entities'] as Map;
      entities.forEach((secKey, secValue) {
        if (secValue is Map) {
          final Map<int, int> itemMap = {};
          secValue.forEach((entId, count) {
            final parsedId = int.tryParse(entId.toString());
            if (parsedId != null && count is num) {
              itemMap[parsedId] = count.toInt();
            }
          });
          entityUnreadCounts[secKey.toString()] = itemMap;
        }
      });
    }
  }

  Future<void> markEntityRead({required String section, required int entityId}) async {
    // Optimistic local update
    if (entityUnreadCounts[section] != null) {
      final currentEntityCount = entityUnreadCounts[section]?[entityId] ?? 0;
      if (currentEntityCount > 0) {
        entityUnreadCounts[section]?[entityId] = 0;
        unreadCounts[section] = (unreadCounts[section] ?? 0) - currentEntityCount;
        if ((unreadCounts[section] ?? 0) < 0) unreadCounts[section] = 0;
        notifyListeners();
      }
    }

    final rawData = await _service.markEntityRead(section: section, entityId: entityId);
    if (rawData != null) {
      _parseRawData(rawData);
      notifyListeners();
    }
  }

  Future<void> markCategoryRead(String category) async {
    unreadCounts[category] = 0;
    entityUnreadCounts[category]?.clear();
    notifyListeners();

    final updated = await _service.markCategoryRead(category);
    if (updated != null) {
      unreadCounts = updated;
      notifyListeners();
    }
  }

  void incrementEntityCategory(String category, int entityId) {
    entityUnreadCounts[category] ??= {};
    entityUnreadCounts[category]![entityId] = (entityUnreadCounts[category]![entityId] ?? 0) + 1;
    unreadCounts[category] = (unreadCounts[category] ?? 0) + 1;
    notifyListeners();
  }

  void clearAll() {
    stopRealTimePolling();
    unreadCounts = {
      'customer_requests': 0,
      'company_responses': 0,
      'conversations': 0,
    };
    entityUnreadCounts = {
      'conversations': {},
      'customer_requests': {},
      'company_responses': {},
    };
    notifyListeners();
  }
}

import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CustomerShippingInfoStorage {
  static const _storage = FlutterSecureStorage();
  static const _key = 'customer_shipping_info';

  /// حفظ بيانات الزبون
  static Future<void> save({
    required String name,
    required String phone,
    required String address,
    double? lat,
    double? lng,
  }) async {
    final data = jsonEncode({
      'name': name,
      'phone': phone,
      'address': address,
      'lat': lat,
      'lng': lng,
    });
    await _storage.write(key: _key, value: data);
  }

  /// استرجاع بيانات الزبون المحفوظة
  static Future<Map<String, dynamic>?> load() async {
    final raw = await _storage.read(key: _key);
    if (raw == null) return null;
    try {
      return jsonDecode(raw) as Map<String, dynamic>;
    } catch (_) {
      return null;
    }
  }

  /// حذف البيانات المحفوظة
  static Future<void> clear() async {
    await _storage.delete(key: _key);
  }
}

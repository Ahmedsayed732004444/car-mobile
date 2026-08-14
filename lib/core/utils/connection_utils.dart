import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ConnectionUtils {
  static const List<String> _lookupAddresses = [
    'google.com',
    'cloudflare.com',
    'microsoft.com',
  ];

  static Future<bool> hasInternetConnection({
    Duration timeout = const Duration(seconds: 5),
    int successThreshold = 1,
  }) async {
    try{
      int successCount = 0;
      int completedCount = 0;
      final completer = Completer<bool>();
      final totalHosts = _lookupAddresses.length;

      // ضبط مؤقت للانتهاء الكلي
      Timer(timeout, () {
        if (!completer.isCompleted) {
          completer.complete(false);
        }
      });

      for (final host in _lookupAddresses) {
        _checkHost(host, timeout).then((success) {
          if (completer.isCompleted) return;

          completedCount++;
          if (success) {
            successCount++;
            // على الاقل واحد ينجح successThreshold = 1
            if (successCount >= successThreshold) {
              completer.complete(true);
              return;
            }
          }
          // إذا اكتملت جميع الطلبات ولم نصل للعتبة المطلوبة
          if (completedCount == totalHosts) {
            completer.complete(false);
          }
        }).catchError((_) {
          // معالجة الأخطاء دون التأثير على العملية
          completedCount++;
          if (completedCount == totalHosts && !completer.isCompleted) {
            completer.complete(false);
          }
        });
      }

      return completer.future;
    } catch(e){
      return false;
    }
  }

  static Future<bool> _checkHost(String host, Duration timeout) async {
    try {
      // 1. DNS Lookup
      final addresses = await InternetAddress.lookup(host)
          .timeout(timeout, onTimeout: () => []);

      if (addresses.isNotEmpty && addresses.first.rawAddress.isNotEmpty) {
        return true;
      }

      // 2. HTTP HEAD
      final response = await http.head(Uri.https(host, '/'))
          .timeout(timeout);

      return response.statusCode == 200;
    } on SocketException catch (_) {
      debugPrint("not connect");
      return false;
    } catch (e) {
      debugPrint('Host $host unreachable: $e');
      return false;
    }
  }
}
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

import '../../errors/api_exceptions.dart';
import '../../helpers/helpers.dart';

class ApiClient {
  final String baseUrl;
  final http.Client _client;

  static const Duration _defaultTimeout = Duration(seconds: 30 );
  static const int _maxRetries = 3;

  ApiClient({required this.baseUrl, http.Client? client})
      : _client = client ?? http.Client();

  /// Closes the underlying HTTP client and cleans up resources
  void close() {
    _client.close();
  }

  Future<dynamic> get(String path, {Map<String, String>? headers, Map<String, dynamic>? queryParams, Duration? timeout}) async {
    final uri = Uri.parse('$baseUrl$path').replace(queryParameters: queryParams);
    try {
      final response = await _withRetry<http.Response>(
            ( ) async => await _client.get(uri, headers: headers),
            timeout: timeout,
      );

      return _handleResponse(uri, response);
    } on SocketException {
      throw NetworkException('الرجاء التحقق من اتصالك بالإنترنت.');
    }
  }

  Future<dynamic> post(String path, {Map<String, String>? headers, dynamic body, Duration? timeout}) async {
    final uri = Uri.parse('$baseUrl$path');
    try {
      final bodyEncoded = jsonEncode(body);
      Helper.logDebug('post request ---> $bodyEncoded');
      final response = await _withRetry<http.Response>(
            ( ) async =>  await _client.post(uri, headers: headers, body: bodyEncoded),
            timeout: timeout,
      );

      return _handleResponse(uri, response);
    } on SocketException {
      throw NetworkException('الرجاء التحقق من اتصالك بالإنترنت.');
    }
  }

  Future<dynamic> delete(String path, {Map<String, String>? headers, Duration? timeout}) async {
    final uri = Uri.parse('$baseUrl$path');
    try {
      final response = await _withRetry<http.Response>(
            ( ) async =>  await _client.delete(uri, headers: headers),
            timeout: timeout,
      );

      return _handleResponse(uri, response);
    } on SocketException {
      throw NetworkException('الرجاء التحقق من اتصالك بالإنترنت.');
    }
  }

  Future<dynamic> multipartRequest(
    String path, {
    required Map<String, String> fields,
    List<File>? files,
    Map<String, String>? headers,
  }) async {
    final uri = Uri.parse('$baseUrl$path');
    try {
      var request = http.MultipartRequest('POST', uri);
      if (headers != null) request.headers.addAll(headers);
      request.fields.addAll(fields);
      Helper.logDebug('multipartRequest request ---> ${jsonEncode(fields)}');

      if (files != null) {
        for (var file in files) {
          request.files.add(await http.MultipartFile.fromPath(
            'images[]', // أو اسم الحقل المطلوب في الـ API
            file.path,
            filename: basename(file.path),
          ));
        }
      }

      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);
      return _handleResponse(uri, response);
    } on SocketException {
      throw NetworkException('الرجاء التحقق من اتصالك بالإنترنت.');
    }
  }

  Future<dynamic> multipartRequestSingleImage(
      String path, {
        required Map<String, String> fields,
        File? file,
        Map<String, String>? headers,
      }) async {
    final uri = Uri.parse('$baseUrl$path');
    try {
      var request = http.MultipartRequest('POST', uri);
      if (headers != null) request.headers.addAll(headers);
      request.fields.addAll(fields);
      Helper.logDebug('multipartRequest request ---> ${jsonEncode(fields)}');

      if(file !=null){
        var length = await file.length();
        var stream = http.ByteStream(file.openRead());
        var multipartFile = http.MultipartFile('image', stream, length, filename: basename(file.path));
        // add file to request
        request.files.add(multipartFile);
      }

      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);
      return _handleResponse(uri, response);
    } on SocketException {
      throw NetworkException('الرجاء التحقق من اتصالك بالإنترنت.');
    }
  }

  dynamic _handleResponse(final Uri uri, http.Response response) {
    dynamic body;
    try {
      body = json.decode(response.body);
    } catch (e) {
      body = null;
    }

    _logDebug(uri, body);

    if (response.statusCode >= 200 && response.statusCode < 300)  return body;

    switch (response.statusCode) {
      case 401:
        throw UnauthorizedException(body?['message'] ?? 'غير مصرح لك بالوصول.');
      case 403:
        throw UnauthorizedException( body?['message'] ?? 'ليس لديك الصلاحية لتنفيذ هذا الإجراء.');
      case 404:
        throw NotFoundException( body?['message'] ?? 'العنصر المطلوب غير موجود.');
      case 422:
        throw ValidationException(body?['message'] ?? 'البيانات المدخلة غير صالحة', body ?? {});
      case 429:
        throw TooManyRequestsException(body?['message'] ?? 'تم إرسال عدد كبير من الطلبات في وقت قصير. الرجاء الانتظار قليلاً ثم المحاولة مرة أخرى.');
      case 500:
        throw ServerException( 'حدث خطأ غير متوقع، يرجى المحاولة لاحقاً');
      default:
        throw UnknownApiException('حدث خطأ غير معروف. الرجاء المحاولة مرة أخرى.', response.statusCode);
    }
  }

  // --- embedded retry function ---
  // Executes a Future operation with retry and timeout logic.
  Future<T> _withRetry<T>(Future<T> Function() operation, { Duration? timeout}) async {
    int attempt = 0;
    while (true) {
      attempt++;
      try {
        // Apply timeout to the operation and execute it
        return await operation().timeout(timeout ?? _defaultTimeout);
      } catch (e) {
        // Retry only in specific cases
        if ((e is SocketException || e is TimeoutException || e is http.ClientException ) && attempt < _maxRetries) {
          Helper.logDebug("API call failed (attempt $attempt): $e. Retrying...");
          // Wait before the next retry
          await Future.delayed(const Duration(seconds: 2));
        } else {
          // If the error is of a different type (e.g. 404 from _handleResponse)
          // or we've reached the maximum number of retries, rethrow the error to end the operation.
          Helper.logDebug("API call failed permanently after $attempt attempts.");
          rethrow; // Rethrow the original error
        }
      }
    }
  }

  void _logDebug(final Uri uri, dynamic jsonResponse) {
    if (kDebugMode) {
      debugPrint('json---$uri-->$jsonResponse');
    }
  }
}

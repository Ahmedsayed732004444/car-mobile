import 'dart:io';
import 'package:provider/provider.dart';

import '../../localization/app_language_provider.dart';
import '../../utils/context_utils.dart';
import '../local/secure_storage.dart';
import 'api_client.dart';
import 'api_path.dart';

// to manage dependencies
class AppDependencies {

  Future<String> getToken() async {
    final String? token = await SecureStorage.getToken();
    return 'Bearer ${token ?? ''}';
  }

  String getLanguageCode() {
    final context = ContextUtils.globalContext;
    if (context == null) return 'ar';

    return Provider.of<AppLanguageProvider>(context, listen: false).appLocal.languageCode;
  }

  String getApiKeyGuest() {
    return "f9PF9Sjer54s2affFlQ6GWSPcrKyCF5LtX30moO3KlmLucESq1G6INaJlNJ0RQDc";
  }
}

class ApiService {
  final ApiClient _apiClient;
  final AppDependencies _dependencies;

  // Singleton Pattern
  ApiService._(this._apiClient, this._dependencies);
  static final ApiService _instance = ApiService._(
    ApiClient(baseUrl: ApiPath.baseUrl),
    AppDependencies(),
  );
  factory ApiService() => _instance;

  Future<Map<String, String>> _getHeaders({bool isGuest = false}) async {
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Accept-Language': _dependencies.getLanguageCode(),
    };

    if (isGuest) {
      headers['Api-Key-Guest'] = _dependencies.getApiKeyGuest();
    } else {

      headers['Authorization'] = await _dependencies.getToken();
    }
    return headers;
  }
  /// Closes the underlying HTTP client and cleans up resources
  void close() {
    _apiClient.close();
  }

  Future<dynamic> getData(String path, {Map<String, dynamic>? queryParams, bool isGuest = false}) async {
    final headers = await _getHeaders(isGuest: isGuest);
    return await _apiClient.get(path, headers: headers, queryParams: queryParams);
  }

  Future<dynamic> postData(String path, {required Map<String, dynamic> body, bool isGuest = false}) async {
    final headers = await _getHeaders(isGuest: isGuest);
    return await _apiClient.post(path, headers: headers, body: body);
  }

  Future<dynamic> deleteData(String path) async {
    final headers = await _getHeaders();
    return await _apiClient.delete(path, headers: headers);
  }

  Future<dynamic> uploadFiles(String path, {required Map<String, String> fields, List<File>? files, bool isGuest = false}) async {
    final headers = await _getHeaders(isGuest: isGuest);
    headers.remove('Content-Type'); // مكتبة http تضيفها تلقائياً

    return await _apiClient.multipartRequest(path, headers: headers, fields: fields, files: files );
  }

  Future<dynamic> uploadSingleFile(String path, {required Map<String, String> fields, File? file, bool isGuest = false}) async {
    final headers = await _getHeaders(isGuest: isGuest);
    headers.remove('Content-Type'); // مكتبة http تضيفها تلقائياً

    return await _apiClient.multipartRequestSingleImage(path, headers: headers, fields: fields, file: file );
  }
}

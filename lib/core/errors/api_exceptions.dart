abstract class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException(this.message, [this.statusCode]);

  @override
  String toString() => message;
}

class NetworkException extends ApiException {
  NetworkException(String message) : super('خطأ في الشبكة: $message');
}

class UnauthorizedException extends ApiException {
  UnauthorizedException(String message) : super(message, 401);
}

class NotFoundException extends ApiException {
  NotFoundException(String message) : super(message, 404);
}

class ValidationException extends ApiException {

  final Map<String, dynamic> errors;

  ValidationException(String message, this.errors) : super(message, 422);
  /*
  // استخدام الدالة المساعدة للحصول على الخطأ الخاص بهذا الحقل
            e.getFirstErrorFor('email'),
  */
  String? getFirstErrorFor(String field) {
    if (errors.containsKey(field) && (errors[field] as List).isNotEmpty) {
      return (errors[field] as List).first;
    }
    return null;
  }

  Map getAllError() {
    return (errors as Map<String, dynamic>?)?.map(
          (key, value) => MapEntry(
        key,
        List<String>.from(value ?? []),
      ),
    ) ?? {};
  }
}

class TooManyRequestsException extends ApiException {
  TooManyRequestsException(String message) : super(message, 429);
}

class ServerException extends ApiException {
  ServerException(String message) : super(message, 500);
}

class UnknownApiException extends ApiException {
  UnknownApiException(String message, [int? code]) : super('خطأ غير معروف: $message', code);
}

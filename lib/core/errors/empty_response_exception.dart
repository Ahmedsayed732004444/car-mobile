
class EmptyResponseException implements Exception {
  final String message;
  EmptyResponseException([ this.message = "لم يتم استلام أي بيانات من الخادم"]);

  @override
  String toString() => message;
}
class KeyValueModel {

  final String key;
  final dynamic value;

  const KeyValueModel({
    this.key = '',
    this.value = '',
  });

  factory KeyValueModel.fromJson(Map<String, dynamic>? json) {
    return KeyValueModel(
      key: json?['key'] ?? 0,
      value: json?['value'] ?? '',
    );
  }
}
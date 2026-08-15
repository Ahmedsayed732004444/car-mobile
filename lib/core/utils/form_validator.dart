class FormValidatorUtils {

  static String? textValidator(
      String? value, {
        bool isRequired = false,
        int? minLength,
        int? maxLength,
      }) {
    if (isRequired && (value == null || value.isEmpty)) {
      return 'هذا الحقل مطلوب';
    }
    if (minLength != null && value != null && value.length < minLength) {
      return 'يجب أن يكون الطول على الأقل $minLength';
    }
    if (maxLength != null && value != null && value.length > maxLength) {
      return 'يجب أن لا يزيد الطول عن $maxLength';
    }
    return null;
  }

  static String? numberValidator(
      String? value, {
        bool isRequired = false,
      }) {
    if (isRequired && (value == null || value.isEmpty)) {
      return 'هذا الحقل مطلوب';
    }
    if (value != null && value.isNotEmpty && double.tryParse(value) == null) {
      return 'الرجاء إدخال رقم صحيح';
    }
    return null;
  }

  /// Validator (Select / Radio)
  static String? optionValidator(
      dynamic value, {
        bool isRequired = false,
      }) {
    if (isRequired && (value == null || (value is String && value.isEmpty))) {
      return 'الرجاء اختيار قيمة';
    }
    return null;
  }

  /// Validator للـ Checkbox
  static String? checkboxValidator(
      List<String>? values, {
        bool isRequired = false,
      }) {
    if (isRequired && (values == null || values.isEmpty)) {
      return 'الرجاء اختيار خيار واحد على الأقل';
    }
    return null;
  }

  static String? dateValidator(
      String? value, {
        bool isRequired = false,
      }) {
    if (isRequired && (value == null || value.isEmpty)) {
      return 'الرجاء اختيار تاريخ';
    }
    return null;
  }

  /// Validator file
  static String? fileValidator(
      String? path, {
        bool isRequired = false,
      }) {
    if (isRequired && (path == null || path.isEmpty)) {
      return 'الرجاء رفع ملف';
    }
    return null;
  }

  static String? objectValidator(Object? value) {
    if(value == null){
      return 'الحقل فارغ';
    }
    return null;
  }
 //---------------- custom validators -----------------
  static String? emailValidator(
      String? value, {
        bool isRequired = false,
      }) {
    if (isRequired && (value == null || value.isEmpty)) {
      return 'الرجاء إدخال البريد الإلكتروني';
    }
    if (value != null && value.isNotEmpty) {
      final emailRegex = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w{2,4}$');
      if (!emailRegex.hasMatch(value)) {
        return 'صيغة البريد الإلكتروني غير صحيحة';
      }
    }
    return null;
  }

  static String? phoneValidator(
      String? value, {
        bool isRequired = false,
      }) {
    if (isRequired && (value == null || value.trim().isEmpty)) {
      return 'الرجاء إدخال رقم الجوال';
    }

    if (value != null && value.trim().isNotEmpty) {
      final val = value.trim();
      final phoneRegex = RegExp(r'^(05\d{8}|5\d{8})$');

      if (!phoneRegex.hasMatch(val)) {
        return 'رقم الجوال يجب أن يكون 9 أرقام يبدأ بـ 5 (مثل: 512345678)';
      }
    }

    return null;
  }

  static String? passwordValidator(
      String? value, {
        bool isRequired = false,
        int minLength = 6,
      }) {
    if (isRequired && (value == null || value.isEmpty)) {
      return 'الرجاء إدخال كلمة المرور';
    }
    if (value != null && value.isNotEmpty && value.length < minLength) {
      return 'كلمة المرور يجب أن تكون على الأقل $minLength أحرف';
    }
    return null;
  }
}

/*
TextFormField(
  decoration: InputDecoration(labelText: "البريد الإلكتروني"),
  validator: (value) => FormValidator.emailValidator(
    value,
    isRequired: true,
  ),
);
*/
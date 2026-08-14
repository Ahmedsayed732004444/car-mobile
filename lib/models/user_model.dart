
import '../core/helpers/helpers.dart';

class UserResponseModel {
  final bool success;
  final String message;
  final Result? result;

  const UserResponseModel({
    this.success = false,
    this.message = '',
    this.result,
  });

  factory UserResponseModel.fromJson(Map<String, dynamic>? json) {
    return UserResponseModel(
      success: json?['success'] ?? false,
      message: json?['message'] ?? '',
      result: json?['result'] == null ? null : Result.fromJson(json?['result']),
    );
  }
}
class Result {
   final UserModel? user;
   final String? token;
   final int? id;

  Result({
    this.user,
    this.token = '',
    this.id = 0,
  });

   factory Result.fromJson(Map<String, dynamic>? json) {
     return Result(
       id: json?['id'] ?? 0,
       token: json?['token'] ?? '',
       user: json?['user'] == null ? null : UserModel.fromJson(json?['user']),
     );
   }
}

class UserModel {
   final int? id;
   final int? cityId;
   final String? name;
   final String? companyNameAr;
   final String? companyNameEn;
   final String? email;
   final String? phoneNumber;
   final String? tokenFcm;
   final String? logo;
   final String? aboutMe;
   final String? status;
   final String? role;
   final bool? isHidePhone;
   final String? created_at;
   final String? updated_at;
   final String? commercialRecord;
   final String? dateExpireCommercialRecord;
   final String? description;
   final String? phoneContact;
   final bool? isHidePhoneContact;

  UserModel( {
    this.id,
    this.email,
    this.name,
    this.companyNameAr,
    this.companyNameEn,
    this.logo,
    this.phoneNumber,
    this.aboutMe,
    this.tokenFcm,
    this.status,
    this.role,
    this.cityId,
    this.isHidePhone,
    this.created_at,
    this.updated_at,
    this.commercialRecord,
    this.dateExpireCommercialRecord,
    this.description,
    this.phoneContact,
    this.isHidePhoneContact,
  });

  factory UserModel.fromJson(Map<String, dynamic>? json) => UserModel(
    id: json?['id'] ?? 0,
    cityId: json?['city_id'] ?? 0,
    name: json?['name'] ?? '',
    companyNameAr: json?['company_name_ar'] ?? '',
    companyNameEn: json?['company_name_en'] ?? '',
    email: json?['email'] ?? '',
    phoneNumber: json?['phone'] ?? '',
    logo: json?['logo'] ?? '',
    aboutMe: json?['about_me'] ?? '',
    tokenFcm: json?['token_fcm'] ?? '',
    status: json?['status'] ?? '',
    role: json?['role'] ?? '',
    isHidePhone: (json?['is_hide_phone'] ?? 0) == 0 ? false : true,
    created_at: json?['created_at'] ?? '',
    updated_at: json?['updated_at'] ?? '',
    commercialRecord: json?['commercial_record'] ?? '',
    dateExpireCommercialRecord: json?['date_expire_commercial_record'] ?? '',
    description: json?['description'] ?? '',
    phoneContact: json?['phone_contact'] ?? '',
    isHidePhoneContact: Helper.isBoolean(json?['is_hide_phone_contact'] ?? ''),
  );

}

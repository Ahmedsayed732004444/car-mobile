
import 'dart:io';

import 'package:car_mediator_mobile/core/services/vendor/profile_vendor_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../features/shared/cache/init_cache.dart';
import '../../../models/user_model.dart';
import '../../../widgets/components.dart';
import '../../data_sources/local/cache_helper.dart';
import '../../helpers/helpers.dart';
import '../../helpers/toast_helper.dart';
import '../../utils/constants/enumeration.dart';
import '../auth_provider.dart';

class ProfileVendorProvider extends ChangeNotifier{
  ProfileVendorService _service;

  UserModel? profileVendorModel;
  UserResponseModel? userResponseModel;
  UserResponseModel? uploadCommercialRecordResponseModel;

  File? logo;
  File? commercialRecordFile;
  bool isHidePhoneContact = false;

  ProfileVendorProvider(this._service);

  void changeLogo(File? file) {
    logo = file;
    notifyListeners();
  }

  void changeCommercialRecordFile(File? file) {
    commercialRecordFile = file;
    notifyListeners();
  }


  bool _isLoading = false;
  bool _isLoadingRefresh = false;
  bool _isLoadingUploadCommercialRecord = false;
  bool get isLoadingRefresh => _isLoadingRefresh;
  bool get isLoading => _isLoading;
  bool get isLoadingUploadCommercialRecord => _isLoadingUploadCommercialRecord;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  void _toggleLoadingRefresh() {
    _isLoadingRefresh = !_isLoadingRefresh;
    notifyListeners();
  }

  void _toggleLoadingUploadCommercialRecord() {
    _isLoadingUploadCommercialRecord = !_isLoadingUploadCommercialRecord;
    notifyListeners();
  }

  void changeIsHidePhoneContact(bool value){
    isHidePhoneContact = value;
    notifyListeners();
  }

  Future<void> getVendorProfile() async {
    profileVendorModel = null;
    _toggleLoadingRefresh();
    try {
      profileVendorModel = await _service.getVendorProfile();
    } catch (e) {
      Helper.logDebug(
          '$runtimeType ---> Failed getVendorProfile: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoadingRefresh();
    }
  }

  Future<void> updateVendorProfile(BuildContext context, Map<String, String> body) async {
    userResponseModel = null;
    _toggleLoading();
    try {
      List<File> _files = [];
      if(logo != null)
      _files.add(logo!);

      userResponseModel = await _service.updateVendorProfile(context, body: body, files: _files,);
      if(userResponseModel != null){
        if(userResponseModel!.success == true){
          ToastHelper.showSuccess(userResponseModel!.message);
          await CacheHelper.cacheCurrentUserData({
            'name': body['companyNameAr'],
            'logo': userResponseModel?.result?.user?.logo ?? '',
            'phone': context.read<AuthProvider>().currentUseModel?.phoneNumber ?? '',
            'company_name_ar': body['companyNameAr'],
          });
          navigationPushAndRemoveUntil(context, InitCache(userRole: UserRoleEnum.vendor.name,));
        }else{
          ToastHelper.showSuccess(userResponseModel!.message);
        }
      }
    }  catch (e) {
      Helper.logDebug(
          '$runtimeType ---> Failed getVendorProfile: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoading();
    }
  }

  Future<void> uploadCommercialRecordImage(BuildContext context, Map<String, String> body) async {
    uploadCommercialRecordResponseModel = null;
    _toggleLoadingUploadCommercialRecord();
    try {
      List<File> _files = [];
      if(commercialRecordFile != null)
        _files.add(commercialRecordFile!);

      uploadCommercialRecordResponseModel = await _service.uploadCommercialRecordImage(context, body: body, files: _files,);
      if(uploadCommercialRecordResponseModel != null){
        if(uploadCommercialRecordResponseModel!.success == true){
          commercialRecordFile = null;
          ToastHelper.showSuccess(uploadCommercialRecordResponseModel!.message);
        }else{
          ToastHelper.showSuccess(uploadCommercialRecordResponseModel!.message);
        }
      }
    }  catch (e) {
      Helper.logDebug(
          '$runtimeType ---> Failed uploadCommercialRecordImage: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoadingUploadCommercialRecord();
    }
  }

}
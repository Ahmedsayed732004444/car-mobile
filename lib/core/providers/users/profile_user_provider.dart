
import 'dart:io';

import 'package:car_mediator_mobile/core/services/user/profile_user_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../features/shared/cache/init_cache.dart';
import '../../../models/user_model.dart';
import '../../../widgets/components.dart';
import '../../data_sources/local/cache_helper.dart';
import '../../helpers/helpers.dart';
import '../../helpers/toast_helper.dart';
import '../../utils/constants/enumeration.dart';
import '../bottom_navigation_bar_provider.dart';

class ProfileUserProvider extends ChangeNotifier{
  ProfileUserService _service;

  UserModel? profileUserModel;
  UserResponseModel? userResponseModel;
  UserResponseModel? uploadCommercialRecordResponseModel;

  File? logo;
  File? commercialRecordFile;
  bool isHidePhoneContact = false;

  ProfileUserProvider(this._service);

  void changeLogo(File? file) {
    logo = file;
    notifyListeners();
  }

  bool _isLoading = false;
  bool _isLoadingRefresh = false;
  bool get isLoadingRefresh => _isLoadingRefresh;
  bool get isLoading => _isLoading;

  void _toggleLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  void _toggleLoadingRefresh() {
    _isLoadingRefresh = !_isLoadingRefresh;
    notifyListeners();
  }

  void changeIsHidePhoneContact(bool value){
    isHidePhoneContact = value;
    notifyListeners();
  }

  Future<void> getUserProfile() async {
    profileUserModel = null;
    _toggleLoadingRefresh();
    try {
      profileUserModel = await _service.getUserProfile();
    } catch (e) {
      Helper.logDebug(
          '$runtimeType ---> Failed getUserProfile: ${e}');
      ToastHelper.showError(e.toString());
    } finally {
      _toggleLoadingRefresh();
    }
  }

  Future<void> updateUserProfile(BuildContext context, Map<String, String> body) async {
    userResponseModel = null;
    _toggleLoading();
    try {
      List<File> _files = [];
      if(logo != null)
      _files.add(logo!);

      userResponseModel = await _service.updateUserProfile(context, body: body, files: _files,);
      if(userResponseModel != null){
        if(userResponseModel!.success == true){
          ToastHelper.showSuccess(userResponseModel!.message);
          await CacheHelper.cacheCurrentUserData({
            'name': body['name'],
            'logo': userResponseModel?.result?.user?.logo ?? '',
          });
          context.read<BottomNavigationBarProvider>().setCurrentIndex(context, 0);
          navigationPushAndRemoveUntil(context, InitCache(userRole: UserRoleEnum.user.name,));
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

}
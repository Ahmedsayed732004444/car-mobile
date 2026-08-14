
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import 'deviceInfoUtilse.dart';


class Utils{

  static Future<File?> pickImage(ImageSource source,{double maxWidth = 800, double maxHeight = 600}) async {
    final XFile? _photo = await ImagePicker().pickImage(source: source , imageQuality: 80,maxWidth: 800 ,maxHeight: 600,);
    if(_photo != null){
      return File(_photo.path.toString() ??'');
    }
    return null;
  }

  static Future<String?> getImagePath(ImageSource source,{double maxWidth = 800, double maxHeight = 600}) async {
    final XFile? _photo = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
      maxWidth: 800,
      maxHeight: 600,
    );
    return _photo?.path ?? '';
  }

  static String currencyAmount(dynamic num,BuildContext context) {
    // return '${numberFormatting(num ?? 0)} ${context.loc.trans('currency_label')}';
    return '';
  }

  static String numberFormatting(dynamic num){
    NumberFormat numberFormat = NumberFormat.decimalPattern('en_US');
    return numberFormat.format(num);
  }

  static void shareText(BuildContext context ,String text, String url,{bool isListing = true}){
    // String data = '';
    // if(isListing){
    //   data = myLocalizations(context, 'view_this_ads') +' '+ myLocalizations(context, 'appName') +'.\n${text}\n';
    // }else{
    //   data = myLocalizations(context, 'visit')+' '+'${text}'+' '+ myLocalizations(context, 'in')  +' '+ myLocalizations(context, 'appName') +'.\n';
    // }
    //
    // Share.share(data + '${ApiPath.BASE_HOST}${url}');
  }

  // This function is triggered when the copy icon is pressed
  static Future<void> copyToClipboard(BuildContext context, String value) async {
    await Clipboard.setData(ClipboardData(text: value));
    //showSnackBar(context: context, message: 'تم نسخ رقم الحساب');
  }

  static Future<String> getPackageNameApp() async {
    // final _packageInfo = await PackageInfo.fromPlatform();
    // return _packageInfo.packageName;
    return '';
  }

  static Future<String> getAppVersion() async {
    // final _packageInfo = await PackageInfo.fromPlatform();
    // return _packageInfo.version;
    return '';
  }

  static Future<void> shareAppLink (BuildContext context) async {
    // String data = '${'أنا أستخدم'} ${myLocalizations(context, 'appName')}'+'.\n';
    // final String urlAndroid = 'https://play.google.com/store/apps/details?id=${await getPackageNameApp()}';
    // final String urlIOS = 'https://apps.apple.com/app/id\$${await getPackageNameApp()}';
    // final String appUrl = Platform.isAndroid ? urlAndroid : urlIOS;
    // Share.share(data + appUrl);
  }

  static Future<String> getApiKey() async {
    String _strKey ='Unknown';
    if(Platform.isAndroid){
      AndroidDeviceInfo info = await DeviceInfoUtils.androidDeviceInfo();
      _strKey = info.brand+'#'+info.device+'#v'+info.version.release;
    }else if(Platform.isIOS){
      IosDeviceInfo info = await DeviceInfoUtils.iosDeviceInfo();
      _strKey = info.model+'#'+info.systemName+'#v'+info.systemVersion;
    }
    return _strKey.trim();
  }

}
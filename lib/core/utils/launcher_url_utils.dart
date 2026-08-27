
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../helpers/toast_helper.dart';

class LauncherUrlUtils {

  // static Future<void> rateApp(BuildContext context) async {
  //   var url = Platform.isAndroid ? Uri.parse('https://play.google.com/store/apps/details?id=${await Utils.getPackageNameApp()}') : Uri.parse('https://apps.apple.com/app/id\$${await Utils.getPackageNameApp()}?action=write-review');
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     ToastHelper.showError('Could not launch $url');
  //   }
  // }

  static Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
  //
  // static Future<void> sendingMails(BuildContext context,String? mail) async {
  //   if(ValidationUtils.isNullOrEmpty(mail))
  //     return;
  //
  //   var url = Uri.parse("mailto:${mail}");
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     showSnackBar(context: context, message: 'Could not launch $url');
  //   }
  // }

  /// A utility method to open SMS Messenger on different devices
  /// Optionality you can add [text] message
  // static Future<void> openSMS(BuildContext context, { String? phone,String text ='', LaunchMode mode = LaunchMode.externalApplication,}) async {
  //   if(ValidationUtils.isNullOrEmpty(phone))
  //     return;
  //
  //   final String effectivePhone = Platform.isAndroid
  //       ? phone!.replaceAll('-', ' ')
  //       : phone!.replaceFirst('+', '');
  //
  //   final String effectiveText =
  //   Platform.isAndroid ? '?body=$text' : '&body=$text';
  //
  //   final String url = 'sms:$effectivePhone';
  //
  //   if (await canLaunchUrl(Uri.parse(url))) {
  //     await launchUrl(Uri.parse('$url$effectiveText'), mode: mode);
  //   } else {
  //     showSnackBar(context: context, message: 'We did not find the «SMS Messenger» application on your phone, please install it and try again»');
  //   }
  // }

  /// A utility method to open WhatsApp on different devices
  /// Optionality you can add [text] message
  static Future<void> openWhatsApp(BuildContext context,{String? phone, String? text, LaunchMode mode = LaunchMode.externalApplication,}) async {
    if(phone == null || phone.isEmpty)
      return;
 
    final String textIOS = text != null ? Uri.encodeFull('?text=$text') : '';
    final String textAndroid = text != null ? Uri.encodeFull('&text=$text') : '';
 
    final String urlIOS = 'https://wa.me/$phone$textIOS';
    final String urlAndroid = 'whatsapp://send/?phone=$phone$textAndroid';
 
    final String effectiveURL = Platform.isIOS ? urlIOS : urlAndroid;
 
    if (await canLaunchUrl(Uri.parse(effectiveURL))) {
      await launchUrl(Uri.parse(effectiveURL), mode: mode);
    } else {
      ToastHelper.showError('لم نتمكن من العثور على تطبيق واتساب في هاتفك، يرجى تثبيته والمحاولة مرة أخرى');
    }
  }

  /// A utility method to open WhatsApp on different devices
  /// Optionality you can add [text] message
  // static Future<void> openTelegram(BuildContext context,{ String? phone, String text = '', LaunchMode mode = LaunchMode.externalApplication,}) async {
  //   if(ValidationUtils.isNullOrEmpty(phone))
  //     return;
  //
  //   const String url = 'tg://msg';
  //   final String? effectiveText = text != null && text.isNotEmpty
  //       ? '&text=${Uri.encodeFull(text)}'
  //       : null;
  //
  //   if (await canLaunchUrl(Uri.parse(url))) {
  //     await launchUrl(
  //       Uri.parse('$url?to=+$phone$effectiveText'),
  //       mode: mode,
  //     );
  //   } else {
  //     showSnackBar(context: context, message: 'We did not find the «Telegram» application on your phone, please install it and try again');
  //   }
  // }
}
import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoUtils {

  // Android
  static Future<AndroidDeviceInfo> androidDeviceInfo() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    //if (Platform.isAndroid)
    AndroidDeviceInfo info = await deviceInfo.androidInfo;
    return info;
    // print(info.version.release ?? 'Unknown');
    // print(info.board);
    // print(info.bootloader);
    // print(info.brand);
    // print(info.device);

  }

  //ios
  static Future<IosDeviceInfo> iosDeviceInfo() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    //if (Platform.isIOS)
    IosDeviceInfo info = await deviceInfo.iosInfo;
    return info;
    // print(info.name);
    // print(info.systemName);
    // print(info.systemVersion ?? 'Unknown');
    // print(info.model);
    // print(info.localizedModel);
  }

  //web
  static Future<WebBrowserInfo> webBrowserInfo() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
    print('Running on ${webBrowserInfo
        .userAgent}'); // e.g. "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0"
    return webBrowserInfo;
  }
}

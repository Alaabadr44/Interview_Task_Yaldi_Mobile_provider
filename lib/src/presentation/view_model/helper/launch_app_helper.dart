// Dart imports:
import 'dart:io';

// Package imports:
import 'package:url_launcher/url_launcher.dart';

enum LaunchUrlType {
  browser('https'),
  tel('tel'),
  sms('sms'),
  mailTo('mailto'),
  ;

  final String scheme;
  const LaunchUrlType(this.scheme);
}

class LaunchAppHelper {
  Future<bool> navigateTo(LaunchUrlType schemeType, String path, {LaunchMode? mode = LaunchMode.platformDefault}) async {
    Uri uri = Uri(scheme: schemeType.scheme, path: path);
    bool isLaunch = await canLaunchUrl(uri);
    if (isLaunch) {
      await launchUrl(uri, mode: mode!);
    }
    return isLaunch;
  }

  Future<bool> navigateToWhatsapp(String phone) async {
    Uri uri = Uri.parse(url(phone));
    bool isLaunch = await canLaunchUrl(uri);
    if (isLaunch) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
    return isLaunch;
  }

  String url(String phone) {
    if (Platform.isAndroid) {
      return "https://wa.me/$phone/?text= ";
    } else {
      return "https://api.whatsapp.com/send?phone=$phone= ";
    }
  }

  // Future<bool> callNumber(String phoneNumber, {LaunchMode? mode = LaunchMode.platformDefault}) async {
  //   Uri uri = Uri(scheme: 'tel', path: phoneNumber);
  //   bool isLaunch = await canLaunchUrl(uri);
  //   if (isLaunch) {
  //     await launchUrl(uri, mode: mode!);
  //   }
  //   return isLaunch;
  // }

  // singleton
  LaunchAppHelper.init();
  static LaunchAppHelper? _instance;
  factory LaunchAppHelper() => _instance ??= LaunchAppHelper.init();
}

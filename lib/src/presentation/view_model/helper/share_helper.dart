// Package imports:
import 'package:share_plus/share_plus.dart';

class SharePlusHelper {
  static share(String text) async {
    await Share.share(text);
  }

  static Future<ShareResult> sureShare(
    String text, {
    Function()? onSuccess,
    Function()? onDismes,
    Function()? onUnavailable,
  }) async {
    return Share.share(text).then((value) {
      _actionDependOnStatus(
        value,
        onDismes: onDismes,
        onSuccess: onSuccess,
        onUnavailable: onUnavailable,
      );
      return value;
    });
  }

  static Future<ShareResult> sureShareFiles({
    required List<XFile> files,
    String? text,
    Function()? onSuccess,
    Function()? onDismes,
    Function()? onUnavailable,
  }) {
    return Share.shareXFiles(
      files,
      text: text,
    ).then((value) {
      _actionDependOnStatus(
        value,
        onDismes: onDismes,
        onSuccess: onSuccess,
        onUnavailable: onUnavailable,
      );
      return value;
    });
  }

  static _actionDependOnStatus(
    ShareResult value, {
    Function()? onSuccess,
    Function()? onDismes,
    Function()? onUnavailable,
  }) {
    if (value.status == ShareResultStatus.success) {
      onSuccess?.call();
    } else if (value.status == ShareResultStatus.dismissed) {
      onDismes?.call();
    } else if (value.status == ShareResultStatus.unavailable) {
      onUnavailable?.call();
    }
  }
}

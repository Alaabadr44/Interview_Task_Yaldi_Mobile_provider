// Flutter imports:
import 'package:flutter_application_1/src/core/services/user_service.dart';
import 'package:flutter_application_1/src/core/utils/enums.dart';
import 'package:flutter_application_1/src/core/utils/extension.dart';
import 'package:flutter/widgets.dart';

// Project imports:
import '../../../../core/config/injector.dart';
import '../../../../core/services/storage_service.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/page_controller.dart';

class SplashController implements AppPageController {
  @override
  String? get route => "";
 
  @override
  void initDependencies({BuildContext? context}) async {
 
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2), () {
        if (UserService.isExistUser) {
          context?.nextReplacementNamed(AppLocalRoute.dashboard.route);
        } else {
          context?.nextReplacementNamed(AppLocalRoute.login.route);
        }
      });
    });
  }

 
  void goTargetPage(BuildContext context) {
    final bool showOnBoarding =
        injector<StorageService>().getBool(kOnBoarding) ?? false;
    if (showOnBoarding) {
      // context.nextReplacementNamed(AppLocalRoute.mainPage.route);
    } else {
      // context.nextReplacementNamed(AppLocalRoute.onBoarding.route);
    }
  }

  void disposeController() {
    // profileBloc.close();
  }

  @override
  void disposeDependencies({BuildContext? context}) {
    disposeController();
  }
}

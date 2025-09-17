// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/view/pages/auth/login/screen/login_page.dart';

import '../../presentation/view/pages/app_business/pages/dashboard/screen/dashboard_page.dart';
import '../../presentation/view/pages/auth/login/screen/login_page.dart';
import '../../presentation/view/pages/auth/register/screen/register_page.dart';
import '../../presentation/view/pages/auth/register/screen/register_page.dart';
import '../../presentation/view/pages/splash/splash_screen.dart';
import '../utils/app_logger.dart';
import '../utils/enums.dart';
import 'service_interface.dart';

class RouterService implements ServiceInterface {
  @override
  String get name => 'Router Service';

  @override
  Future<void> initializeService() async {
    AppLogger.logDebug('$name Success initialization');
  }

  static String get initialRoute => AppLocalRoute.splash.route;

  static final routes = <String, Widget Function(BuildContext, {Object? arg})>{
    AppLocalRoute.splash.route:
        (BuildContext context, {Object? arg}) => const SplashScreen(),
    AppLocalRoute.login.route:
        (BuildContext context, {Object? arg}) => const LoginPage(),
    AppLocalRoute.register.route:
        (BuildContext context, {Object? arg}) => const RegisterPage(),

    AppLocalRoute.dashboard.route:
        (BuildContext context, {Object? arg}) => DashboardPage(),
  };
  var onGenerateRoute = (RouteSettings settings) {
    final String? name = settings.name;
    final Function(BuildContext, {Object? arg})? pageContentBuilder =
        routes[name];
    if (pageContentBuilder != null) {
      if (settings.arguments != null) {
        final Route route = MaterialPageRoute(
          settings: settings,
          builder:
              (context) => pageContentBuilder(context, arg: settings.arguments),
        );
        return route;
      } else {
        final Route route = MaterialPageRoute(
          settings: settings,
          builder: (context) => pageContentBuilder(context),
        );
        return route;
      }
    }
  };

  // Singleton
  RouterService.int();
  static RouterService? _instance;
  factory RouterService() => _instance ??= RouterService.int();
}

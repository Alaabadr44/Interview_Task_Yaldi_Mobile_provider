// Flutter imports:
// Package imports:
import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:overlay_support/overlay_support.dart';

// Project imports:
import '../../../chucker_flutter_page.dart';
import '../../core/config/injector.dart';
import '../../core/config/l10n/generated/l10n.dart';
import '../../core/config/themes/theme/theme_manager.dart';
import '../../core/services/router_service.dart';
import '../../core/services/setting_service.dart';
import '../../core/utils/enums.dart';
import '../view_model/blocs/assistance/unauthorized_notifier.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
   
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UnauthorizedNotifier>(create: (context) => injector<UnauthorizedNotifier>()),
      ],
      child: OverlaySupport.global(
        child: ScreenUtilInit(
          designSize: const Size(430, 932),
          child: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: ListenableBuilder(
              listenable: injector<SettingService>(),
              builder: (context, child) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  scrollBehavior: MyCustomScrollBehavior(),
                  locale: injector<SettingService>().localLanguage(),
                  supportedLocales: S.delegate.supportedLocales,
                  localizationsDelegates: const [
                    S.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    FormBuilderLocalizations.delegate,
                    CountryLocalizations.delegate,
                  ],
                  home: ChuckerFlutterPage(
                    child: MaterialApp(
                      navigatorObservers: [ChuckerFlutter.navigatorObserver],
                      scaffoldMessengerKey: injector<GlobalKey<ScaffoldMessengerState>>(),
                      // builder: preview.DevicePreview.appBuilder,
                      navigatorKey: injector<GlobalKey<NavigatorState>>(),
                      debugShowCheckedModeBanner: false,
                      themeAnimationDuration: const Duration(milliseconds: 250),
                      theme: injector<SettingService>().theme.setThemeData(),
                      darkTheme: injector<SettingService>().theme.setThemeData(),
                      themeMode: ThemeManager.mode,
                      locale: injector<SettingService>().localLanguage(),
                      title: S.current.appTitle,
                      localizationsDelegates: const [
                        S.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                        FormBuilderLocalizations.delegate,
                        CountryLocalizations.delegate,
                      ],
                      initialRoute:RouterService.initialRoute ,
                      onGenerateRoute: RouterService().onGenerateRoute,
                      supportedLocales: S.delegate.supportedLocales,
                      scrollBehavior: MyCustomScrollBehavior(),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.trackpad,
        PointerDeviceKind.invertedStylus,
        PointerDeviceKind.unknown,
      };
}

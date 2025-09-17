// Flutter imports:
import 'package:flutter_application_1/src/core/config/app_colors.dart';
import 'package:flutter_application_1/src/presentation/view/commbonant/app_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../../../presentation/view/common/custom_padding.dart';
import '../../../presentation/view/common/popup/overlay_alert.dart';
import '../../../presentation/view/common/popup/overlay_body_widget.dart';
import '../../../presentation/view/common/text_widget.dart';
import '../../../presentation/view_model/blocs/assistance/unauthorized_notifier.dart';
import '../../config/injector.dart';
import '../../config/themes/theme/theme_manager.dart';
import '../../services/setting_service.dart';
import '../../services/storage_service.dart';
import '../../services/user_service.dart';
import '../constant.dart';
import '../enums.dart';
import '../extension.dart';
import 'util/information_page.dart';

class ResponsiveLayout extends StatefulWidget {
  final PreferredSizeWidget? appBar;
  final Widget Function(BuildContext context, InformationPage info) builder;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final Widget? fab;
  final FloatingActionButtonLocation? fabLocation;
  final String? titleAppBar;
  final bool? isPadding;
  final bool? showBottomNavBar;
  final bool? portraitOnly;
  final bool? showAppBar;
  final bool? resizeToAvoidBottomInset;
  final bool? canPop;
  final bool maintainBodyViewPadding;
  // final VoidCallback? onBack;
  // final AppBarOption? appBarOption;
  // final List<Widget>? actions;
  final Function(BuildContext context)? onBackAllApp;
  final Function(BuildContext context)? onBackPage;
  final SystemUiOverlayStyle? systemUiOverlayStyle;
  final List<Widget>? appBarActions;
  const ResponsiveLayout({
    super.key,
    this.appBarActions,
    required this.builder,
    this.appBar,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.titleAppBar,
    this.isPadding = true,
    this.portraitOnly = false,
    this.showAppBar = false,
    this.showBottomNavBar = false,
    this.resizeToAvoidBottomInset = false,
    this.maintainBodyViewPadding = true,
    this.fab,
    // this.onBack,
    this.fabLocation,
    // this.appBarOption,
    // this.actions,
    this.canPop = true,
    this.onBackAllApp,
    this.onBackPage,
    this.systemUiOverlayStyle,
  });

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void initState() {
    super.initState();
    if (widget.portraitOnly!) {
      SettingService().theme.setPortraitMode();
    } else {
      SettingService().theme.defaultOrientationMode();
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeManager theme = SettingService().theme;
    InformationPage infoPage = InformationPage(
      screenWidth: context.sizeSide.width,
      screenHeight: context.sizeSide.height,
      bottomPadding: context.bottomPadding,
      orientation: context.orientationInfo.orientation,
      appTheme: context.theme,
      isRTL: SettingService.isRTL,
      showBottomNavBar: widget.showBottomNavBar!,
    );

    return PopScope(
      canPop: widget.canPop!,
      onPopInvoked: (didPop) {
        didPop || !widget.canPop! ? widget.onBackAllApp?.call(context) : null;
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: widget.systemUiOverlayStyle ?? theme.systemUiOverlayStyle,
        child: SafeArea(
          maintainBottomViewPadding: true,
          top: false,
          bottom: false,
          left: false,
          right: false,
          child: Scaffold(
            resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
            extendBody: true,
            extendBodyBehindAppBar: true,
            bottomNavigationBar: widget.bottomNavigationBar,
            backgroundColor: widget.backgroundColor,
            appBar:
                widget.showAppBar! || widget.appBar != null
                    ? widget.appBar ??
                        AppBar(
                          title: TextWidget(
                            text: widget.titleAppBar ?? '',
                            style: context.bodyL?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          leading:
                              widget.onBackPage != null
                                  ? InkWell(
                                    onTap: () {
                                      widget.onBackPage?.call(context);
                                    },
                                    child: const AppIconBtn(
                                      child: Icon(
                                        Icons.arrow_back_ios_new_rounded,
                                        size: 15,
                                        color: AppColors.reverseBaseColor,
                                      ),
                                    ),
                                  )
                                  : null,
                          actions: widget.appBarActions,
                        )
                    : null,
            body: BlocListener<UnauthorizedNotifier, bool>(
              bloc: context.watch<UnauthorizedNotifier>(),
              listener: (context, state) {
                if (state) {
                  OverlayAlert.notify(
                    message:
                        context
                            .read<UnauthorizedNotifier>()
                            .unauthorizedMessage ??
                        '',
                    context: context,
                    type: OverlayType.error,
                  );
                  Future.wait([
                    injector<StorageService>().remove(kUserToken),
                    injector<StorageService>().remove(kUserData),
                    UserService().initializeService(),
                  ]).then(
                    (value) => context.nextNamed(AppLocalRoute.login.route),
                  );
                }
              },
              child: SafeArea(
                maintainBottomViewPadding: widget.maintainBodyViewPadding,
                child: SizedBox(
                  height: infoPage.screenHeight,
                  width: infoPage.screenWidth,
                  child: CustomPadding(
                    top:
                        widget.isPadding!
                            ? infoPage.screenWidth *
                                (context.orientationInfo.isPortrait
                                    ? 0.03
                                    : 0.01)
                            : 0.0,
                    start:
                        widget.isPadding! ? infoPage.screenWidth * 0.03 : 0.0,
                    end: widget.isPadding! ? infoPage.screenWidth * 0.03 : 0.0,
                    bottom:
                        !widget.resizeToAvoidBottomInset!
                            ? context.viewInsets.bottom
                            : null,
                    // bottom: widget.isPadding! ? infoPage.screenHeight * (context.orientationInfo.isPortrait ? 0.03 : 0.1) : null,
                    child: Builder(
                      builder: (context) {
                        infoPage = infoPage.copyWith(context: context);
                        return widget.builder(context, infoPage);
                      },
                    ),
                  ),
                ),
              ),
            ),
            floatingActionButtonLocation: widget.fabLocation,
            floatingActionButton: widget.fab,
          ),
        ),
      ),
    );
  }
}

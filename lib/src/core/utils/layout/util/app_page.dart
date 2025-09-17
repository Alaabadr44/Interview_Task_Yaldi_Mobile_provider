// ignore_for_file: invalid_override_of_non_virtual_member

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../services/setting_service.dart';
import '../../app_logger.dart';
import '../../extension.dart';
import 'information_page.dart';

abstract class AppPage<T extends Widget> extends StatelessWidget {
  final widgetKey = GlobalKey();

  AppPage({super.key});

  Widget buildPage(BuildContext context, InformationPage info);

  void initialize() {
    AppLogger.logDebug('[AppPage] $T [initialize]');
  }

  void dispose() {
    AppLogger.logDebug('[AppPage] $T [dispose]');
  }

  void didUpdateWidget(T? oldWidget, BuildContext context) {
    AppLogger.logDebug('[AppPage] $T [UpdateDependenciesPage]');
  }

  void didChangeDependencies() {
    AppLogger.logDebug('[AppPage] $T [ChangeDependenciesPage]');
  }

  @override
  Widget build(BuildContext context) {
    return _InternalAppPage<T>(
      key: widgetKey,
      initPage: initialize,
      disposedPage: dispose,
      didChangeDependencies: didChangeDependencies,
      didUpdateWidget: didUpdateWidget,
      builderPage: buildPage,
    );
  }

  @override
  int get hashCode => super.key.hashCode;

  @override
  bool operator ==(Object other) => other.hashCode == key.hashCode;
}

class _InternalAppPage<T extends Widget> extends StatefulWidget {
  final Function initPage;
  final Function disposedPage;
  final Function(T? oldWidget, BuildContext context) didUpdateWidget;
  final Function didChangeDependencies;
  final Widget Function(BuildContext context, InformationPage info) builderPage;

  const _InternalAppPage({
    super.key,
    required this.initPage,
    required this.disposedPage,
    required this.didUpdateWidget,
    required this.didChangeDependencies,
    required this.builderPage,
  });

  @override
  State<_InternalAppPage> createState() => __InternalAppPageState<T>();
}

class __InternalAppPageState<T extends Widget> extends State<_InternalAppPage> {
  @override
  void initState() {
    widget.initPage();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    widget.didChangeDependencies();
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant _InternalAppPage oldWidget) {
    T? oldPage = (oldWidget.key as GlobalKey)
        .currentContext
        ?.findAncestorWidgetOfExactType<T>();
    widget.didUpdateWidget(oldPage, context);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    widget.disposedPage();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    InformationPage infoPage = InformationPage(
      screenWidth: context.sizeSide.width,
      screenHeight: context.sizeSide.height,
      bottomPadding: context.bottomPadding,
      orientation: context.orientationInfo.orientation,
      appTheme: context.theme,
      // appStyle: theme.appStyle,
      isRTL: SettingService.isRTL,
      showBottomNavBar: true,
    );
    return widget.builderPage(context, infoPage);
  }
}

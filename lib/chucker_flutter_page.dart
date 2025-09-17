import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'src/core/services/environment_service.dart';

class ChuckerFlutterPage extends StatefulWidget {
  final Widget child;

  const ChuckerFlutterPage({super.key, required this.child});

  @override
  State<ChuckerFlutterPage> createState() => _ChuckerFlutterPageState();
}

class _ChuckerFlutterPageState extends State<ChuckerFlutterPage> {
  String? version;

  String? packageName;

  @override
  void initState() {
    getVersion();
    super.initState();
  }

  Future<void> getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    version = '${packageInfo.version}+${packageInfo.buildNumber}';
    packageName = packageInfo.packageName;

    setState(() {});
  }

  String updateNumInRealse = "0";
  bool get showChukkerBtn => EnvironmentService.enableLogging;

  PreferredSizeWidget? get chukkerBtn {
    if (!showChukkerBtn) {
      return null;
    }
    return AppBar(
        title: ChuckerFlutter.chuckerButton,
        centerTitle: true,
        leading: const SizedBox(),
        actions: const [],
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0.0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: Column(
            children: [
              Center(
                child: Text('Version $version +$updateNumInRealse'),
              ),
              Center(
                child: Text('package $packageName'),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: EnvironmentService.isProduction
          ? AppBar(
              title: Center(
                child: Text('Version $version +$updateNumInRealse'),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
            )
          : chukkerBtn,
      body: widget.child,
    );
  }
}

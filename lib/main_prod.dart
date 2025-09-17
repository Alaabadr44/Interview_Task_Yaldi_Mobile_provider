import 'dart:async';

import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'src/core/config/environment/environment_config.dart';
import 'src/core/config/injector.dart';
import 'src/core/services/environment_service.dart';
import 'src/core/utils/app_logger.dart';
import 'src/presentation/view/app.dart';

void main() async {
  await runZonedGuarded<Future<void>>(
    () async {

      // Get environment configuration
      final config = ProdEnvironmentConfig();

      // Initialize environment service
      EnvironmentService.initialize(config);
      await initializeDependencies();

      // Configure Chucker for production environment
      ChuckerFlutter.showOnRelease = config.enableLogging;
      ChuckerFlutter.isDebugMode = config.enableLogging;

      runApp(const App());
    },
    (error, stack) {
      AppLogger.logError(error);
      AppLogger.logError(stack);

      ErrorWidget.builder = (FlutterErrorDetails details) {
        return CustomErrorWidget(details);
      };
    },
  );
}

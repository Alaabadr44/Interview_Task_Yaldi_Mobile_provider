// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dev_config.dart';
import 'prod_config.dart';

abstract class EnvironmentConfig {
  String get environment;
  String get appName;
  String get baseUrl;
  String get apiVersion;
  bool get isProduction;
  bool get enableLogging;
  bool get enableCrashlytics;
  String get appId;
  Map<String, String> get apiHeaders;
  int get connectionTimeout;
  int get receiveTimeout;
  int get sendTimeout;
  bool get enableAnalytics;
}

class Environment {
  static EnvironmentConfig get config {
    const String flavor = String.fromEnvironment('FLAVOR', defaultValue: 'dev');

    switch (flavor) {
      case 'dev':
        return DevEnvironmentConfig();
      case 'prod':
        return ProdEnvironmentConfig();
      default:
        return DevEnvironmentConfig();
    }
  }
}

class DevEnvironmentConfig extends EnvironmentConfig {
  @override
  String get environment => DevConfig.environment;

  @override
  String get appName => DevConfig.appName;

  @override
  String get baseUrl => DevConfig.baseUrl;

  @override
  String get apiVersion => DevConfig.apiVersion;

  @override
  bool get isProduction => DevConfig.isProduction;

  @override
  bool get enableLogging => DevConfig.enableLogging;

  @override
  bool get enableCrashlytics => DevConfig.enableCrashlytics;

  @override
  String get appId => DevConfig.appId;

  @override
  Map<String, String> get apiHeaders => DevConfig.apiHeaders;

  @override
  int get connectionTimeout => DevConfig.connectionTimeout;

  @override
  int get receiveTimeout => DevConfig.receiveTimeout;

  @override
  int get sendTimeout => DevConfig.sendTimeout;

  @override
  bool get enableAnalytics => DevConfig.enableAnalytics;
}

class ProdEnvironmentConfig extends EnvironmentConfig {
  @override
  String get environment => ProdConfig.environment;

  @override
  String get appName => ProdConfig.appName;

  @override
  String get baseUrl => ProdConfig.baseUrl;

  @override
  String get apiVersion => ProdConfig.apiVersion;

  @override
  bool get isProduction => ProdConfig.isProduction;

  @override
  bool get enableLogging => ProdConfig.enableLogging;

  @override
  bool get enableCrashlytics => ProdConfig.enableCrashlytics;

  @override
  String get appId => ProdConfig.appId;

  @override
  Map<String, String> get apiHeaders => ProdConfig.apiHeaders;

  @override
  int get connectionTimeout => ProdConfig.connectionTimeout;

  @override
  int get receiveTimeout => ProdConfig.receiveTimeout;

  @override
  int get sendTimeout => ProdConfig.sendTimeout;

  @override
  bool get enableAnalytics => ProdConfig.enableAnalytics;
}

// Package imports:
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _log = initialLogger();

  static Logger initialLogger() {
    // Only enable logging in debug mode for security
    if (kReleaseMode) {
      return Logger(
        printer: _NoOpPrinter(), // Disable all logging in release mode
        level: Level.nothing,
      );
    }

    return Logger(
      printer: PrettyPrinter(
        methodCount: 0, // number of method calls to be displayed
        errorMethodCount: 8, // number of method calls if stacktrace is provided
        lineLength: 120, // width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: false, // Should each log print contain a timestamp
      ),
    );
  }

  static logInfo(dynamic message) {
    if (!kReleaseMode) {
      _log.i(message);
    }
  }

  static logDebug(dynamic message) {
    if (!kReleaseMode) {
      _log.d(message);
    }
  }

  static logWarning(dynamic message) {
    if (!kReleaseMode) {
      _log.w(message);
    }
  }

  static logError(dynamic message) {
    if (!kReleaseMode) {
      _log.e(message);
    }
  }

  static logVerbose(dynamic message) {
    if (!kReleaseMode) {
      _log.t(message);
    }
  }
}

// Custom printer that does nothing (for release mode)
class _NoOpPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    return []; // Return empty list to disable logging
  }
}

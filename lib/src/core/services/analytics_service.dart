// // Project imports:
// import 'package:firebase_analytics/firebase_analytics.dart';

// import '../utils/app_logger.dart';
// import 'service_interface.dart';

// class AnalyticsService implements ServiceInterface {
//   @override
//   String get name => "Analytics Service";

//   static late final FirebaseAnalytics analytics;
//   static late final FirebaseAnalyticsObserver observer;

//   @override
//   Future<void> initializeService() async {
//     analytics = FirebaseAnalytics.instance;
//     observer = FirebaseAnalyticsObserver(analytics: analytics);
    
//     AppLogger.logDebug('$name Success initialization');
//   }

//   // singleton
//   AnalyticsService.init();
//   static AnalyticsService? _instance;
//   factory AnalyticsService() => _instance ??= AnalyticsService.init();
// }

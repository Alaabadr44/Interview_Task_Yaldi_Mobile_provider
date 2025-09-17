// // Flutter imports:
// import 'dart:async';
// import 'dart:io';

// // Package imports:
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart' show kDebugMode;
// import 'package:flutter/material.dart' show BuildContext, GlobalKey, NavigatorState;
// import 'package:overlay_support/overlay_support.dart';

// // Project imports:
// import '../../presentation/view/common/popup/overlay_alert.dart';
// import '../../presentation/view/common/popup/overlay_body_widget.dart';
// import '../config/injector.dart';
// import '../utils/app_logger.dart';
// import '../utils/enums.dart';
// import '../utils/extension.dart';
// import 'service_interface.dart';
// import 'user_service.dart';

// @pragma('vm:entry-point')
// Future<void> onBackgroundMessage(RemoteMessage message) async {}

// class FcmService implements ServiceInterface {
//   FirebaseMessaging? _firebaseMessaging;
//   String? _fcmUserToken;

//   late final bool notificationPermissionDenied;

//   StreamController<RemoteMessage>? notificationStream;

//   @override
//   Future initializeService() async {
//     await _initMessaging();
//     notificationStream ??= StreamController();
//     AppLogger.logDebug('$name Success initialization');
//   }

//   @override
//   String get name => 'FCM Service';

//   String? get fcmToken => _fcmUserToken;
//   FirebaseMessaging? get firebaseMessaging => _firebaseMessaging;

//   Future<void> _initMessaging() async {
//     try {
//       _firebaseMessaging = FirebaseMessaging.instance;
//       // _firebaseMessaging?.setAutoInitEnabled(true);
//       final bool isSupportedDevice = await _firebaseMessaging!.isSupported();

//       if (isSupportedDevice) {
//         final state = await _firebaseMessaging!.requestPermission(
//           alert: true,
//           announcement: false,
//           badge: true,
//           carPlay: false,
//           criticalAlert: false,
//           provisional: false,
//           sound: true,
//         );

//         notificationPermissionDenied = state.authorizationStatus == AuthorizationStatus.denied;
//         if (Platform.isIOS) {
//           final apnsToken = await FirebaseMessaging.instance.getAPNSToken();
//           if (apnsToken.isNotNull) {
//             await getFcmToken();
//           }
//         } else {
//           await getFcmToken();
//         }
//       }
//     } catch (e) {
//       // NotifyHelper.overlayNotify(S.current.happened_error);
//     }

//     try {
//       _firebaseMessaging?.setAutoInitEnabled(true);

//       _firebaseMessaging?.setForegroundNotificationPresentationOptions(
//         alert: true,
//         badge: true,
//         sound: true,
//       );

//       await initializeListenMethod();
//     } catch (e) {
//       // NotifyHelper.overlayNotify(S.current.happened_error);
//     }
//   }

//   Future<void> initializeListenMethod() async {
//     // FirebaseMessaging.onBackgroundMessage(onBackgroundMessage);
//     FirebaseMessaging.onMessage.listen(onForegroundMessage);
//     FirebaseMessaging.onMessageOpenedApp.listen(onMessageOpenedApp);

//     RemoteMessage? initialMessage = await _firebaseMessaging?.getInitialMessage();
//     _handleMessage(initialMessage);
//   }

//   Future<String> getFcmToken() async {
//     String newToken = await _firebaseMessaging!.getToken() ?? '';
//     if (newToken != _fcmUserToken) {
//       _fcmUserToken = newToken;
//       // UserService().updateFcmToken(newToken, notificationPermissionDenied);
//     }
//     if (kDebugMode) {
//       AppLogger.logInfo('FCM Token: $_fcmUserToken\nNotification Permission: ${!notificationPermissionDenied}');
//     }
//     return _fcmUserToken!;
//   }

//   void onMessageOpenedApp(RemoteMessage message) {
//     notificationStream?.add(message);
//     _handleMessage(message, openApp: true);
//   }

//   void onForegroundMessage(RemoteMessage message) {
//     notificationStream?.add(message);
//     AppLogger.logInfo('Notification Message: ${message.toMap()}');
//     final BuildContext? context = injector<GlobalKey<NavigatorState>>().currentState?.context;
//     if (context != null) {
//       OverlayAlert.notify(
//         message: message.notification?.body ?? '',
//         context: context,
//         type: OverlayType.notification,
//         title: message.notification?.title ?? '',
//         position: NotificationPosition.top,
//         onClick: () {
//           if (ensureUserAndNotificationIsOrder(message)) {
//             context.nextNamed(AppLocalRoute.tripDetailsScreen.route, argument: message.data['order_id']);
//           } else if (UserService.isExistUser) {
//             context.nextReplacementNamed(AppLocalRoute.notification.route);
//           }
//         },
//       );
//     }
//   }

//   void _handleMessage(RemoteMessage? message, {bool openApp = false}) {
//     final BuildContext? context = injector<GlobalKey<NavigatorState>>().currentState?.context;
//     if (context != null) {
//       if (ensureUserAndNotificationIsOrder(message)) {
//         context.nextNamed(AppLocalRoute.tripDetailsScreen.route, argument: message!.data['order_id']);
//       } else {
//         if(openApp) {
//           context.nextNamed(AppLocalRoute.mainPage.route);
//         }
//       }
//     }
//   }

//   bool ensureUserAndNotificationIsOrder(RemoteMessage? message) {
//     return UserService.isExistUser &&
//         message != null &&
//         message.data.containsKey('notify_type') &&
//         message.data.containsKey('order_id') &&
//         (message.data['notify_type'] as String).contains('order') &&
//         (message.data['order_id'] as String?).isNotNull;
//   }

//   // Singleton
//   FcmService.init();
//   static FcmService? _instance;
//   factory FcmService() => _instance ??= FcmService.init();
// }

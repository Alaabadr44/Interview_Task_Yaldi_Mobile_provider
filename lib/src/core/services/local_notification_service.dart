/* // Dart imports:

// Dart imports:
import 'dart:async';
import 'dart:io';
import 'dart:math';

// Package imports:
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:just_audio/just_audio.dart';

// Project imports:
import '../../presentation/view/screens/guard_business/pages/chat/pages/chat_messages_page.dart';
import '../config/assets/assets.gen.dart';
import '../config/routes/route_manager.dart';
import '../utils/app_logger.dart';
import '../utils/local_notification_model.dart';
import 'service_interface.dart';
import 'user_service.dart';

@pragma('vm:entry-point')
void onDidReceiveBackgroundNotificationResponse(NotificationResponse response) {}

class LocalNotificationService implements ServiceInterface {
  @override
  String get name => 'Local Notification Service';

  static late FlutterLocalNotificationsPlugin localNotificationsPlugin;
  late InitializationSettings _initializationSettings;
  NotificationDetails? _notificationDetails;
  StreamController<LocalNotificationModel>? fcmStream;

  AudioPlayer? _player;

  @override
  Future initializeService({bool requestPermission = true}) async {
    localNotificationsPlugin = FlutterLocalNotificationsPlugin();
    await _requestPlatformPermission(requestPermission: requestPermission);
    await localNotificationsPlugin.initialize(
      _initializationSettings,
      onDidReceiveBackgroundNotificationResponse: onDidReceiveBackgroundNotificationResponse,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );

    initNotificationDetails();

    fcmStream ??= StreamController<LocalNotificationModel>.broadcast();

    _player ??= AudioPlayer();

    await _playSoundAccordingType();

    AppLogger.logDebug('$name Success initialization');
  }

  Future<void> _requestPlatformPermission({bool requestPermission = true}) async {
    AndroidInitializationSettings? androidInitialize;
    DarwinInitializationSettings? iosInitialize;
    if (requestPermission) {
      if (Platform.isAndroid) {
        await localNotificationsPlugin
            .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
            ?.requestExactAlarmsPermission();
        await localNotificationsPlugin
            .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
            ?.requestNotificationsPermission();
        androidInitialize = const AndroidInitializationSettings('@mipmap/ic_launcher');
      } else {
        await localNotificationsPlugin
            .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
            ?.requestPermissions(
              alert: true,
              badge: true,
              sound: true,
            );
        iosInitialize = const DarwinInitializationSettings();
      }
    } else {
      androidInitialize = const AndroidInitializationSettings('@mipmap/ic_launcher');
      iosInitialize = const DarwinInitializationSettings();
    }

    _initializationSettings = InitializationSettings(android: androidInitialize, iOS: iosInitialize);
  }

  void initNotificationDetails({AndroidNotificationDetails? android, DarwinNotificationDetails? iOS}) {
    if (Platform.isAndroid) {
      _notificationDetails = NotificationDetails(android: android ?? _androidNotificationDetails());
    } else {
      _notificationDetails = NotificationDetails(iOS: iOS);
    }
  }

  void onDidReceiveNotificationResponse(NotificationResponse response) {}

  void displayNotification({
    required LocalNotificationModel notificationModel,
    AndroidNotificationDetails? android,
    DarwinNotificationDetails? iOS,
  }) async {
    if (android != null || iOS != null) {
      initNotificationDetails(android: android, iOS: iOS);
    }

    await localNotificationsPlugin.show(
      notificationModel.id,
      notificationModel.title,
      notificationModel.body,
      _notificationDetails,
    );
  }

  void removeNotification({required int id}) async {
    await localNotificationsPlugin.cancel(id);
  }

  AndroidNotificationDetails _androidNotificationDetails() {
    int id = Random().nextInt(50);
    return AndroidNotificationDetails(
      '${UserService.currentSupervisor?.id ?? Random().nextInt(50)}',
      '${UserService.currentSupervisor?.id ?? id} ${UserService.currentSupervisor?.name ?? id}',
      groupKey: "gib.guard",
      playSound: false,
      priority: Priority.max,
      importance: Importance.max,
      // sound: RawResourceAndroidNotificationSound(message.notification!.android!.sound ?? "gfg"),

      //   styleInformation: BigTextStyleInformation(message.notification!.body.toString(),
      //       htmlFormatBigText: true, contentTitle: message.notification!.title.toString(), htmlFormatContentTitle: true),
    );
  }

  Future<void> playLocalSound(String path) async {
    await _player?.setAsset(path);
    await _player?.play();
  }

  Future<void> _playSoundAccordingType() async {
    fcmStream!.stream.listen((event) {
      Future.delayed(const Duration(seconds: 1), () async {
        if (event.remoteMessage != null && event.remoteMessage!.data['model_type'].toString().toLowerCase() == 'alert') {
          playLocalSound(Assets.sounds.alertSound);
          Future.delayed(
            const Duration(seconds: 5),
            () async => await playLocalSound(Assets.sounds.alertSound),
          );
          Future.delayed(
            const Duration(seconds: 10),
            () async => await playLocalSound(Assets.sounds.alertSound),
          );
        } else if(!(RouteManager.previousPage.isNotEmpty && RouteManager.previousPage.last == ChatMessagesPage.pageRoute.path)) {
          playLocalSound(Assets.sounds.notificationSound);
        }
      });
    });
  }

  // Singleton
  LocalNotificationService.init();
  static LocalNotificationService? _instance;
  factory LocalNotificationService() => _instance ??= LocalNotificationService.init();
}
 */

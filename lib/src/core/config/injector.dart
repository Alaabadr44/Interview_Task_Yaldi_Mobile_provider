// Flutter imports:
// Package imports:
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:location/location.dart';

// import 'package:on_app/src/core/services/analytics_service.dart';

// // Project imports:
// import '../../../firebase_options.dart';
import '../../data/data_sources/remote/dio_api_service.dart';
import '../../data/repositories/remote_app_repository_imp.dart';
import '../../domain/repositories/remote_app_repository.dart';
import '../../presentation/view_model/blocs/assistance/bloc_progress_helper.dart';

import '../../presentation/view_model/blocs/assistance/unauthorized_notifier.dart';
import '../../presentation/view_model/blocs/assistance/provider_progress_helper.dart';
import '../services/audio_players_services.dart';
import '../services/dio_service.dart';
import '../services/setting_service.dart';
import '../services/storage_service.dart';
import '../services/user_service.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Firebase initialization
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // FirebaseMessaging.onBackgroundMessage(onBackgroundMessage);
  // injector.registerLazySingleton<FcmService>(() => FcmService());

  // injector.registerSingleton<AnalyticsService>(AnalyticsService()..initializeService());
  // injector.registerLazySingleton<LocalNotificationService>(() => LocalNotificationService());

  // Register Global Key of Navigator State to get Context from any place
  injector.registerSingleton<GlobalKey<NavigatorState>>(
    GlobalKey<NavigatorState>(),
  );
  injector.registerSingleton<GlobalKey<ScaffoldMessengerState>>(
    GlobalKey<ScaffoldMessengerState>(),
  );
  // Initialization Services[StorageService, SettingService, UserService, HiveService, DioService]
  injector.registerLazySingleton<StorageService>(() => StorageService());
  await injector<StorageService>().initializeService();
  // injector<StorageService>().clear();

  injector.registerLazySingleton<SettingService>(() => SettingService());
  await injector<SettingService>().initializeService();

  injector.registerSingleton<DioService>(DioService()..initializeService());

  injector.registerLazySingleton<Dio>(() => injector<DioService>().dio);
  injector.registerLazySingleton<DioApiService>(
    () => DioApiService(dio: injector<DioService>().dio),
  );
  injector.registerLazySingleton<RemoteAppRepository>(
    () => RemoteAppRepositoryImp(injector<DioApiService>()),
  );

  // injector.registerFactory<ApiDataBloc>(() => ApiDataBloc());
  // injector.registerFactory<AuthBloc>(() => AuthBloc());
  injector.registerLazySingleton<UnauthorizedNotifier>(
    () => UnauthorizedNotifier(),
  );

  injector.registerLazySingleton<BlocProgressHelper>(
    () => BlocProgressHelper(),
  );
  injector.registerLazySingleton<ProviderProgressHelper>(
    () => ProviderProgressHelper(),
  );

  injector.registerLazySingleton<UserService>(() => UserService());
  await injector<UserService>().initializeService();

  // injector.registerLazySingleton<HiveService>(() => HiveService());
  // await injector<HiveService>().initializeService();

  injector.registerLazySingleton<AudioPlayersServices>(
    () => AudioPlayersServices(),
  );
  await injector<AudioPlayersServices>().initializeService();
}

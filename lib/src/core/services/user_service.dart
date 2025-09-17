// Dart imports:
import 'dart:convert';

// Project imports:
import '../../domain/entities/user_model.dart';
// import '../../presentation/view_model/blocs/auth_provider/api_data_bloc.dart';
import '../config/injector.dart';
import '../utils/app_logger.dart';
import '../utils/constant.dart';
import '../utils/enums.dart';
import '../utils/extension.dart';
import 'service_interface.dart';
import 'storage_service.dart';

// Flutter imports:
import 'package:flutter/material.dart'
    show NavigatorState, GlobalKey, ChangeNotifier, VoidCallback;

class UserService extends ChangeNotifier implements ServiceInterface {
  @override
  String get name => 'User Service';

  static UserModel? _user;
  static String? accessToken;

  // ApiDataBloc<UserModel>? userBloc;

  static final StorageService _storage = injector<StorageService>();

  @override
  Future<void> initializeService() async {
   
    accessToken = _storage.getString(kUserToken);
    String? userData = _storage.getString(kUserData);

    try {
      if (userData.isNotNull) {
        _user = UserModel.fromJson(jsonDecode(userData!));
      } else {
        _user = null;
      }
      AppLogger.logDebug('$name Success initialization');
      AppLogger.logInfo('User: ${_user?.toJson()}');
      notifyListeners();
    } catch (e) {
      _storage.clear();
      _user = null;
    }
  }

  static bool get isExistUser => currentUser != null;

  static void userIsExistAction(
    Function(UserModel user) exist, {
    VoidCallback? orElse,
  }) {
    if (isExistUser) {
      exist.call(currentUser!);
    } else {
      orElse != null
          ? orElse.call()
          : injector<GlobalKey<NavigatorState>>().currentState?.context
              .nextNamed(AppLocalRoute.login.route);
    }
  }

  static set setUser(UserModel user) => _user = user;

  static Future<void> storeUserData(UserModel user) async {
    Future.wait([
      _storage.saveString(kUserToken, user.accessToken ?? ""),
      _storage.saveString(kUserData, jsonEncode(user.toJson())),
      UserService().initializeService(),
    ]);
    // await _storage.saveString(kUserToken, user.token);
    // await _storage.saveString(kUserData, jsonEncode(user.toJson()));
    // await UserService().initializeService();
  }

  String? get userName {
    var firstName =
        (currentUser?.firstName ?? "") + (currentUser?.lastName ?? "");
    if (firstName.isNotNull) {
      return firstName.length <= 10 ? firstName : firstName.substring(0, 10);
    }
    return null;
  }

  static Future<void> removeUserData() async {
    Future.wait([
      _storage.remove(kUserToken),
      _storage.remove(kUserData),
      UserService().initializeService(),
    ]);
  }

  

  static UserModel? get currentUser => _user;

  // Singleton
  UserService.int();
  static UserService? _instance;
  factory UserService() => _instance ??= UserService.int();
}

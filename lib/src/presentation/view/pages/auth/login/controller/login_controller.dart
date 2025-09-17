// Flutter imports:
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/utils/extension.dart';
import 'package:flutter_application_1/src/presentation/view_model/blocs/auth_provider/auth_provider.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../../../core/config/assets/assets.gen.dart';
import '../../../../../../core/config/injector.dart';
import '../../../../../../core/services/audio_players_services.dart';
import '../../../../../../core/services/storage_service.dart';
import '../../../../../../core/utils/api_info.dart';
import '../../../../../../core/utils/constant.dart';
import '../../../../../../core/utils/enums.dart';
import '../../../../../../core/utils/page_controller.dart';
import '../../../../../../domain/entities/user_model.dart';

class LoginControllerProvider implements AppPageController {
  late final GlobalKey<FormBuilderState> globalKey;
  late final ValueNotifier<bool> passwordNotifier;
  late final ValueNotifier<bool> rememberMeNotifier;
late final AuthProvider<UserModel> authProvider;
  @override
  String? get route => ApiRoute.login.route;

  @override
  void initDependencies({BuildContext? context}) {
    globalKey = GlobalKey<FormBuilderState>();
    passwordNotifier = ValueNotifier<bool>(true);

    String? value = injector<StorageService>().getString(kRememberMe);
    rememberMeNotifier = ValueNotifier<bool>(value?.isNotNull ?? false);
    loadValueIfRememberMe(value);
    authProvider = AuthProvider<UserModel>();
  
  }

  void toggleRememberMe(bool? state) {
    if (state == null) return;
    rememberMeNotifier.value = state;
  }

  @override
  void disposeDependencies({BuildContext? context}) {
    passwordNotifier.dispose();
    rememberMeNotifier.dispose();
    authProvider.dispose();
  }

 void login() {
    if (globalKey.currentState!.saveAndValidate()) {
      authProvider.login(
        authData: ApiInfo(
          endpoint: ApiRoute.login.route,
          body: globalKey.currentState!.value,
        ),
      );
    }
  }

  saveValueIfRememberMe() {
    if (rememberMeNotifier.value) {
      injector<StorageService>().saveString(
        kRememberMe,
        jsonEncode(globalKey.currentState!.value),
      );
    } else {
      injector<StorageService>().remove(kRememberMe);
    }
  }

  loadValueIfRememberMe(String? value) {
    if (rememberMeNotifier.value) {
      if (value != null) {
        WidgetsBinding.instance!.addPostFrameCallback((_) {
          globalKey.currentState!.patchValue(jsonDecode(value));
        });
      }
    }
  }

void playSound() {
    injector<AudioPlayersServices>().playAssetSound(Assets.sounds.login);
  }
}

// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Project imports:
import '../../../../../../core/utils/api_info.dart';
import '../../../../../../core/utils/enums.dart';
import '../../../../../../core/utils/page_controller.dart';
import '../../../../../../domain/entities/user_reg_model.dart';
import '../../../../../view_model/blocs/auth_provider/auth_provider.dart';

class RegisterController implements AppPageController {
  late final GlobalKey<FormBuilderState> globalKey;
  late final ValueNotifier<bool> obscurePassword;
  late final ValueNotifier<bool> obscureRePassword;
  late final GlobalKey<FormBuilderFieldState<FormBuilderField, dynamic>>
  passwordKey;
  late final AuthProvider<UserRegModel> authProvider;

  @override
  String? get route => ApiRoute.register.route;

  @override
  void initDependencies({BuildContext? context}) {
    globalKey = GlobalKey<FormBuilderState>();
    obscurePassword = ValueNotifier<bool>(true);
    obscureRePassword = ValueNotifier<bool>(true);
    passwordKey = GlobalKey<FormBuilderFieldState>();

    authProvider = AuthProvider<UserRegModel>();
  }

  void register() {
    if (globalKey.currentState!.saveAndValidate()) {
      authProvider.register(
        authData: ApiInfo(
          endpoint: ApiRoute.register.route,
          body: globalKey.currentState!.value,
        ),
      );
    }
  }

  @override
  void disposeDependencies({BuildContext? context}) {
    obscurePassword.dispose();
    obscureRePassword.dispose();
    authProvider.dispose();
  }
}

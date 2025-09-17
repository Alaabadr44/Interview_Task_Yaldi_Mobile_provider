// ignore_for_file: public_member_api_docs, sort_constructors_first

// Dart imports:
import 'dart:io';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../../../../core/services/user_service.dart';
import '../../../../core/utils/app_logger.dart';
import '../../../../core/utils/extension.dart';

class UnauthorizedNotifier extends Cubit<bool> {
  late bool userIsUnauthorized;
  String? unauthorizedMessage;

  UnauthorizedNotifier() : super(false);

  void unauthorized(int? code, String? message) {
    if (code != null && message.isNotNull) {
      userIsUnauthorized = code == HttpStatus.unauthorized;
      if (UserService.accessToken != null && userIsUnauthorized) {
        unauthorizedMessage = message;
        emit(userIsUnauthorized);
      }
      userIsUnauthorized = false;
    } else {
      userIsUnauthorized = false;
      emit(userIsUnauthorized);
    }
    if (state) AppLogger.logError('User is Unauthorized: $state\nMessage: $unauthorizedMessage');
  }
}

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../../core/error/error.dart';
import '../../../../data/models/api_response_model.dart';
import 'auth_event.dart';


part 'auth_provider_state.freezed.dart';

@freezed
class AuthProviderState<T> with _$AuthProviderState<T> {
  const factory AuthProviderState.idle() = AuthProviderStateIdle;

  const factory AuthProviderState.loading({
    required AuthEvent event,
    int? count,
    int? total,
    @Default(true) bool isInit,
  }) = AuthProviderStateLoading<T>;

  const factory AuthProviderState.success({
    required T? data,
    required ApiResponseModel<T?> response,
    required AuthEvent event,
  }) = AuthProviderStateSuccess<T>;

  const factory AuthProviderState.error({
    required AppError? error,
    required AuthEvent event,
    required bool isUnAuth,
    required bool isCancel,
  }) = AuthProviderStateError<T>;
}

// Extension methods for easier state checking
extension AuthProviderStateExtension<T> on AuthProviderState<T> {
  bool get isIdle => this is AuthProviderStateIdle;
  bool get isLoading => this is AuthProviderStateLoading;
  bool get isSuccess => this is AuthProviderStateSuccess;
  bool get isError => this is AuthProviderStateError;
  bool get isUnAuthorized =>
      this is AuthProviderStateError &&
      (this as AuthProviderStateError).isUnAuth;

  T? get data {
    if (this is AuthProviderStateSuccess<T>) {
      return (this as AuthProviderStateSuccess<T>).data;
    }
    return null;
  }

  ApiResponseModel<T?>? get response {
    if (this is AuthProviderStateSuccess<T>) {
      return (this as AuthProviderStateSuccess<T>).response;
    }
    return null;
  }

  AppError? get error {
    if (this is AuthProviderStateError<T>) {
      return (this as AuthProviderStateError<T>).error;
    }
    return null;
  }

  AuthEvent? get event {
    if (this is AuthProviderStateLoading<T>) {
      return (this as AuthProviderStateLoading<T>).event;
    } else if (this is AuthProviderStateSuccess<T>) {
      return (this as AuthProviderStateSuccess<T>).event;
    } else if (this is AuthProviderStateError<T>) {
      return (this as AuthProviderStateError<T>).event;
    }
    return null;
  }
}

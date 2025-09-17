// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../../core/utils/api_info.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required ApiInfo authData}) = UserLoginEvent;
  const factory AuthEvent.logout({required ApiInfo authData}) = UserLogoutEvent;
  const factory AuthEvent.delete({required ApiInfo authData}) = UserDeleteEvent;
  const factory AuthEvent.forget({required ApiInfo authData}) = ForgetPasswordEvent;
  const factory AuthEvent.checkCode({required ApiInfo authData}) = CheckCodeEvent;
  const factory AuthEvent.sendCode({required ApiInfo authData}) = SendCodeEvent;
  const factory AuthEvent.update({required ApiInfo authData, String? title}) = UserUpdateEvent;
  const factory AuthEvent.changePassword({required ApiInfo authData, String? title}) = ChangePasswordEvent;
  const factory AuthEvent.register({required ApiInfo authData, String? title}) = UserRegisterEvent;
}

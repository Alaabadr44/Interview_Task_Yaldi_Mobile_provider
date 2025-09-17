import 'package:flutter/material.dart';
// Package imports:
import 'package:provider/provider.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Project imports:
import '../../../../../../core/config/app_colors.dart';
import '../../../../../../core/config/l10n/generated/l10n.dart';
import '../../../../../../core/services/environment_service.dart';
import '../../../../../../core/services/user_service.dart';
import '../../../../../../core/utils/api_info.dart';
import '../../../../../../core/utils/constant.dart';
import '../../../../../../core/utils/enums.dart';
import '../../../../../../core/utils/extension.dart';
import '../../../../../../core/utils/layout/responsive_layout.dart';
import '../../../../../../domain/entities/user_model.dart';
import '../../../../../view_model/blocs/auth_provider/auth_provider.dart';
import '../../../../../view_model/blocs/auth_provider/auth_provider_widget.dart';
import '../../../../../view_model/blocs/auth_provider/auth_provider_state.dart';
import '../../../../app_logo.dart';
import '../../../../common/animation_widget.dart';
import '../../../../common/containers/general_container.dart';
import '../../../../common/fields/_field_helper/decoration_field.dart';
import '../../../../common/fields/_field_helper/form_key.dart';
import '../../../../common/fields/generic_text_field.dart';
import '../../../../common/text_widget.dart';
import '../controller/login_controller.dart';
import '../widget_keys.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginControllerProvider _controller;

  @override
  void initState() {
    super.initState();
    _controller = LoginControllerProvider()..initDependencies();
  }

  void _fillWithTestData() {
    if (_controller.globalKey.currentState != null) {
      // Fill the form with test data
      _controller.globalKey.currentState!.patchValue({
        'username': kUserName,
        'password': kPassword,
      });

      // Show success message with multiple feedback
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.current.test_credentials_filled,
                style: context.bodyL?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                S.current.ready_to_login,
                style: context.bodyL?.copyWith(
                  fontSize: 12,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          duration: const Duration(seconds: 3),
          backgroundColor: AppColors.primaryColor,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      );
    }
  }

  void toggleRememberMe(bool? state) {
    if (state == null) return;
    _controller.rememberMeNotifier.value = state;
  }

  Future<void> _handleLogin() async {
    _controller.login();
  }

  @override
  void dispose() {
    _controller.disposeDependencies();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthProvider<UserModel>>.value(
      value:_controller.authProvider,
      child: ResponsiveLayout(
        showAppBar: false,
        onBackAllApp: (context) {
          _controller.authProvider.cancelCurrentRequest();
        },
        builder: (context, info) {
          return AuthProviderConsumer<UserModel>(
            builder: (context, state, provider) {
              // Handle state changes in a post-frame callback to avoid setState during build
              WidgetsBinding.instance.addPostFrameCallback((_) {
                state.maybeWhen(
                  success: (data, response, event) {
                    context.showSuccess(
                      "Login successful",
                      popLoadingDialog: false,
                    );
                    UserService.storeUserData(data!);
                    _controller.playSound();
                    context.nextReplacementNamed(AppLocalRoute.dashboard.route);
                  },
                  error: (error, event, isUnAuth, isCancel) {
                    context.showError(
                      error?.message ?? '',
                      popLoadingDialog: false,
                    );
                  },
                  orElse: () {},
                );
              });

              return AnimationWidget(
                type: AnimationDirection.fade,
                key: const Key(LoginPageKeys.animationWidget),
                child: Container(
                  key: const Key(LoginPageKeys.mainContainer),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.primaryColor.withOpacity(0.1),
                        Colors.white,
                      ],
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 32.0,
                    ),
                    child: FormKey(
                      formKey: _controller.globalKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Logo Section
                          GeneralContainer.white(
                            key: const Key(LoginPageKeys.logoContainer),
                            padding: const EdgeInsets.all(20),
                            borderRadius: 20,
                            shadowColor: AppColors.primaryColor.withOpacity(
                              0.1,
                            ),
                            shadowBlurRadius: 20,
                            shadowOffset: const Offset(0, 10),
                            child: const Center(
                              child: AppLogo(key: Key(LoginPageKeys.appLogo)),
                            ),
                          ),

                          const SizedBox(height: 40),

                          // Welcome Text
                          Container(
                            key: const Key(LoginPageKeys.welcomeText),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: TextWidget(
                              text: S.current.welcome_back,
                              style: context.headlineL?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),

                          const SizedBox(height: 8),

                          TextWidget(
                            key: const Key(LoginPageKeys.subtitleText),
                            text: S.current.please_sign_in_to_your_account,
                            style: context.bodyL?.copyWith(
                              color: AppColors.grey600,
                            ),
                          ),

                          const SizedBox(height: 32),

                          // Username Field
                          GeneralContainer.white(
                            key: const Key(LoginPageKeys.usernameContainer),
                            child: GenericTextField(
                              key: const Key(LoginPageKeys.usernameField),
                              name: 'username',
                              autofillHints: const [AutofillHints.username],
                              textType: TextInputType.text,
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                  errorText:
                                      context
                                          .localText
                                          .validator_field_required_title,
                                ),
                                FormBuilderValidators.minLength(2),
                              ]),
                              obscureText: false,
                              textInputAction: TextInputAction.next,
                              decorationField:
                                  DecorationFields.generalDecorationField(
                                    context,
                                    labelText: context.localText.name,
                                    hintText: context.localText.hint_login_name,
                                    prefixIcon: Container(
                                      padding: const EdgeInsets.all(12),
                                      child: const Icon(
                                        Icons.person_outline,
                                        color: AppColors.primaryColor,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Password Field
                          GeneralContainer.white(
                            key: const Key(LoginPageKeys.passwordContainer),
                            child: ValueListenableBuilder(
                              valueListenable: _controller.passwordNotifier,
                              builder: (context, isSecure, _) {
                                return GenericTextField(
                                  key: const Key(LoginPageKeys.passwordField),
                                  name: 'password',
                                  autofillHints: const [AutofillHints.password],
                                  textType: TextInputType.text,
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(
                                      errorText:
                                          context
                                              .localText
                                              .validator_field_required_title,
                                    ),
                                    FormBuilderValidators.minLength(6),
                                  ]),
                                  obscureText: isSecure,
                                  textInputAction: TextInputAction.done,
                                  decorationField:
                                      DecorationFields.generalDecorationField(
                                        context,
                                        labelText: context.localText.password,
                                        hintText:
                                            context.localText.hintLoginPassword,
                                        prefixIcon: Container(
                                          padding: const EdgeInsets.all(12),
                                          child: const Icon(
                                            Icons.lock_outline,
                                            color: AppColors.primaryColor,
                                            size: 20,
                                          ),
                                        ),
                                        suffixIcon: IconButton(
                                          key: const Key(
                                            LoginPageKeys
                                                .passwordVisibilityToggle,
                                          ),
                                          icon: Icon(
                                            isSecure
                                                ? Icons.visibility_off_outlined
                                                : Icons.visibility_outlined,
                                            color: AppColors.grey600,
                                          ),
                                          onPressed:
                                              () =>
                                                  _controller.passwordNotifier.value =
                                                      !_controller.passwordNotifier.value,
                                        ),
                                      ),
                                );
                              },
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Remember Me Section
                          Row(
                            children: [
                              ValueListenableBuilder(
                                valueListenable: _controller.rememberMeNotifier,
                                builder: (
                                  BuildContext context,
                                  dynamic value,
                                  Widget? child,
                                ) {
                                  return Transform.scale(
                                    scale: 1.1,
                                    child: Checkbox(
                                      key: const Key(
                                        LoginPageKeys.rememberMeCheckbox,
                                      ),
                                      value: value,
                                      onChanged: toggleRememberMe,
                                      activeColor: AppColors.primaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(width: 8),
                              TextWidget(
                                key: const Key(LoginPageKeys.rememberMeText),
                                text: S.current.remember_me,
                                style: context.bodyM?.copyWith(
                                  color: AppColors.grey600,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 32),

                          // Login Button
                          _buildLoginButton(state),

                          const SizedBox(height: 24),

                          // Register Button
                          _buildRegisterButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        fab: Visibility(
          visible: EnvironmentService.isDevelopment,
          child: FloatingActionButton.extended(
            key: const Key(LoginPageKeys.fillTestDataButton),
            onPressed: _fillWithTestData,
            backgroundColor: AppColors.primaryColor,
            icon: const Icon(Icons.login, color: Colors.white),
            label: Text(
              S.current.fill_test_data,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            tooltip: S.current.fill_with_test_credentials,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(AuthProviderState<UserModel> state) {
    final isLoading = state is AuthProviderStateLoading;

    return GeneralContainer.gradient(
      key: const Key(LoginPageKeys.loginButtonContainer),
      gradientColors: [
        AppColors.primaryColor,
        AppColors.primaryColor.withOpacity(0.8),
      ],
      shadowColor: AppColors.primaryColor.withOpacity(0.3),
      shadowBlurRadius: 15,
      shadowOffset: const Offset(0, 8),
      child: SizedBox(
        height: 56,
        child: ElevatedButton(
          key: const Key(LoginPageKeys.loginButton),
          onPressed: isLoading ? null : _handleLogin,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child:
              isLoading
                  ? const SizedBox(
                    key: Key(LoginPageKeys.loginLoadingIndicator),
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                  : TextWidget(
                    text: context.localText.signIn,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
        ),
      ),
    );
  }

  Widget _buildRegisterButton() {
    return GeneralContainer.outlined(
      key: const Key(LoginPageKeys.registerButtonContainer),
      borderColor: AppColors.primaryColor.withOpacity(0.3),
      borderWidth: 2,
      child: SizedBox(
        height: 56,
        child: OutlinedButton(
          key: const Key(LoginPageKeys.registerButton),
          onPressed: () => context.nextNamed(AppLocalRoute.register.route),
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            side: BorderSide.none,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: TextWidget(
            text: S.current.create_account,
            style: context.titleM?.copyWith(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

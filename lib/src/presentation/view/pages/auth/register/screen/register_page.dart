import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
// Flutter imports:
import 'package:provider/provider.dart';

import '../../../../../../core/config/app_colors.dart';
import '../../../../../../core/config/l10n/generated/l10n.dart';
import '../../../../../../core/services/environment_service.dart';
// removed unused api_info and enums imports after controller refactor
import '../../../../../../core/utils/extension.dart';
import '../../../../../../core/utils/layout/responsive_layout.dart';
import '../../../../../../domain/entities/user_reg_model.dart';
import '../controller/register_controller.dart';
import '../../../../../view_model/blocs/auth_provider/auth_provider.dart';
import '../../../../../view_model/blocs/auth_provider/auth_provider_widget.dart';
import '../../../../../view_model/blocs/auth_provider/auth_provider_state.dart';
import '../../../../app_logo.dart';
import '../../../../common/animation_widget.dart';
import '../../../../common/containers/general_container.dart';
import '../../../../common/text_widget.dart';

import '../widgets/body_register.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final RegisterController _controller;

  @override
  void initState() {
    super.initState();
    _controller = RegisterController();
    _controller.initDependencies(context: context);
  }

  void _fillWithFakeData() {
    if (_controller.globalKey.currentState != null) {
      String _password = faker.internet.password();
      _controller.globalKey.currentState!.patchValue({
        'firstName': faker.person.firstName(),
        'lastName': faker.person.lastName(),
        'email': faker.internet.email(),
        'username': faker.internet.userName(),
        'password': _password,
        'password_confirmation': _password,
      });

      // Show a snackbar to indicate fake data was filled
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Fake data filled successfully!'),
          duration: Duration(seconds: 2),
          backgroundColor: AppColors.primaryColor,
        ),
      );
    }
  }

  Future<void> _handleRegister() async => _controller.register();

  void cancelRequestDialog(BuildContext context) {
    _controller.authProvider.cancelCurrentRequest();
  }

  @override
  void dispose() {
    _controller.disposeDependencies(context: context);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthProvider<UserRegModel>>.value(
      value: _controller.authProvider,
      child: ResponsiveLayout(
        showAppBar: false,
        isPadding: false,
        maintainBodyViewPadding: false,
        onBackAllApp: cancelRequestDialog,
        onBackPage: (context) {
          cancelRequestDialog(context);
          context.popWidget();
        },
        builder: (context, info) {
          return AuthProviderConsumer<UserRegModel>(
            builder: (context, state, provider) {
              // Handle success and error states
              state.maybeWhen(
                success: (data, response, event) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    context.showSuccess(
                      "User registered successfully",
                      popLoadingDialog: false,
                    );
                    // Navigate back to login or dashboard
                    context.popWidget();
                  });
                },
                error: (error, event, isUnAuth, isCancel) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    context.showError(
                      error?.message ?? 'Registration failed',
                      popLoadingDialog: false,
                    );
                  });
                },
                orElse: () {},
              );

              return AnimationWidget(
                type: AnimationDirection.fade,
                child: Container(
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: info.screenWidth * 0.04,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Logo Section
                        GeneralContainer.white(
                          padding: const EdgeInsets.all(20),
                          borderRadius: 20,
                          shadowColor: AppColors.primaryColor.withOpacity(0.1),
                          shadowBlurRadius: 20,
                          shadowOffset: const Offset(0, 10),
                          child: const Center(child: AppLogo()),
                        ),

                        const SizedBox(height: 40),

                        // Welcome Text
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: TextWidget(
                            text: S.of(context).welcome_get_started,
                            style: context.headlineL?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextWidget(
                          text: S.current.enter_data_to_create_account,
                          style: context.bodyL?.copyWith(
                            color: AppColors.grey600,
                          ),
                        ),

                        const SizedBox(height: 32),

                        Expanded(
                          child: SingleChildScrollView(
                            child: BodyRegister(
                              formKey: _controller.globalKey,
                              obscurePassword: _controller.obscurePassword,
                              obscureRePassword: _controller.obscureRePassword,
                              passwordKey: _controller.passwordKey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        bottomNavigationBar: _buildBottomActions(),
        fab: Visibility(
          visible: EnvironmentService.isDevelopment,
          child: FloatingActionButton.extended(
            onPressed: _fillWithFakeData,
            backgroundColor: AppColors.primaryColor,
            icon: const Icon(Icons.login, color: Colors.white),
            label: Text(
              S.current.fill_test_data,
              style: context.bodyL?.copyWith(
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

  Widget _buildBottomActions() {
    return AuthProviderSelector<UserRegModel, AuthProviderState<UserRegModel>>(
      selector: (state) => state,
      builder: (context, state, provider) {
        final isLoading = state is AuthProviderStateLoading;

        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: isLoading ? null : () => context.popWidget(),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(color: AppColors.primaryColor),
                  ),
                  child: TextWidget(
                    text: S.current.cancel,
                    style: context.bodyL?.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: isLoading ? null : _handleRegister,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child:
                      isLoading
                          ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                          : TextWidget(
                            text: S.current.create_account,
                            style: context.bodyL?.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

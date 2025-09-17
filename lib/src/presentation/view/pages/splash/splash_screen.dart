// Flutter imports:
import 'package:flutter_application_1/src/presentation/view/app_logo.dart';
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/config/app_colors.dart';
import '../../../../core/utils/extension.dart';
import '../../../../core/utils/layout/responsive_layout.dart';
import 'splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final SplashController splashController;
  bool isSuccess = true;
  bool finishTime = false;
  @override
  void initState() {
    super.initState();
    splashController = SplashController()..initDependencies(context: context);
    // final userData = injector<StorageService>().getString(kUserData);
    // if (userData.isNotNull) {
    //   isSuccess = false;
    //   splashController.getData;
    // }

    // Future.delayed(
    //   const Duration(seconds: 4),
    //   () {
    //     if (isSuccess) {
    //       splashController.goTargetPage(context);
    //     }
    //     finishTime = true;
    //   },
    // );
  }

  @override
  void dispose() {
    splashController.disposeDependencies();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      isPadding: false,
      // backgroundColor: AppColors.baseColor,
      builder: (context, info) {
        // return Center(
        //   child: BlocConsumer<ApiDataBloc<UserModel>, ApiDataState<UserModel>>(
        //     bloc: splashController.profileBloc,
        //     listener: (context, state) {
        //       state.mapOrNull(
        //         successModel: (value) {
        //           if (finishTime) {
        //             splashController.goTargetPage(context);
        //           }
        //           isSuccess = true;
        //         },
        //         error: (value) {
        //           if (value.isUnAuth) {
        //             injector<StorageService>().remove(kUserData);
        //             injector<StorageService>().remove(kUserToken);
        //             splashController.goTargetPage(context);
        //           }
        //         },
        //       );
        //     },
        //     builder: (context, state) {
        //       return state.maybeMap(
        //         error: (value) {
        //           if (!value.isUnAuth) {
        //             return Padding(
        //               padding: EdgeInsets.symmetric(horizontal: context.sizeSide.smallSide * .04),
        //               child: CustomErrorWidget(
        //                 message: value.error?.message ?? '',
        //                 btnTitle: context.localText.button_retry_title,
        //                 onTab:
        //                 (){},
        //                 // splashController.profileBloc.refresh,
        //               ),
        //             );
        //           }
        //           return ImageWidget(image: Assets.images.onSplash);
        //         },
        //         orElse: () => ImageWidget(image: Assets.images.onSplash),
        //       );
        //     },
        //   ),
        // );

        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.primaryColor,
                AppColors.primaryColor.withOpacity(0.8),
                AppColors.primaryColor.withOpacity(0.6),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          height: info.screenHeight,
          width: info.screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Animated Logo Section
              TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 1500),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value,
                    child: Opacity(
                      opacity: value,
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: const AppLogo(),
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 60),

              // App Name with Animation
              TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 2000),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 20 * (1 - value)),
                      child: Text(
                        'Welcome to Our App',
                        style: context.headlineL?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              // Subtitle with Animation
              TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 2500),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 20 * (1 - value)),
                      child: Text(
                        'Your journey starts here',
                        style: context.bodyL?.copyWith(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 80),

              // Animated Loading Indicator
              TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 3000),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Loading...',
                          style: context.bodyM?.copyWith(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

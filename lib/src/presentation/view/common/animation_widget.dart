// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_animator/flutter_animator.dart';

// Project imports:
import '../../../core/services/setting_service.dart';

enum AnimationDirection {
  slide,
  fade,
  bounce,
}

class AnimationWidget extends StatelessWidget {
  final AnimationDirection type;
  final Widget child;
  final bool? isRTL;
  const AnimationWidget({super.key, required this.type, required this.child, this.isRTL});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AnimationDirection.slide:
        return isRTL ?? SettingService.isRTL
            ? SlideInRight(
                // preferences: animationPreferences,
                child: child,
              )
            : SlideInLeft(
                // preferences: animationPreferences,
                child: child,
              );
      case AnimationDirection.fade:
        return isRTL ?? SettingService.isRTL
            ? FadeInRight(
                // preferences: animationPreferences,
                child: child,
              )
            : FadeInLeft(
                // preferences: animationPreferences,
                child: child,
              );
      case AnimationDirection.bounce:
        return isRTL ?? SettingService.isRTL
            ? BounceInRight(
                // preferences: animationPreferences,
                child: child,
              )
            : BounceInLeft(
                // preferences: animationPreferences,
                child: child,
              );
    }
  }
}

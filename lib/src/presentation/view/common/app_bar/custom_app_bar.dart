// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'app_bar_action_widget.dart';
import 'app_bar_option.dart';

class CustomAppBar extends StatefulWidget {
  final List<Widget>? actions;
  final String? title;
  final VoidCallback? onBack;
  final AppBarOption option;
  const CustomAppBar({
    super.key,
    this.actions,
    required this.option,
    this.title,
    this.onBack,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      // leadingWidth: widget.option.logo ? (context.isTablet ? context.deviceWidth * 0.18 : kAppBarLogoWidth) : null,
      // title: widget.option.title ? TickerWidget(child: TextWidget(text: widget.title!, style: context.titleM)) : null,
      // centerTitle: widget.option.title,
      // leading: widget.option.logo
      //     ? appBarLogo
      //     : widget.option.backButton
      //         ? appBarBackBtn(context)
      //         : null,
      actions: widget.actions ?? [AppBarActionWidget(option: widget.option)],
    );
  }

/*   Widget get appBarLogo {
    return AnimationWidget(
      type: AnimationDirection.fade,
      child: ImageWidget(
        image: Assets.images.logoArrow,
        margin: EdgeInsetsDirectional.only(start: context.sizeSide.width * 0.03),
        fit: BoxFit.contain,
      ),
    );
  } */

/*   Widget? appBarBackBtn(BuildContext context) {
    if (injector<AppRouteServices>().canPop) {
      return IconButton(
        onPressed: () {
          List<String> routes =
              injector<AppRouteServices>().route.routerDelegate.currentConfiguration.uri.toString().split('/');
          if (routes.length > 1 && !injector<AppRouteServices>().canPop) {
            final isExistUser = UserService.currentUser != null;
            if (isExistUser) {
              context.goNamed(ShipperRoute.home.route['name']!);
            } else {
              context.goNamed(ShipperRoute.login.route['name']!);
            }
          } else {
            injector<AppRouteServices>().canPop ? context.pop() : setState(() {});
          }
          widget.onBack?.call();
        },
        icon: Icon(
          SettingService.isRTL ? FontAwesomeIcons.arrowRight : FontAwesomeIcons.arrowLeft,
          color: ThemeManager().appColor[ThemeColor.reversPrimary],
        ),
      );
    }
    return null;
  } */
}

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/utils/extension.dart';

// Project imports:
import '../../../../../../../core/config/assets/assets.gen.dart';
import '../../../../../../../core/config/injector.dart';
import '../../../../../../../core/services/audio_players_services.dart';
import '../../../../../../../core/services/user_service.dart';
import '../../../../../../../core/utils/api_info.dart';
import '../../../../../../../core/utils/enums.dart';
import '../../../../../../../core/utils/page_controller.dart';
import '../../../../../../../domain/entities/user_dash_model.dart';
import '../../../../../../view_model/blocs/data_provider/data_generic_provider.dart';

class DashboardController implements AppPageController {
  late final DataGenericProvider<UserDashModel> dashboardProvider;

  @override
  String? get route => ApiRoute.dashboard.route;

  @override
  void initDependencies({BuildContext? context}) {
    dashboardProvider = DataGenericProvider<UserDashModel>();
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    await dashboardProvider.getGeneralData(
      queryParams: ApiInfo(endpoint: ApiRoute.dashboard.route),
    );
  }

  Future<void> refreshData() async {
    await fetchUserData();
  }

  @override
  void disposeDependencies({BuildContext? context}) {
    dashboardProvider.dispose();
  }

  void playSound() {
    injector<AudioPlayersServices>().playAssetSound(Assets.sounds.logout);
  }

  logout(BuildContext context) async {
    playSound();
    // Clear user data
    await UserService.removeUserData();

    // Navigate to login and clear stack
    if (context.mounted) {
      context.nextReplacementNamed(AppLocalRoute.login.route);
    }
  }
}

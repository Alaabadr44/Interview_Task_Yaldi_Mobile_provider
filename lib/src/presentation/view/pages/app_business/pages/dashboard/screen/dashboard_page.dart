import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../../general/app_indicator.dart';
import 'package:provider/provider.dart';
import '../../../../../../../core/services/user_service.dart';
import '../../../../../../../core/utils/layout/responsive_layout.dart';
import '../../../../../../../core/utils/enums.dart';
import '../../../../../../../core/utils/extension.dart';

import '../../../../../../../core/config/l10n/generated/l10n.dart';
import '../../../../../../../domain/entities/user_dash_model.dart';
import '../../../../../../view_model/blocs/data_provider/data_generic_provider.dart';
import '../../../../../../view_model/blocs/data_provider/data_provider_widget.dart';
import '../../../../../common/text_widget.dart';
import '../dialogs/log_out_alert_dialog.dart';
import '../widgets/user_dashboard_widget.dart';
import '../../../../../commbonant/lang_bottom_sheet.dart';
import '../controller/dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late DashboardController _controller;

  @override
  void initState() {
    super.initState();
    _controller = DashboardController();
    _controller.initDependencies(context: context);

    // Prevent back navigation
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

   
  }

  Future<void> _refreshData() async {
    await _controller.refreshData();
  }

Future<void> _logout() async {
    // Show confirmation dialog
    final shouldLogout = await showDialog<bool>(
      context: context,
      builder:
          (context) => const LogOutAlertDialog(),
    );

    if (shouldLogout == true) {
    _controller.logout(context);
    }
  }
  @override
  void dispose() {
    _controller.disposeDependencies(context: context);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataGenericProvider<UserDashModel>>.value(
      value: _controller.dashboardProvider,
      child: ResponsiveLayout(
        onBackPage: (context) {},
        canPop: false,
        appBar: AppBar(
          title: TextWidget(text: 'Dashboard'),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              tooltip: S.current.select_language,
              onPressed: () {
                context.showSheet(
                  SizedBox(
                    height: context.screenSize.height * 0.4,
                    child: LangBottomWidget(isLable: true, onTab: () {}),
                  ),
                );
              },
              icon: const Icon(Icons.language_rounded),
            ),
          ],
        ),
        builder: (context, info) {
          return RefreshIndicator(
            onRefresh: _refreshData,
            child: DataProviderConsumer<UserDashModel>(
              builder: (context, state, provider) {
                return state.maybeWhen(
                  orElse: () => const AppIndicator(),
                  idle: () => const AppIndicator(),
                  loading: (count, total, isInit) => const AppIndicator(),
                  successModel: (data, response) {
                    return data != null
                        ? UserDashboardWidget(user: data, onLogout: _logout)
                        : Center(
                          child: const TextWidget(
                            // TODO:: st
                            text: 'No user data available',
                          ),
                        );
                  },
    
                  error: (error, errorResponse, isUnAuth) {
                    return SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.error_outline,
                                size: 64,
                                color: Colors.red.shade400,
                              ),
                              const SizedBox(height: 16),
                              TextWidget(
                                text: S.current.unknown_error_message,
                                style: context.headlineM?.copyWith(
                                  color: Colors.red.shade600,
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextWidget(
                                text:
                                    error?.message ??
                                    S.current.unknown_error_message,
                                style: context.bodyM?.copyWith(
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: _refreshData,
                                child: TextWidget(
                                  text: S.current.button_retry_title,
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
            ),
          );
        },
      ),
    );
  }
}

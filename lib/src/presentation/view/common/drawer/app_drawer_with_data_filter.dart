import 'package:flutter/material.dart';
import '../../../../core/utils/extension.dart';
import '../../../../core/config/app_colors.dart';
import '../text_widget.dart';
import '../filters/global_data_type_filter.dart';

class AppDrawerWithDataFilter extends StatefulWidget {
  final Function(DataType dataType)? onNavigateToDataType;
  final Function(List<DataType> selectedTypes)? onFiltersChanged;
  final Map<DataType, int>? dataCounts;
  final String? userTitle;
  final String? userSubtitle;
  final String? userAvatarUrl;

  const AppDrawerWithDataFilter({
    super.key,
    this.onNavigateToDataType,
    this.onFiltersChanged,
    this.dataCounts,
    this.userTitle,
    this.userSubtitle,
    this.userAvatarUrl,
  });

  @override
  State<AppDrawerWithDataFilter> createState() =>
      _AppDrawerWithDataFilterState();
}

class _AppDrawerWithDataFilterState extends State<AppDrawerWithDataFilter> {
  GlobalDataTypeFilterModel currentFilter = const GlobalDataTypeFilterModel();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            // Drawer Header
            _buildDrawerHeader(),

            // Data Filter Section
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Global Data Type Filter
                    GlobalDataTypeFilter(
                      initialFilter: currentFilter,
                      showInDrawer: true,
                      allowMultiSelect:
                          false, // Single selection for navigation
                      dataCounts: widget.dataCounts,
                      onDataTypeSelected: _onDataTypeSelected,
                      onNavigateToDataType: _onNavigateToDataType,
                    ),

                    // Divider
                    const Divider(height: 1),

                    // Additional Drawer Items
                    _buildAdditionalDrawerItems(),
                  ],
                ),
              ),
            ),

            // Drawer Footer
            _buildDrawerFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primaryColor,
            AppColors.primaryColor.withValues(alpha: 0.8),
          ],
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Avatar
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child:
                    widget.userAvatarUrl != null
                        ? ClipRRect(
                          borderRadius: BorderRadius.circular(28),
                          child: Image.network(
                            widget.userAvatarUrl!,
                            fit: BoxFit.cover,
                          ),
                        )
                        : Icon(Icons.person, size: 30, color: Colors.white),
              ),
              16.ph,

              // User Info
              TextWidget(
                text: widget.userTitle ?? "Car Rental System",
                style: context.titleM?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              4.ph,
              TextWidget(
                text: widget.userSubtitle ?? "Management Dashboard",
                style: context.bodyM?.copyWith(
                  color: Colors.white.withValues(alpha: 0.9),
                ),
              ),

              const Spacer(),

              // Filter Status
              if (currentFilter.hasActiveFilters)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.3),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.filter_alt, size: 14, color: Colors.white),
                      6.pw,
                      TextWidget(
                        text: "${currentFilter.activeFilterCount} active",
                        style: context.bodyS?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAdditionalDrawerItems() {
    return Column(
      children: [
        16.ph,

        // Quick Actions Section
        _buildSectionHeader("Quick Actions"),
        8.ph,

        _buildQuickActionItem(
          icon: Icons.add,
          title: "Add New Customer",
          subtitle: "Create customer profile",
          color: Colors.blue,
          onTap: () => _navigateToRoute("/add-customer"),
        ),

        _buildQuickActionItem(
          icon: Icons.car_rental,
          title: "New Rental",
          subtitle: "Start new rental process",
          color: Colors.green,
          onTap: () => _navigateToRoute("/new-rental"),
        ),

        _buildQuickActionItem(
          icon: Icons.assessment,
          title: "Generate Report",
          subtitle: "Create business reports",
          color: Colors.purple,
          onTap: () => _navigateToRoute("/reports"),
        ),

        16.ph,
        const Divider(height: 1),
        16.ph,

        // System Section
        _buildSectionHeader("System"),
        8.ph,

        _buildDrawerMenuItem(
          icon: Icons.backup,
          title: "Backup & Sync",
          onTap: () => _navigateToRoute("/backup"),
        ),

        _buildDrawerMenuItem(
          icon: Icons.help_outline,
          title: "Help & Support",
          onTap: () => _navigateToRoute("/help"),
        ),

        _buildDrawerMenuItem(
          icon: Icons.info_outline,
          title: "About",
          onTap: () => _navigateToRoute("/about"),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          TextWidget(
            text: title,
            style: context.labelM?.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.grey600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: color.withValues(alpha: 0.3)),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(icon, size: 20, color: color),
              ),
              12.pw,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: title,
                      style: context.labelM?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    2.ph,
                    TextWidget(
                      text: subtitle,
                      style: context.bodyS?.copyWith(color: AppColors.grey600),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 14, color: AppColors.grey500),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: AppColors.grey600),
      title: TextWidget(
        text: title,
        style: context.labelM?.copyWith(color: AppColors.textPrimaryColor),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 14,
        color: AppColors.grey500,
      ),
      onTap: onTap,
    );
  }

  Widget _buildDrawerFooter() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.grey100)),
      ),
      child: Column(
        children: [
          // Version info
          TextWidget(
            text: "Car Rental Management v2.1.0",
            style: context.bodyS?.copyWith(color: AppColors.grey500),
          ),
          8.ph,

          // Logout button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: _handleLogout,
              icon: const Icon(Icons.logout, size: 18),
              label: const TextWidget(text: "Logout"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.red,
                side: const BorderSide(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onDataTypeSelected(DataType dataType) {
    setState(() {
      currentFilter = currentFilter.copyWith(selectedTypes: [dataType]);
    });

    // Close drawer and navigate
    Navigator.pop(context);
    widget.onNavigateToDataType?.call(dataType);
  }

  void _onNavigateToDataType(DataType dataType) {
    // Close drawer
    Navigator.pop(context);

    // Navigate based on data type
    String route = _getRouteForDataType(dataType);
    Navigator.pushNamed(context, route);
  }

  String _getRouteForDataType(DataType dataType) {
    switch (dataType) {
      case DataType.customers:
        return "/customers";
      case DataType.payments:
        return "/payments";
      case DataType.vehicles:
        return "/vehicles";
      case DataType.locations:
        return "/locations";
      case DataType.contracts:
        return "/contracts";
      case DataType.inspections:
        return "/inspections";
      case DataType.maintenance:
        return "/maintenance";
      case DataType.reports:
        return "/reports";
      case DataType.settings:
        return "/settings";
      case DataType.notifications:
        return "/notifications";
    }
  }

  void _navigateToRoute(String route) {
    Navigator.pop(context); // Close drawer
    Navigator.pushNamed(context, route);
  }

  void _handleLogout() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const TextWidget(text: "Confirm Logout"),
            content: const TextWidget(text: "Are you sure you want to logout?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const TextWidget(text: "Cancel"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context); // Close drawer
                  // Implement logout logic here
                },
                child: const TextWidget(
                  text: "Logout",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
    );
  }
}

// Helper widget for easy integration
class DataTypeNavigationHelper {
  static Map<DataType, int> getSampleDataCounts() {
    return {
      DataType.customers: 1250,
      DataType.payments: 890,
      DataType.vehicles: 45,
      DataType.locations: 8,
      DataType.contracts: 234,
      DataType.inspections: 156,
      DataType.maintenance: 67,
      DataType.reports: 23,
      DataType.settings: 12,
      DataType.notifications: 5,
    };
  }

  static void handleDataTypeNavigation(
    BuildContext context,
    DataType dataType,
  ) {
    // You can implement your navigation logic here
    switch (dataType) {
      case DataType.customers:
        Navigator.pushNamed(context, "/customers");
        break;
      case DataType.payments:
        Navigator.pushNamed(context, "/payments");
        break;
      case DataType.vehicles:
        Navigator.pushNamed(context, "/vehicles");
        break;
      // Add other cases as needed
      default:
        Navigator.pushNamed(context, "/dashboard");
    }
  }
}

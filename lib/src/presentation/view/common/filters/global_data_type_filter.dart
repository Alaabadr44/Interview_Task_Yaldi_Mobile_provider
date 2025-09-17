import 'package:flutter/material.dart';
import '../../../../core/utils/extension.dart';
import '../../../../core/config/app_colors.dart';
import '../text_widget.dart';

enum DataType {
  customers,
  payments,
  vehicles,
  locations,
  contracts,
  inspections,
  maintenance,
  reports,
  settings,
  notifications,
}

class DataTypeInfo {
  final DataType type;
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final String route;
  final int? count;

  const DataTypeInfo({
    required this.type,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.route,
    this.count,
  });
}

class GlobalDataTypeFilterModel {
  final List<DataType> selectedTypes;
  final bool showCounts;
  final bool compactMode;

  const GlobalDataTypeFilterModel({
    this.selectedTypes = const [],
    this.showCounts = true,
    this.compactMode = false,
  });

  GlobalDataTypeFilterModel copyWith({
    List<DataType>? selectedTypes,
    bool? showCounts,
    bool? compactMode,
  }) {
    return GlobalDataTypeFilterModel(
      selectedTypes: selectedTypes ?? this.selectedTypes,
      showCounts: showCounts ?? this.showCounts,
      compactMode: compactMode ?? this.compactMode,
    );
  }

  bool get hasActiveFilters => selectedTypes.isNotEmpty;
  int get activeFilterCount => selectedTypes.length;
}

class GlobalDataTypeFilter extends StatefulWidget {
  final GlobalDataTypeFilterModel initialFilter;
  final Function(DataType dataType)? onDataTypeSelected;
  final Function(List<DataType> selectedTypes)? onFiltersChanged;
  final Function(DataType dataType)? onNavigateToDataType;
  final Map<DataType, int>? dataCounts;
  final bool showInDrawer;
  final bool allowMultiSelect;

  const GlobalDataTypeFilter({
    super.key,
    this.initialFilter = const GlobalDataTypeFilterModel(),
    this.onDataTypeSelected,
    this.onFiltersChanged,
    this.onNavigateToDataType,
    this.dataCounts,
    this.showInDrawer = false,
    this.allowMultiSelect = true,
  });

  @override
  State<GlobalDataTypeFilter> createState() => _GlobalDataTypeFilterState();
}

class _GlobalDataTypeFilterState extends State<GlobalDataTypeFilter> {
  late GlobalDataTypeFilterModel currentFilter;

  // Define all available data types with their information
  late List<DataTypeInfo> availableDataTypes;

  @override
  void initState() {
    super.initState();
    currentFilter = widget.initialFilter;
    _initializeDataTypes();
  }

  void _initializeDataTypes() {
    availableDataTypes = [
      DataTypeInfo(
        type: DataType.customers,
        title: "Customers",
        description: "Customer management and profiles",
        icon: Icons.people,
        color: Colors.blue,
        route: "/customers",
        count: widget.dataCounts?[DataType.customers],
      ),
      DataTypeInfo(
        type: DataType.payments,
        title: "Payments",
        description: "Payment transactions and billing",
        icon: Icons.payment,
        color: Colors.green,
        route: "/payments",
        count: widget.dataCounts?[DataType.payments],
      ),
      DataTypeInfo(
        type: DataType.vehicles,
        title: "Vehicles",
        description: "Fleet and vehicle management",
        icon: Icons.directions_car,
        color: Colors.orange,
        route: "/vehicles",
        count: widget.dataCounts?[DataType.vehicles],
      ),
      DataTypeInfo(
        type: DataType.locations,
        title: "Locations",
        description: "Branches and service locations",
        icon: Icons.location_on,
        color: Colors.red,
        route: "/locations",
        count: widget.dataCounts?[DataType.locations],
      ),
      DataTypeInfo(
        type: DataType.contracts,
        title: "Contracts",
        description: "Rental agreements and contracts",
        icon: Icons.description,
        color: Colors.purple,
        route: "/contracts",
        count: widget.dataCounts?[DataType.contracts],
      ),
      DataTypeInfo(
        type: DataType.inspections,
        title: "Inspections",
        description: "Vehicle inspections and reports",
        icon: Icons.search,
        color: Colors.teal,
        route: "/inspections",
        count: widget.dataCounts?[DataType.inspections],
      ),
      DataTypeInfo(
        type: DataType.maintenance,
        title: "Maintenance",
        description: "Vehicle maintenance and service",
        icon: Icons.build,
        color: Colors.brown,
        route: "/maintenance",
        count: widget.dataCounts?[DataType.maintenance],
      ),
      DataTypeInfo(
        type: DataType.reports,
        title: "Reports",
        description: "Analytics and reporting",
        icon: Icons.analytics,
        color: Colors.indigo,
        route: "/reports",
        count: widget.dataCounts?[DataType.reports],
      ),
      DataTypeInfo(
        type: DataType.settings,
        title: "Settings",
        description: "Application settings and preferences",
        icon: Icons.settings,
        color: Colors.grey,
        route: "/settings",
        count: widget.dataCounts?[DataType.settings],
      ),
      DataTypeInfo(
        type: DataType.notifications,
        title: "Notifications",
        description: "Alerts and notifications",
        icon: Icons.notifications,
        color: Colors.amber,
        route: "/notifications",
        count: widget.dataCounts?[DataType.notifications],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    if (widget.showInDrawer) {
      return _buildDrawerVersion();
    } else {
      return _buildHeaderVersion();
    }
  }

  Widget _buildDrawerVersion() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          _buildSectionHeader("Data Modules"),
          16.ph,

          // Filter chips (if multi-select enabled)
          if (widget.allowMultiSelect && currentFilter.hasActiveFilters) ...[
            _buildActiveFiltersSection(),
            16.ph,
          ],

          // Data type list
          ...availableDataTypes.map(
            (dataType) => _buildDrawerDataTypeItem(dataType),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderVersion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with filter summary
          Row(
            children: [
              Icon(Icons.filter_list, size: 20, color: AppColors.primaryColor),
              8.pw,
              TextWidget(
                text: "Quick Filters",
                style: context.labelM?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              const Spacer(),
              if (currentFilter.hasActiveFilters)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextWidget(
                    text: currentFilter.activeFilterCount.toString(),
                    style: context.bodyS?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
          12.ph,

          // Filter chips
          _buildFilterChips(),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      children: [
        Icon(Icons.dashboard, size: 20, color: AppColors.primaryColor),
        8.pw,
        TextWidget(
          text: title,
          style: context.titleM?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimaryColor,
          ),
        ),
        const Spacer(),
        if (currentFilter.hasActiveFilters)
          TextButton(
            onPressed: _clearAllFilters,
            child: TextWidget(
              text: "Clear All",
              style: context.bodyS?.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildActiveFiltersSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.primaryColor.withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.filter_alt, size: 16, color: AppColors.primaryColor),
              6.pw,
              TextWidget(
                text: "Active Filters",
                style: context.bodyS?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
              ),
              const Spacer(),
              TextWidget(
                text: "${currentFilter.activeFilterCount} selected",
                style: context.bodyS?.copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
          8.ph,
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children:
                currentFilter.selectedTypes.map((type) {
                  final dataTypeInfo = availableDataTypes.firstWhere(
                    (dt) => dt.type == type,
                  );
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: dataTypeInfo.color.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          dataTypeInfo.icon,
                          size: 12,
                          color: dataTypeInfo.color,
                        ),
                        4.pw,
                        TextWidget(
                          text: dataTypeInfo.title,
                          style: context.bodyS?.copyWith(
                            color: dataTypeInfo.color,
                            fontWeight: FontWeight.w600,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerDataTypeItem(DataTypeInfo dataType) {
    final isSelected = currentFilter.selectedTypes.contains(dataType.type);

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () => _onDataTypeItemTapped(dataType),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color:
                isSelected
                    ? dataType.color.withValues(alpha: 0.1)
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color:
                  isSelected
                      ? dataType.color.withValues(alpha: 0.3)
                      : AppColors.grey100,
            ),
          ),
          child: Row(
            children: [
              // Icon
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: dataType.color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(dataType.icon, size: 20, color: dataType.color),
              ),
              12.pw,

              // Title and description
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: dataType.title,
                      style: context.labelM?.copyWith(
                        fontWeight: FontWeight.w600,
                        color:
                            isSelected
                                ? dataType.color
                                : AppColors.textPrimaryColor,
                      ),
                    ),
                    2.ph,
                    TextWidget(
                      text: dataType.description,
                      style: context.bodyS?.copyWith(color: AppColors.grey600),
                    ),
                  ],
                ),
              ),

              // Count badge
              if (dataType.count != null && currentFilter.showCounts) ...[
                8.pw,
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: dataType.color.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextWidget(
                    text: dataType.count.toString(),
                    style: context.bodyS?.copyWith(
                      color: dataType.color,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ),
              ],

              // Selection indicator
              if (widget.allowMultiSelect) ...[
                8.pw,
                Icon(
                  isSelected
                      ? Icons.check_circle
                      : Icons.radio_button_unchecked,
                  size: 20,
                  color: isSelected ? dataType.color : AppColors.grey500,
                ),
              ] else ...[
                8.pw,
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColors.grey500,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterChips() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children:
          availableDataTypes.map((dataType) {
            final isSelected = currentFilter.selectedTypes.contains(
              dataType.type,
            );
            return GestureDetector(
              onTap: () => _onDataTypeChipTapped(dataType),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? dataType.color : AppColors.grey100,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: isSelected ? dataType.color : AppColors.grey100,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      dataType.icon,
                      size: 16,
                      color: isSelected ? Colors.white : dataType.color,
                    ),
                    6.pw,
                    TextWidget(
                      text: dataType.title,
                      style: context.bodyM?.copyWith(
                        color:
                            isSelected
                                ? Colors.white
                                : AppColors.textPrimaryColor,
                        fontWeight:
                            isSelected ? FontWeight.w600 : FontWeight.normal,
                      ),
                    ),
                    if (dataType.count != null && currentFilter.showCounts) ...[
                      6.pw,
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color:
                              isSelected
                                  ? Colors.white.withValues(alpha: 0.3)
                                  : dataType.color.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextWidget(
                          text: dataType.count.toString(),
                          style: context.bodyS?.copyWith(
                            color: isSelected ? Colors.white : dataType.color,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          }).toList(),
    );
  }

  void _onDataTypeItemTapped(DataTypeInfo dataType) {
    if (widget.allowMultiSelect) {
      _toggleDataTypeSelection(dataType.type);
    } else {
      // Single selection - navigate directly
      widget.onNavigateToDataType?.call(dataType.type);
      widget.onDataTypeSelected?.call(dataType.type);
    }
  }

  void _onDataTypeChipTapped(DataTypeInfo dataType) {
    if (widget.allowMultiSelect) {
      _toggleDataTypeSelection(dataType.type);
    } else {
      _selectSingleDataType(dataType.type);
    }
  }

  void _toggleDataTypeSelection(DataType dataType) {
    setState(() {
      final selectedTypes = List<DataType>.from(currentFilter.selectedTypes);
      if (selectedTypes.contains(dataType)) {
        selectedTypes.remove(dataType);
      } else {
        selectedTypes.add(dataType);
      }
      currentFilter = currentFilter.copyWith(selectedTypes: selectedTypes);
    });

    widget.onFiltersChanged?.call(currentFilter.selectedTypes);
  }

  void _selectSingleDataType(DataType dataType) {
    setState(() {
      currentFilter = currentFilter.copyWith(selectedTypes: [dataType]);
    });

    widget.onDataTypeSelected?.call(dataType);
    widget.onFiltersChanged?.call(currentFilter.selectedTypes);
  }

  void _clearAllFilters() {
    setState(() {
      currentFilter = currentFilter.copyWith(selectedTypes: []);
    });

    widget.onFiltersChanged?.call([]);
  }
}

// Helper extension for easy integration
extension GlobalDataTypeFilterExtension on BuildContext {
  Future<void> showDataTypeFilterDialog({
    GlobalDataTypeFilterModel initialFilter = const GlobalDataTypeFilterModel(),
    Function(List<DataType> selectedTypes)? onFiltersChanged,
    Map<DataType, int>? dataCounts,
  }) {
    return showDialog(
      context: this,
      builder:
          (context) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              constraints: const BoxConstraints(maxHeight: 600, maxWidth: 400),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Header
                  Row(
                    children: [
                      Icon(Icons.tune, color: AppColors.primaryColor),
                      8.pw,
                      TextWidget(
                        text: "Filter Data Types",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                  16.ph,

                  // Filter content
                  Expanded(
                    child: GlobalDataTypeFilter(
                      initialFilter: initialFilter,
                      onFiltersChanged: onFiltersChanged,
                      dataCounts: dataCounts,
                      allowMultiSelect: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

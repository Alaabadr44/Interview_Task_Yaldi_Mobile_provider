// Flutter imports:
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Project imports:

import '../../../../core/utils/api_info.dart';
import '../../../../core/utils/enums.dart';
import 'data_generic_provider.dart';
import 'data_provider_state.dart';

/// Consumer widget for listening to DataGenericProvider changes
class DataProviderConsumer<T> extends StatelessWidget {
  final Widget Function(BuildContext context, DataProviderState<T> state,
      DataGenericProvider<T> provider) builder;
  final Widget Function(BuildContext context)? loading;
  final Widget Function(BuildContext context, String error)? error;

  const DataProviderConsumer({
    super.key,
    required this.builder,
    this.loading,
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<DataGenericProvider<T>>(
      builder: (context, provider, child) {
        final state = provider.state;

        // Handle error state
        if (state.isError && error != null) {
          return error!(context, state.error?.message ?? 'Unknown error');
        }

        // Handle loading state
        if (state.isLoading && loading != null) {
          return loading!(context);
        }

        return builder(context, state, provider);
      },
    );
  }
}

/// Selector widget for optimized listening to specific parts of the state
class DataProviderSelector<T, R> extends StatelessWidget {
  final R Function(DataProviderState<T>) selector;
  final Widget Function(
      BuildContext context, R value, DataGenericProvider<T> provider) builder;
  final bool Function(R, R)? shouldRebuild;

  const DataProviderSelector({
    super.key,
    required this.selector,
    required this.builder,
    this.shouldRebuild,
  });

  @override
  Widget build(BuildContext context) {
    return Selector<DataGenericProvider<T>, R>(
      selector: (context, provider) => selector(provider.state),
      shouldRebuild: shouldRebuild,
      builder: (context, value, child) {
        final provider =
            Provider.of<DataGenericProvider<T>>(context, listen: false);
        return builder(context, value, provider);
      },
    );
  }
}

/// Provider wrapper that automatically initializes and disposes the DataGenericProvider
class DataProviderWrapper<T> extends StatelessWidget {
  final ApiInfo? initialQuery;
  final Widget Function(BuildContext context) builder;
  final bool autoFetch;

  const DataProviderWrapper({
    super.key,
    this.initialQuery,
    required this.builder,
    this.autoFetch = false,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataGenericProvider<T>>(
      create: (context) {
        final provider = DataGenericProvider<T>(query: initialQuery);
        if (autoFetch && initialQuery != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            provider.getGeneralData(queryParams: initialQuery!);
          });
        }
        return provider;
      },
      child: Builder(builder: builder),
    );
  }
}

/// Easy-to-use widget that combines ChangeNotifierProvider and Consumer
class DataProviderBuilder<T> extends StatelessWidget {
  final ApiInfo? initialQuery;
  final Widget Function(BuildContext context, DataProviderState<T> state,
      DataGenericProvider<T> provider) builder;
  final Widget Function(BuildContext context)? loading;
  final Widget Function(BuildContext context, String error)? error;
  final bool autoFetch;

  const DataProviderBuilder({
    super.key,
    this.initialQuery,
    required this.builder,
    this.loading,
    this.error,
    this.autoFetch = false,
  });

  @override
  Widget build(BuildContext context) {
    return DataProviderWrapper<T>(
      initialQuery: initialQuery,
      autoFetch: autoFetch,
      builder: (context) => DataProviderConsumer<T>(
        builder: builder,
        loading: loading,
        error: error,
      ),
    );
  }
}

/// Helper extension for easy access to DataGenericProvider
extension DataProviderBuildContext on BuildContext {
  DataGenericProvider<T> dataProvider<T>({bool listen = false}) {
    return Provider.of<DataGenericProvider<T>>(this, listen: listen);
  }

  DataProviderState<T> dataProviderState<T>() {
    return Provider.of<DataGenericProvider<T>>(this).state;
  }
}

/// Provider helper methods
class DataProviderHelper {
  /// Get data with index operation (list/pagination)
  static Future<void> getIndexData<T>(
    BuildContext context, {
    required ApiInfo queryParams,
    String? eventId,
    bool listWithoutPagination = false,
    ApiRequestType apiMethod = ApiRequestType.get,
  }) async {
    final provider = context.dataProvider<T>();
    await provider.getIndexData(
      queryParams: queryParams,
      eventId: eventId,
      listWithoutPagination: listWithoutPagination,
      apiMethod: apiMethod,
    );
  }

  /// Get general data
  static Future<void> getGeneralData<T>(
    BuildContext context, {
    required ApiInfo queryParams,
    String? eventId,
    bool deferentApi = false,
    List<List<String>>? keysData,
    ApiRequestType apiMethod = ApiRequestType.get,
  }) async {
    final provider = context.dataProvider<T>();
    await provider.getGeneralData(
      queryParams: queryParams,
      eventId: eventId,
      deferentApi: deferentApi,
      keysData: keysData,
      apiMethod: apiMethod,
    );
  }

  /// Store data
  static Future<void> storeData<T>(
    BuildContext context, {
    required ApiInfo queryParams,
    String? id,
    String? title,
    ApiRequestType apiMethod = ApiRequestType.post,
    bool deferentApi = false,
  }) async {
    final provider = context.dataProvider<T>();
    await provider.storeData(
      queryParams: queryParams,
      id: id,
      title: title,
      apiMethod: apiMethod,
      deferentApi: deferentApi,
    );
  }

  /// Update data
  static Future<void> updateData<T>(
    BuildContext context, {
    required ApiInfo queryParams,
    String? id,
    ApiRequestType apiMethod = ApiRequestType.post,
  }) async {
    final provider = context.dataProvider<T>();
    await provider.updateData(
      queryParams: queryParams,
      id: id,
      apiMethod: apiMethod,
    );
  }

  /// Refresh data
  static Future<void> refresh<T>(BuildContext context) async {
    final provider = context.dataProvider<T>();
    await provider.refresh();
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dio/dio.dart' show CancelToken, Interceptor;
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:uuid/uuid.dart';

// Project imports:
import '../../../../core/config/injector.dart';
import '../../../../core/services/dio_service.dart';
import '../../../../core/utils/api_info.dart';
import '../../../../core/utils/file_model.dart';
import '../../../../data/data_sources/remote/dio_api_service.dart';
import '../../../../data/models/api_response_model.dart';
import '../../../../data/models/meta_pagination_model.dart';
import '../../../../data/repositories/remote_app_repository_imp.dart';
import '../../../../domain/use_cases/remote/auth_user_use_case.dart';
import '../../../../domain/use_cases/remote/deferent_api_use_case.dart';
import '../../../../domain/use_cases/remote/get_general_data_use_case.dart';
import '../../../../domain/use_cases/remote/get_index_data_use_case.dart';
import '../../../../domain/use_cases/remote/get_list_data_use_case.dart';
import '../../../../domain/use_cases/remote/store_use_case.dart';
import '../data_provider/data_generic_provider.dart';
import 'provider_progress_helper.dart';
import 'provider_progress_model.dart';

class BaseProviderHelper<MODEL> {
  final GetGeneralDataUseCase<MODEL> getGeneralDataUseCase =
      GetGeneralDataUseCase<MODEL>(injector());
  final GetIndexDataUseCase<MODEL> getIndexDataUseCase =
      GetIndexDataUseCase<MODEL>(injector());
  final GetListDataUseCase<MODEL> getListDataUseCase =
      GetListDataUseCase<MODEL>(injector());
  final StoreUseCase<MODEL> storeUseCase = StoreUseCase<MODEL>(injector());

  final AuthUserUseCase<MODEL> authUserUseCase = AuthUserUseCase<MODEL>(
    injector(),
  );

  DioService? dioService;
  DeferentApiUseCase<MODEL>? getDataDeferentApiUseCase;

  // TODO: local data
  /* final GetLocalData<MODEL> getLocalUseCase = GetLocalData<MODEL>(injector());
  final StoreLocalData<bool> storeLocalUseCase = StoreLocalData<bool>(injector());
  final RemoveKeyLocalData<bool> removeKeyLocalUseCase = RemoveKeyLocalData<bool>(injector());
  final RemoveBoxLocalData<bool> removeBoxLocalUseCase = RemoveBoxLocalData<bool>(injector());
  final ClearLocalData<bool> clearLocalUseCase = ClearLocalData<bool>(injector()); */

  final DataGenericProvider<MODEL> provider;
  ApiInfo? query;
  PagingController<int, MODEL>? controller;
  CancelToken? cancelToken;

  BaseProviderHelper({required this.provider, this.query}) {
    // if(query != null) {
    initQueries();
    // }
  }

  Map<String, dynamic>? initQueries({
    ApiInfo? pQuery,
    bool? isPagination = true,
  }) {
    query ??= pQuery;
    if (query != null && isPagination!) {
      Map<String, dynamic> map = {
        'page': query?.page,
        'per_page': query?.pageSize,
      };
      if (query!.queries != null && query!.queries!.isNotEmpty) {
        query!.queries!.addAll(map);
      } else {
        query?.queries = map;
      }
      return query?.queries;
    }
    return null;
  }

  DeferentApiUseCase<MODEL> initDeferentApiUseCase(
    ApiInfo apiInfo, [
    List<Interceptor>? newInterceptors,
  ]) {
    if (getDataDeferentApiUseCase == null) {
      dioService = injector<DioService>().copy(
        newBaseOptions: DioService.initBaseOptions(
          baseUrl: apiInfo.baseUrl,
          header: apiInfo.header,
        ),
        newInterceptors: newInterceptors,
      );
      DioApiService apiService = DioApiService(dio: dioService!.dio);
      getDataDeferentApiUseCase ??= DeferentApiUseCase<MODEL>(
        RemoteAppRepositoryImp(apiService),
      );
    }
    return getDataDeferentApiUseCase!;
  }

  void initializeController() {
    controller = PagingController<int, MODEL>(
      firstPageKey: query?.queries?['page'],
      invisibleItemsThreshold: query?.queries?['per_page'],
    );
    controller?.removePageRequestListener(_fetchData);
    controller?.addPageRequestListener(_fetchData);
  }

  void _fetchData(int pageKey) {
    query?.queries?['page'] = pageKey;
    query?.page = pageKey;
    provider.getIndexData(queryParams: query!);
  }

  int? currentPage;

  void newSettingForPagination(ApiResponseModel<List<MODEL>> pagination) {
    query?.queries?['page']++;
    bool noMore = _noMoreData(pagination.meta);
    if (noMore) {
      controller?.appendLastPage(pagination.data!);
      // controller?.removePageRequestListener(_fetchData);
    } else {
      // controller?.removePageRequestListener(_fetchData);
      controller?.appendPage(pagination.data!, query?.queries?['page']);
      /* if (currentPage != null) {
        EasyDebounce.cancel('$currentPage');
      }
      currentPage = pagination.currentPage;
      EasyDebounce.debounce(
        '$currentPage',
        const Duration(milliseconds: 500),
        () => controller?.appendPage(pagination.data, query?.queries?['page']),
      ); */
    }
  }

  bool _noMoreData(MetaPaginationModel? meta) {
    return meta!.currentPage! >= meta.lastPage!;
    // if (controller?.itemList != null) {
    //   return controller!.itemList!.length >= pagination.total ||
    //       query?.queries?['count'] != pagination.data.length;
    // } else {
    //   return pagination.total <= query?.queries?['count'] ? true : false;
    // }
  }

  void disposeController() {
    if (controller != null) {
      controller?.removePageRequestListener(_fetchData);
      controller?.dispose();
      controller = null;
    }
  }

  Map<String, dynamic> getDataForStore(ApiInfo query) {
    Map<String, dynamic> map = {};
    dynamic bodyData = query.body;
    if (bodyData is GlobalKey<FormBuilderState>) {
      for (var field in bodyData.currentState!.fields.entries) {
        if (field.value.value != null &&
            field.value.value.toString().isNotEmpty) {
          map[field.key] = _convertToMappableType(field.value.transformedValue);
        }
      }
    } else {
      if (query.body != null) {
        map.addAll(bodyData as Map<String, dynamic>);
      }
    }
    return map;
  }

  ProviderProgressModel? addProgress({
    String? title,
    CancelToken? cancelToken,
  }) {
    if (title != null && title.isNotEmpty) {
      ProviderProgressModel progressModel = ProviderProgressModel(
        id: const Uuid().v4(),
        cancelToken: cancelToken ?? this.cancelToken,
        title: title,
      );
      injector<ProviderProgressHelper>().addNewProgress(progressModel);
      return progressModel;
    }
    return null;
  }

  dynamic _convertToMappableType(dynamic data) {
    if (data is String ||
        data is int ||
        data is double ||
        data is bool ||
        data == null) {
      return data;
    } else if (data is FileModel) {
      return data;
    } else if (data is List<FileModel>) {
      return data;
    } else if (data is DateTime) {
      return data.toUtc().toIso8601String();
    } else if (data is List) {
      return data.map((e) => _convertToMappableType(e)).toList();
    } else if (data is Map) {
      return data.map(
        (key, value) => MapEntry(key, _convertToMappableType(value)),
      );
    } else if (data is Enum) {
      return data.name;
    } else {
      return data.toJson();
    }
  }

  /* bool noMoreData(ApiPaginationModel<MODEL> pagination) {
    if (controller?.itemList != null) {
      return query?.resultCount == null
          ? controller!.itemList!.length >= pagination.total || query?.pageSize != pagination.data.length
          : pagination.total > query!.resultCount!
              ? controller!.itemList!.length >= query!.resultCount!
              : controller!.itemList!.length >= pagination.total;
    } else {
      return pagination.total <= query!.pageSize! ? true : false;
    }
  } */
}

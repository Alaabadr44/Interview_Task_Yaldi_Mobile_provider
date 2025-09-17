/* // Dart imports:

// Dart imports:
import 'dart:async';

// Package imports:
import 'package:dio/dio.dart' show CancelToken;
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../../../../core/utils/data_state.dart';
import '../../../../core/utils/extension.dart';
import '../assistance/base_bloc_helper.dart';
import '../bloc_assist.dart';
import 'local_data_event.dart';
import 'local_data_state.dart';

class LocalDataBloc<MODEL> extends Bloc<LocalDataEvent, LocalDataState<MODEL>> with BlocAssist{

  BaseBlocHelper<MODEL>? _helper;
  
  LocalDataBloc() : super(const LocalDataIdle()) {
    _helper = BaseBlocHelper<MODEL>(bloc: this);
    on<LocalStoreData>(_store);
    on<LocalIndexData>(_index);
    on<LocalRemoveData>(_remove);
    on<LocalClearData>(_clear);
  }

  FutureOr<void> _index(LocalIndexData event, Emitter<LocalDataState<MODEL>> emit) async {
    emit(LocalDataLoading<MODEL>(event: event));
    final dataState = await _helper!.getLocalUseCase(query: event.localParams);
    dataState.when(
      success: (data) => emit(LocalDataSuccess<MODEL>(data: data, event: event)), 
      failure: (error) => emit(LocalDataError<MODEL>(error: error, event: event)),
    );
  }

  FutureOr<void> _store(LocalStoreData event, Emitter<LocalDataState<MODEL>> emit) async{
    emit(LocalDataLoading<MODEL>(event: event));
    final dataState = await _helper!.storeLocalUseCase(query: event.localParams);
    dataState.when(
      success: (data) => emit(LocalDataSuccess<MODEL>(data: data as MODEL, event: event)), 
      failure: (error) => emit(LocalDataError<MODEL>(error: error, event: event)),
    );
  }

  FutureOr<void> _remove(LocalRemoveData event, Emitter<LocalDataState<MODEL>> emit) async{
    emit(LocalDataLoading<MODEL>(event: event));
    final DataState<bool> dataState;

    if(event.localParams.dataKey.isNotNull){
      dataState = await _helper!.removeKeyLocalUseCase(query: event.localParams);
    }else{
      dataState = await _helper!.removeBoxLocalUseCase(query: event.localParams);
    }

    dataState.when(
      success: (data) => emit(LocalDataSuccess<MODEL>(data: data as MODEL, event: event)), 
      failure: (error) => emit(LocalDataError<MODEL>(error: error, event: event)),
    );
  }

  FutureOr<void> _clear(LocalClearData event, Emitter<LocalDataState<MODEL>> emit) async{
    emit(LocalDataLoading<MODEL>(event: event));
    final dataState = await _helper!.clearLocalUseCase(query: event.localParams);
    dataState.when(
      success: (data) => emit(LocalDataSuccess<MODEL>(data: data as MODEL, event: event)), 
      failure: (error) => emit(LocalDataError<MODEL>(error: error, event: event)),
    );
  }

  @override
  CancelToken? get cancelRequest => throw UnimplementedError();
}
 */

// Project imports:
import '../../../data/models/api_response_model.dart';
import '../../repositories/model_type.dart';

ApiResponseModel<T> parseApiResponse<T>(dynamic response) {
  return ApiResponseModel<T>.fromJson(response, (json) => parseModel<T>(json));
}

// ApiResponseModel<ApiPaginationModel<T>> parseApiPagination<T>(
//   ApiResponseModel<ApiPaginationModel> args,
//   List Function(List data)? filter,
// ) {
//   List<T>? result;
//   var modelFactory = ModelType.getModel<T>();
//   List filterData = _getFilterData(filter: filter, data: args.data!.data);
//   if (modelFactory != null) {
//     result = filterData.map<T>((json) => modelFactory(json)).toList();
//   } else {
//     result = filterData.map<T>((json) => parseModel<T>(json)).toList();
//   }
//   args.data?.copyWithChangeType<T>(data: result);
//   return args.copyWithChangeType<ApiPaginationModel<T>>(data: args.data?.copyWithChangeType<T>(data: result));
// }

ApiResponseModel<List<T>> parseApiList<T>(ApiResponseModel<List> args) {
  List<T>? result;
  var modelFactory = ModelType.getModel<T>();
  if (modelFactory != null) {
    result = args.data?.map<T>((json) => modelFactory(json)).toList();
  } else {
    result = args.data?.map<T>((json) => parseModel<T>(json)).toList();
  }
  return args.copyWithChangeType<List<T>>(data: result);
}

T parseModel<T>(dynamic json) {
  try {
    return ModelType.getParseData<T>(json);
  } catch (e) {
    throw UnsupportedError(
      'Unsupported type for parsing: $T \nPlease Add {$T} inside ModelType',
    );
  }
}

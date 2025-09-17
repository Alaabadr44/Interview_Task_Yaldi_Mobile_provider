// ignore_for_file: public_member_api_docs, sort_constructors_first

// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'meta_pagination_model.dart';

part 'api_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true, constructor: '_')
class ApiResponseModel<T> {
  final String status;
  final String? message;
  final T? data;
  final MetaPaginationModel? meta;

  const ApiResponseModel._({
    required this.status,
    required this.message,
    required this.data,
    this.meta,
  });

  factory ApiResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    if (json['data'] == null) {
      return ApiResponseModel._(
        status: json['status'],
        message: json['message'],
        meta: json['meta'],
        data: null,
      );
    }
    return _$ApiResponseModelFromJson<T>(json, fromJsonT);
  }

  // Map<String, dynamic> toMap() => _$ArticleModelToJson(this);

  @override
  String toString() =>
      'ApiResponseModel(status: $status, message: $message, data: $data)';

  ApiResponseModel<M> copyWithChangeType<M>({
    String? status,
    String? message,
    M? data,
    MetaPaginationModel? meta,
  }) {
    return ApiResponseModel<M>._(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data as M,
      meta: meta ?? this.meta,
    );
  }

  ApiResponseModel<T> copyWith({
    String? status,
    String? message,
    T? data,
    MetaPaginationModel? meta,
  }) {
    return ApiResponseModel<T>._(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }
}

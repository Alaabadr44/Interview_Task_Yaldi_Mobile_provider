// ignore_for_file: public_member_api_docs, sort_constructors_first

// Package imports:
import 'package:dio/dio.dart' show CancelToken;

class ProviderProgressModel {
  final String id;
  final CancelToken? cancelToken;
  final String? title;
  final int? total;
  final int? count;
  final bool? success;

  ProviderProgressModel({
    required this.id,
    this.cancelToken,
    this.title,
    this.total,
    this.count,
    this.success,
  });

  ProviderProgressModel copyWith({
    String? id,
    CancelToken? cancelToken,
    String? title,
    int? total,
    int? count,
    bool? success,
  }) {
    return ProviderProgressModel(
      id: id ?? this.id,
      cancelToken: cancelToken ?? this.cancelToken,
      title: title ?? this.title,
      total: total ?? this.total,
      count: count ?? this.count,
      success: success ?? this.success,
    );
  }
}

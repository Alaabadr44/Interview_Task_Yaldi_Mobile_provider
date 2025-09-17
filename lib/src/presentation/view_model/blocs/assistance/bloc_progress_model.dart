// ignore_for_file: public_member_api_docs, sort_constructors_first

// Package imports:
import 'package:dio/dio.dart' show CancelToken;

class BlocProgressModel {
  final String id;
  final CancelToken? cancelToken;
  final String title;
  int? total;
  int? count;
  bool? succeeded;

  BlocProgressModel({
    required this.id,
    required this.cancelToken,
    required this.title,
    this.total,
    this.count,
    this.succeeded,
  });

  @override
  String toString() {
    return 'BlocProgressModel(id: $id, cancelToken: $cancelToken, title: $title, total: $total, count: $count, succeeded: $succeeded)';
  }

  BlocProgressModel copyWith({
    String? id,
    CancelToken? cancelToken,
    String? title,
    int? total,
    int? count,
    bool? succeeded,
  }) {
    return BlocProgressModel(
      id: id ?? this.id,
      cancelToken: cancelToken ?? this.cancelToken,
      title: title ?? this.title,
      total: total ?? this.total,
      count: count ?? this.count,
      succeeded: succeeded ?? this.succeeded,
    );
  }
}

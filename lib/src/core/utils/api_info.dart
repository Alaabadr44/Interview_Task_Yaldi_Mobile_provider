// ignore_for_file: public_member_api_docs, sort_constructors_first

// Project imports:
import 'constant.dart';

class ApiInfo {
  String? baseUrl;
  String endpoint;
  Map<String, dynamic>? body;
  Map<String, dynamic>? queries;
  Map<String, dynamic>? header;
  Map<String, dynamic>? files;
  int? pageSize;
  int? page;
  List<dynamic> Function(List<dynamic> data)? filter;
  bool? isDummyData;

  ApiInfo({
    this.baseUrl,
    required this.endpoint,
    this.body,
    this.queries,
    this.header,
    this.files,
    this.pageSize = 10,
    this.page = 1,
    this.filter,
    this.isDummyData = false,
  }) {
    this.baseUrl = kBaseUrl;
  }

  ApiInfo copyWith({
    String? baseUrl,
    String? endpoint,
    dynamic body,
    Map<String, dynamic>? queries,
    Map<String, dynamic>? header,
    Map<String, dynamic>? files,
    int? pageSize,
    int? page,
    List<dynamic> Function(List<dynamic> data)? filter,
    bool? isDummyData,
  }) {
    return ApiInfo(
      baseUrl: baseUrl ?? this.baseUrl,
      endpoint: endpoint ?? this.endpoint,
      body: body ?? this.body,
      queries: queries ?? this.queries,
      header: header ?? this.header,
      files: files ?? this.files,
      pageSize: pageSize ?? this.pageSize,
      page: page ?? this.page,
      filter: filter ?? this.filter,
      isDummyData: isDummyData ?? this.isDummyData,
    );
  }

  @override
  String toString() {
    return 'ApiInfo(baseUrl: $baseUrl, endpoint: $endpoint, body: $body, queries: $queries, header: $header, files: $files, pageSize: $pageSize, page: $page, filter: $filter)';
  }
}

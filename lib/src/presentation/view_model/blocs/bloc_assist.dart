// Package imports:
import 'package:dio/dio.dart' show CancelToken;

mixin BlocAssist {
  CancelToken? get cancelRequest;
  // bool get blocIsClosed;

  // void addEvent(dynamic event);

  void cancel(String cancelMessage) {
    if (cancelRequest != null && !cancelRequest!.isCancelled) {
      cancelRequest?.cancel(cancelMessage);
    }
  }
}

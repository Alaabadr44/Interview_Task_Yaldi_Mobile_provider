// ignore_for_file: public_member_api_docs, sort_constructors_first

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'provider_progress_model.dart';

class ProviderProgressHelper extends ChangeNotifier {
  final List<ProviderProgressModel> _progressList = [];

  List<ProviderProgressModel> get progressList => _progressList;

  void addNewProgress(ProviderProgressModel progressModel) {
    _progressList.add(progressModel);
    notifyListeners();
  }

  void removeProgress(String id) {
    _progressList.removeWhere((element) => element.id == id);
    notifyListeners();
  }

  void updateProgress(String? id, {int? total, int? count, bool? success}) {
    if (id != null) {
      for (var i = 0; i < _progressList.length; i++) {
        if (id == _progressList[i].id) {
          _progressList[i] = _progressList[i].copyWith(
            total: total,
            count: count,
            success: success,
          );
          notifyListeners();
          break;
        }
      }
    }
  }

  void clearAllProgress() {
    _progressList.clear();
    notifyListeners();
  }

  ProviderProgressModel? getProgressById(String id) {
    try {
      return _progressList.firstWhere((element) => element.id == id);
    } catch (e) {
      return null;
    }
  }

  bool hasProgress(String id) {
    return _progressList.any((element) => element.id == id);
  }
}

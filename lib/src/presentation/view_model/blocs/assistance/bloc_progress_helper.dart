// Flutter imports:
import 'package:flutter/material.dart' show ChangeNotifier;

// Project imports:
import '../../../../core/utils/extension.dart';
import 'bloc_progress_model.dart';

class BlocProgressHelper extends ChangeNotifier {
  final List<BlocProgressModel> allProgress = [];

  int? downloadedSize;
  int? totalSize;

  void addNewProgress(BlocProgressModel progress) {
    allProgress.add(progress);
    notifyListeners();
  }

  void updateProgress(String? id, {int? total, int? count, bool? success}) {
    if (id.isNotNull) {
      int? requestsSize;
      for (var i = 0; i < allProgress.length; i++) {
        if (success == null) {
          requestsSize = 0;
          requestsSize = requestsSize + (allProgress[i].total ?? 0);
          totalSize = requestsSize;
        }
        if (id == allProgress[i].id) {
          if (success != null) {
            allProgress[i] = minusStoredRequestFromTotalRequest(allProgress[i], success);
          } else {
            allProgress[i] = addStoredPercentage(allProgress[i], count, total);
          }
          notifyListeners();
        }
      }
    }
  }

  BlocProgressModel minusStoredRequestFromTotalRequest(BlocProgressModel model, bool state) {
    totalSize = ((totalSize ?? 0) - (model.total ?? 0)).abs();
    downloadedSize = ((downloadedSize ?? 0) - (model.count ?? 0)).abs();
    return model.copyWith(succeeded: state);
  }

  BlocProgressModel addStoredPercentage(BlocProgressModel model, int? count, int? total) {
    int storePercentage = ((count ?? 0) - (model.count ?? 0)).abs();
    downloadedSize = (downloadedSize ?? 0) + storePercentage;
    return model.copyWith(
      total: total,
      count: count,
    );
  }

  void removeProgress(BlocProgressModel? model) {
    if (model != null) {
      if (model.succeeded == null && !model.cancelToken!.isCancelled) {
        model.cancelToken?.cancel();
      } else {
        allProgress.remove(model);
        notifyListeners();
      }
    }
  }

  void resetDownloadSize() {
    downloadedSize = 0;
    notifyListeners();
  }
}

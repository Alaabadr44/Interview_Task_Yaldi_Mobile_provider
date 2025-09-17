// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../core/config/l10n/generated/l10n.dart';

part 'date_package_model.freezed.dart';
part 'date_package_model.g.dart';

@freezed
class DatePackageModel with _$DatePackageModel {
  const DatePackageModel._();
  const factory DatePackageModel({
    required String id,
    required int duration,
    required String unit,
  }) = _DatePackageModel;

  factory DatePackageModel.fromJson(Map<String, dynamic> json) => _$DatePackageModelFromJson(json);

  String get durationUnitTR => S.current.date_package(duration, unit);

  factory DatePackageModel.uniq() {
    return const DatePackageModel(id: "10000000", duration: 10000000, unit: "day");
  }

  bool get isUniq {
    return id == "10000000" && unit == "day";
    // return this == DatePackageModel.uniq();
  }

  Duration? get durationInDuration {
    // ignore: no_leading_underscores_for_local_identifiers
    Duration? _duration;
    switch (unit) {
      case "month":
        _duration = Duration(
          days: 30 * duration,
        );

      case "week":
        _duration = Duration(
          days: 7 * duration,
        );

      case "day":
        _duration = Duration(
          days: duration,
        );

      default:
    }
    return _duration;
  }

  int get diffInDays {
    // ignore: no_leading_underscores_for_local_identifiers
    int? _duration = duration;
    switch (unit) {
      case "month":
        /*  _duration = Duration(
          days: 30 * duration,
        );
 */

        return 30 * duration;

      case "week":
        /*    _duration = Duration(
          days: 7 * duration,
        );
 */

        return 7 * duration;

      case "day":
        /*  _duration = Duration(
          days: duration,
        ); */
        return duration;

      default:
    }
    return _duration;
  }
}

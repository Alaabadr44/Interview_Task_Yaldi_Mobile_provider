// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_model.freezed.dart';
part 'rewards_model.g.dart';

@freezed
class RewardsModel with _$RewardsModel {
  const factory RewardsModel({
    List<Voucher>? vouchers,
    List<Loyalty>? loyalties,
  }) = _RewardsModel;

  factory RewardsModel.fromJson(Map<String, dynamic> json) => _$RewardsModelFromJson(json);
}

@freezed
class Voucher with _$Voucher {
  const factory Voucher({
    required String id,
    required String title,
    required String image,
    required String code,
    required int discount,
    required bool isActive,
  }) = _Voucher;

  factory Voucher.fromJson(Map<String, dynamic> json) => _$VoucherFromJson(json);
}

@freezed
class Loyalty with _$Loyalty {
  const factory Loyalty({
    required String id,
    required String title,
    required String price,
    required String des,
    required String image,
    required int freeMaintenance,
    required bool isActive,
    required List<Service> services,
  }) = _Loyalty;

  factory Loyalty.fromJson(Map<String, dynamic> json) => _$LoyaltyFromJson(json);
}

@freezed
class Service with _$Service {
  const factory Service({
    required String id,
    required String name,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
}

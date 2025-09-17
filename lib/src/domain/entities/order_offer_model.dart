// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_offer_model.freezed.dart';
part 'order_offer_model.g.dart';

@freezed
class OrderOfferModel with _$OrderOfferModel {
  const factory OrderOfferModel({
    required String id,
    required num carPrice,
    required num deliveryAmount,
    required num vatPercent,
    required num vatAmount,
    required num discount,
    required num finalPrice,
  }) = _OrderOfferModel;

  factory OrderOfferModel.fromJson(Map<String, dynamic> json) => _$OrderOfferModelFromJson(json);
}

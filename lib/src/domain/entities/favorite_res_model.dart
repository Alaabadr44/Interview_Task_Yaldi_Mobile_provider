// To parse this JSON data, do
//
//     final favoriteResModel = favoriteResModelFromJson(jsonString);

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_res_model.freezed.dart';
part 'favorite_res_model.g.dart';

FavoriteResModel favoriteResModelFromJson(String str) =>
    FavoriteResModel.fromJson(json.decode(str));

String favoriteResModelToJson(FavoriteResModel data) =>
    json.encode(data.toJson());

@freezed
class FavoriteResModel with _$FavoriteResModel {
  const factory FavoriteResModel({
    bool? isFavorite,
  }) = _FavoriteResModel;

  factory FavoriteResModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteResModelFromJson(json);
}

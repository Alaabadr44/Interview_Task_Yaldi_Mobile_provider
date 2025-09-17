// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final idStatusNameMolel = idStatusNameMolelFromJson(jsonString);

import 'dart:convert';

IdStatusNameModel idStatusNameMolelFromJson(String str) =>
    IdStatusNameModel.fromJson(json.decode(str));

String idStatusNameMolelToJson(IdStatusNameModel data) =>
    json.encode(data.toJson());

class IdStatusNameModel {
  final int? id;
  final int? status;
  final String? name;

  IdStatusNameModel({
    this.id,
    this.status,
    this.name,
  });

  IdStatusNameModel copyWith({
    int? id,
    int? status,
    String? name,
  }) =>
      IdStatusNameModel(
        id: id ?? this.id,
        status: status ?? this.status,
        name: name ?? this.name,
      );

  factory IdStatusNameModel.fromJson(Map<String, dynamic> json) {
    if (json.containsKey("year")) {
      json['name'] = json['year'].toString();
    }

    if (json.containsKey("seats_count")) {
      json['name'] = json['seats_count'].toString();
    }

    if (json.containsKey("type")) {
      json['name'] = json['type'].toString();
    }
    return IdStatusNameModel(
      id: json["id"],
      status: json["status"],
      name: json["name"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "status": status,
        "name": name,
      };

  @override
  bool operator ==(covariant IdStatusNameModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ status.hashCode ^ name.hashCode;
}

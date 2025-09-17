// To parse this JSON data, do
//
//     final engineCapacitiy = engineCapacitiyFromJson(jsonString);

import 'dart:convert';

EngineCapacitiy engineCapacitiyFromJson(String str) => EngineCapacitiy.fromJson(json.decode(str));

String engineCapacitiyToJson(EngineCapacitiy data) => json.encode(data.toJson());

class EngineCapacitiy {
    int? id;
    String? rangeStart;
    String? rangeEnd;

    EngineCapacitiy({
        this.id,
        this.rangeStart,
        this.rangeEnd,
    });

    factory EngineCapacitiy.fromJson(Map<String, dynamic> json) => EngineCapacitiy(
        id: json["id"],
        rangeStart: json["range_start"],
        rangeEnd: json["range_end"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "range_start": rangeStart,
        "range_end": rangeEnd,
    };
}
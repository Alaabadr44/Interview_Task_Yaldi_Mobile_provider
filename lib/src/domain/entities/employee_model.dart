// To parse this JSON data, do
//
//     final employeeModel = employeeModelFromJson(jsonString);

import 'dart:convert';

EmployeeModel employeeModelFromJson(String str) => EmployeeModel.fromJson(json.decode(str));

String employeeModelToJson(EmployeeModel data) => json.encode(data.toJson());

class EmployeeModel {
    final int? id;
    final String? name;
    final String? phone;
    final String? image;
    final String? email;
    final String? role;
    final dynamic branch;

    EmployeeModel({
        this.id,
        this.name,
        this.phone,
        this.image,
        this.email,
        this.role,
        this.branch,
    });

    factory EmployeeModel.fromJson(Map<String, dynamic> json) => EmployeeModel(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        image: json["image"],
        email: json["email"],
        role: json["role"],
        branch: json["branch"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "image": image,
        "email": email,
        "role": role,
        "branch": branch,
    };
}
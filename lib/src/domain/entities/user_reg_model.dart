// To parse this JSON data, do
//
//     final userRegModel = userRegModelFromJson(jsonString);

import 'dart:convert';

UserRegModel userRegModelFromJson(String str) => UserRegModel.fromJson(json.decode(str));

String userRegModelToJson(UserRegModel data) => json.encode(data.toJson());

class UserRegModel {
    final int? id;
    final String? firstName;
    final String? lastName;
    final String? maidenName;
    final dynamic age;
    final String? gender;
    final String? email;
    final String? phone;
    final String? username;
    final String? password;
    final String? birthDate;
    final String? image;
    final String? bloodGroup;
    final dynamic height;
    final dynamic weight;
    final String? eyeColor;
    final Hair? hair;
    final String? domain;
    final String? ip;
    final Address? address;
    final String? macAddress;
    final String? university;
    final Bank? bank;
    final Company? company;
    final String? ein;
    final String? ssn;
    final String? userAgent;

    UserRegModel({
        this.id,
        this.firstName,
        this.lastName,
        this.maidenName,
        this.age,
        this.gender,
        this.email,
        this.phone,
        this.username,
        this.password,
        this.birthDate,
        this.image,
        this.bloodGroup,
        this.height,
        this.weight,
        this.eyeColor,
        this.hair,
        this.domain,
        this.ip,
        this.address,
        this.macAddress,
        this.university,
        this.bank,
        this.company,
        this.ein,
        this.ssn,
        this.userAgent,
    });

    factory UserRegModel.fromJson(Map<String, dynamic> json) => UserRegModel(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        maidenName: json["maidenName"],
        age: json["age"],
        gender: json["gender"],
        email: json["email"],
        phone: json["phone"],
        username: json["username"],
        password: json["password"],
        birthDate: json["birthDate"],
        image: json["image"],
        bloodGroup: json["bloodGroup"],
        height: json["height"],
        weight: json["weight"],
        eyeColor: json["eyeColor"],
        hair: json["hair"] == null ? null : Hair.fromJson(json["hair"]),
        domain: json["domain"],
        ip: json["ip"],
        address: json["address"] == null ? null : Address.fromJson(json["address"]),
        macAddress: json["macAddress"],
        university: json["university"],
        bank: json["bank"] == null ? null : Bank.fromJson(json["bank"]),
        company: json["company"] == null ? null : Company.fromJson(json["company"]),
        ein: json["ein"],
        ssn: json["ssn"],
        userAgent: json["userAgent"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "maidenName": maidenName,
        "age": age,
        "gender": gender,
        "email": email,
        "phone": phone,
        "username": username,
        "password": password,
        "birthDate": birthDate,
        "image": image,
        "bloodGroup": bloodGroup,
        "height": height,
        "weight": weight,
        "eyeColor": eyeColor,
        "hair": hair?.toJson(),
        "domain": domain,
        "ip": ip,
        "address": address?.toJson(),
        "macAddress": macAddress,
        "university": university,
        "bank": bank?.toJson(),
        "company": company?.toJson(),
        "ein": ein,
        "ssn": ssn,
        "userAgent": userAgent,
    };
}

class Address {
    final String? address;
    final String? city;
    final Coordinates? coordinates;
    final String? postalCode;
    final String? state;

    Address({
        this.address,
        this.city,
        this.coordinates,
        this.postalCode,
        this.state,
    });

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        address: json["address"],
        city: json["city"],
        coordinates: json["coordinates"] == null ? null : Coordinates.fromJson(json["coordinates"]),
        postalCode: json["postalCode"],
        state: json["state"],
    );

    Map<String, dynamic> toJson() => {
        "address": address,
        "city": city,
        "coordinates": coordinates?.toJson(),
        "postalCode": postalCode,
        "state": state,
    };
}

class Coordinates {
    final dynamic lat;
    final dynamic lng;

    Coordinates({
        this.lat,
        this.lng,
    });

    factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        lat: json["lat"],
        lng: json["lng"],
    );

    Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
    };
}

class Bank {
    final String? cardExpire;
    final String? cardNumber;
    final String? cardType;
    final String? currency;
    final String? iban;

    Bank({
        this.cardExpire,
        this.cardNumber,
        this.cardType,
        this.currency,
        this.iban,
    });

    factory Bank.fromJson(Map<String, dynamic> json) => Bank(
        cardExpire: json["cardExpire"],
        cardNumber: json["cardNumber"],
        cardType: json["cardType"],
        currency: json["currency"],
        iban: json["iban"],
    );

    Map<String, dynamic> toJson() => {
        "cardExpire": cardExpire,
        "cardNumber": cardNumber,
        "cardType": cardType,
        "currency": currency,
        "iban": iban,
    };
}

class Company {
    final Address? address;
    final String? department;
    final String? name;
    final String? title;

    Company({
        this.address,
        this.department,
        this.name,
        this.title,
    });

    factory Company.fromJson(Map<String, dynamic> json) => Company(
        address: json["address"] == null ? null : Address.fromJson(json["address"]),
        department: json["department"],
        name: json["name"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "address": address?.toJson(),
        "department": department,
        "name": name,
        "title": title,
    };
}

class Hair {
    final String? color;
    final String? type;

    Hair({
        this.color,
        this.type,
    });

    factory Hair.fromJson(Map<String, dynamic> json) => Hair(
        color: json["color"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "color": color,
        "type": type,
    };
}
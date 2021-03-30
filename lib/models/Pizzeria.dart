// To parse this JSON data, do
//
//     final pizzeria = pizzeriaFromJson(jsonString);

import 'dart:convert';

Pizzeria pizzeriaFromJson(String str) => Pizzeria.fromJson(json.decode(str));

String pizzeriaToJson(Pizzeria data) => json.encode(data.toJson());

class Pizzeria {
  Pizzeria({
    this.data,
  });

  List<Datum> data;

  factory Pizzeria.fromJson(Map<String, dynamic> json) => Pizzeria(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.id,
    this.address,
    this.name,
    this.cover,
    this.description,
    this.score,
    this.priceRange,
    this.social,
    this.createdAt,
  });

  String id;
  String address;
  String name;
  String cover;
  String description;
  double score;
  int priceRange;
  Social social;
  DateTime createdAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        address: json["address"],
        name: json["name"],
        cover: json["cover"],
        description: json["description"],
        score: json["score"].toDouble(),
        priceRange: json["priceRange"],
        social: Social.fromJson(json["social"]),
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "address": address,
        "name": name,
        "cover": cover,
        "description": description,
        "score": score,
        "priceRange": priceRange,
        "social": social.toJson(),
        "createdAt": createdAt.toIso8601String(),
      };
}

class Social {
  Social({
    this.facebook,
    this.instagram,
    this.tiktok,
    this.twitter,
    this.website,
  });

  String facebook;
  String instagram;
  String tiktok;
  String twitter;
  String website;

  factory Social.fromJson(Map<String, dynamic> json) => Social(
        facebook: json["facebook"] == null ? null : json["facebook"],
        instagram: json["instagram"] == null ? null : json["instagram"],
        tiktok: json["tiktok"] == null ? null : json["tiktok"],
        twitter: json["twitter"] == null ? null : json["twitter"],
        website: json["website"] == null ? null : json["website"],
      );

  Map<String, dynamic> toJson() => {
        "facebook": facebook == null ? null : facebook,
        "instagram": instagram == null ? null : instagram,
        "tiktok": tiktok == null ? null : tiktok,
        "twitter": twitter == null ? null : twitter,
        "website": website == null ? null : website,
      };
}

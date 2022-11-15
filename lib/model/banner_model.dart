
// To parse this JSON data, do
//
//     final bannerModel = bannerModelFromJson(jsonString);

 
import 'dart:convert';

List<BannerModel> bannerModelFromJson(String str) => List<BannerModel>.from(json.decode(str).map((x) => BannerModel.fromJson(x)));

String bannerModelToJson(List<BannerModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BannerModel {
    BannerModel({
        required this.id,
        required this.bannerImage,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    String id;
    String bannerImage;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
        id: json["_id"],
        bannerImage: json["bannerImage"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "bannerImage": bannerImage,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}

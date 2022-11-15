// To parse this JSON data, do
//
//     final searchModel = searchModelFromJson(jsonString);

 
import 'dart:convert';

List<SearchModel> searchModelFromJson(String str) => List<SearchModel>.from(json.decode(str).map((x) => SearchModel.fromJson(x)));

String searchModelToJson(List<SearchModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SearchModel {
    SearchModel({
        required this.id,
        required this.userId,
        required this.userName,
        required this.experince,
        required this.skills,
        required this.userImages,
        required this.languages,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    String id;
    String userId;
    String userName;
    String experince;
    String skills;
    String userImages;
    String languages;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        id: json["_id"],
        userId: json["User_ID"],
        userName: json["User_Name"],
        experince: json["Experince"],
        skills: json["Skills"],
        userImages: json["User_Images"],
        languages: json["Languages"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "User_ID": userId,
        "User_Name": userName,
        "Experince": experince,
        "Skills": skills,
        "User_Images": userImages,
        "Languages": languages,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}

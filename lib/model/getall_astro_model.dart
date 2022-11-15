// To parse this JSON data, do
//
//     final getAstroModel = getAstroModelFromJson(jsonString);
 
 
import 'dart:convert';

List<GetAstroModel> getAstroModelFromJson(String str) => List<GetAstroModel>.from(json.decode(str).map((x) => GetAstroModel.fromJson(x)));

String getAstroModelToJson(List<GetAstroModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAstroModel {
    GetAstroModel({
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
  

    factory GetAstroModel.fromJson(Map<String, dynamic> json) => GetAstroModel(
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

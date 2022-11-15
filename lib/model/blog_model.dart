// To parse this JSON data, do
//
//     final blogModel = blogModelFromJson(jsonString);

 
import 'dart:convert';

List<BlogModel> blogModelFromJson(String str) => List<BlogModel>.from(json.decode(str).map((x) => BlogModel.fromJson(x)));

String blogModelToJson(List<BlogModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BlogModel {
    BlogModel({
       required this.id,
       required this.date,
       required this.subTitle,
       required this.blogImages,
       required this.userName,
       required this.intro,
       required this.createdAt,
       required this.updatedAt,
       required this.v,
    });

    String id;
    String date;
    String subTitle;
    String blogImages;
    String userName;
    String intro;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    factory BlogModel.fromJson(Map<String, dynamic> json) => BlogModel(
        id: json["_id"],
        date: json["Date"],
        subTitle: json["sub_Title"],
        blogImages: json["blog_Images"],
        userName: json["User_Name"],
        intro: json["Intro"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "Date": date,
        "sub_Title": subTitle,
        "blog_Images": blogImages,
        "User_Name": userName,
        "Intro": intro,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}

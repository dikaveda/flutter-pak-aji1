// To parse this JSON data, do
//
//     final kulinerModel = kulinerModelFromJson(jsonString);

import 'dart:convert';

KulinerModel kulinerModelFromJson(String str) => KulinerModel.fromJson(json.decode(str));

String kulinerModelToJson(KulinerModel data) => json.encode(data.toJson());

class KulinerModel {
    final List<Category> categories;

    KulinerModel({
        required this.categories,
    });

    factory KulinerModel.fromJson(Map<String, dynamic> json) => KulinerModel(
        categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    };
}

class Category {
    final String idCategory;
    final String strCategory;
    final String strCategoryThumb;
    final String strCategoryDescription;

    Category({
        required this.idCategory,
        required this.strCategory,
        required this.strCategoryThumb,
        required this.strCategoryDescription,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        idCategory: json["idCategory"],
        strCategory: json["strCategory"],
        strCategoryThumb: json["strCategoryThumb"],
        strCategoryDescription: json["strCategoryDescription"],
    );

    Map<String, dynamic> toJson() => {
        "idCategory": idCategory,
        "strCategory": strCategory,
        "strCategoryThumb": strCategoryThumb,
        "strCategoryDescription": strCategoryDescription,
    };
}

import 'dart:convert';

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));

String categoryToJson(Category data) => json.encode(data.toJson());

class Category {
  Category({
    this.cateogryId,
    this.categoryName,
    this.restaurants,
  });

  int cateogryId;
  String categoryName;
  List<String> restaurants;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        cateogryId: json["cateogryId"],
        categoryName: json["CategoryName"],
        restaurants: List<String>.from(json["Restaurants"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "cateogryId": cateogryId,
        "CategoryName": categoryName,
        "Restaurants": List<dynamic>.from(restaurants.map((x) => x)),
      };
}

import 'dart:convert';

Restaurant restaurantFromJson(String str) =>
    Restaurant.fromJson(json.decode(str));

String restaurantToJson(Restaurant data) => json.encode(data.toJson());

class Restaurant {
  Restaurant({
    this.restaurantid,
    this.restaurantName,
    this.restaurantMenu,
  });

  int restaurantid;
  String restaurantName;
  List<String> restaurantMenu;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        restaurantid: json["restaurantid"],
        restaurantName: json["restaurantName"],
        restaurantMenu: List<String>.from(json["restaurantMenu"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "restaurantid": restaurantid,
        "restaurantName": restaurantName,
        "restaurantMenu": List<dynamic>.from(restaurantMenu.map((x) => x)),
      };
}

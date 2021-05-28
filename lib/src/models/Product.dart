import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({this.productid, this.productName});

  int productid;
  String productName;
  List<String> productMenu;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        productid: json["productid"] as int,
        productName: json["productName"] as String,
      );

  Map<String, dynamic> toJson() => {
        "productid": productid,
        "productName": productName,
      };
}

class Products {
  List<Product> items = new List();
  Products();

  Products.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) {
      return;
    }

    for (var item in jsonList) {
      final product = new Product.fromJson(item);
      items.add(product);
    }
  }
}

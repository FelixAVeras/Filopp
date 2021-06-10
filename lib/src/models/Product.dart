import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({this.productid, this.productName, this.productPrice});

  int productid;
  String productName;
  int productPrice;
  List<String> productMenu;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
      productid: json["productid"] as int,
      productName: json["productName"] as String,
      productPrice: json["productPrice"] as int);

  Map<String, dynamic> toJson() => {
        "productid": productid,
        "productName": productName,
        "productPrice": productPrice
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

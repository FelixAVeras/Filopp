import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_filopp/src/models/Product.dart';

class ProductProvider {
  final String baseUrlV3 = 'https://mimapi.club/wp-json/wc/v3/';

  final String consumerKey =
      'consumer_key=ck_a36ffd8a2b5ed5df6c7bb0bc607c2370cd9c5060';

  final String consumerSecret =
      'consumer_secret=cs_4039f7c013c9a1a1ceec5f845efa6067637e1416';

  Future<List<Product>> getProducts() async {
    final productUrl =
        Uri.parse(baseUrlV3 + 'products?$consumerKey&$consumerSecret');
    http.Response res =
        await http.get(productUrl, headers: {"Accept": "application/json"});

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Product> products =
          body.map((dynamic item) => Product.fromJson(item)).toList();

      return products;
    } else {
      throw Exception('Algo Salio Mal');
    }
  }

  Future<Product> getProductById(String id) async {
    final productIdUrl =
        Uri.parse(baseUrlV3 + 'products/$id?$consumerKey&$consumerSecret');
    final response = await http.get(productIdUrl);

    if (response.statusCode == 200) {
      return Product.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load a case');
    }
  }
}

// Future<List<Product>> productList() async {
//   final productUrl = baseUrlV3 + 'products?$consumerKey&$consumerSecret';

//   http.Response res =
//       await http.get(productUrl, headers: {"Accept": "application/json"});

//   if (res.statusCode == 200) {
//     List<dynamic> body = jsonDecode(res.body);
//     List<Product> products =
//         body.map((dynamic item) => Product.fromJson(item)).toList();

//     return products;
//   } else {
//     throw Exception('Failed to load a case');
//   }

// final response =
//     await http.get(productUrl, headers: {"Accept": "application/json"});
// var jsonConvert = jsonDecode(response.body);

// // return jsonConvert;

// if (response.statusCode == 200) {
//   // return Product.fromJson(json.decode(response.body));
//   // return jsonConvert;
//   return Product.fromJson(jsonDecode(response.body));
// } else {
//   throw Exception('Failed to load a case');
// }
// }

// Future<Product> getProductById(String id) async {
//   final productIdUrl =
//       Uri.parse(baseUrlV3 + 'products/$id?$consumerKey&$consumerSecret');
//   final response = await http.get(productIdUrl);

//   if (response.statusCode == 200) {
//     return Product.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to load a case');
//   }
// }

// class ProductsProvider {
// final String baseUrlV3 = 'https://mimapi.club/wp-json/wc/v3/';

// final String consumerKey =
//     'consumer_key=ck_a36ffd8a2b5ed5df6c7bb0bc607c2370cd9c5060';

// final String consumerSecret =
//     'consumer_secret=cs_4039f7c013c9a1a1ceec5f845efa6067637e1416';

// Future<List<Product>> productList() async {
//   final String productUrl =
//       baseUrlV3 + 'products?$consumerKey&$consumerSecret';

//   final resp = await http.get(productUrl);
//   final Map<String, dynamic> decodedData = json.decode(resp.body);
//   // final decodedData = json.decode(resp.body);
//   final List<Product> products = new List();

//   if (decodedData == null) return [];

//   decodedData.forEach((key, value) {
//     final productTemp = Product.fromJson(value);

//     // categoryTemp.cateogryId = 'key';
//   });

//   print(decodedData);

//   return [];
// }

// Future<List> productList() async {
//   final productUrl = baseUrlV3 + 'products?$consumerKey&$consumerSecret';

//   final response =
//       await http.get(productUrl, headers: {"Accept": "application/json"});

//   var jsonConvert = jsonDecode(response.body);

//   return jsonConvert;
// }

// Future<Product> getProductById(int id) async {
//   final productIdUrl =
//       baseUrlV3 + 'products/$id?$consumerKey&$consumerSecret';
//   final response = await http.get(productIdUrl);

//   if (response.statusCode == 200) {
//     return Product.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to load a case');
//   }
// }
// }

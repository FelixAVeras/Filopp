import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_filopp/src/models/Product.dart';

class ProductProvider {
  final String baseUrlV3 = 'https://mimapi.club/wp-json/wc/v3/';

  final String consumerKey =
      'consumer_key=ck_a36ffd8a2b5ed5df6c7bb0bc607c2370cd9c5060';

  final String consumerSecret =
      'consumer_secret=cs_4039f7c013c9a1a1ceec5f845efa6067637e1416';

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

}

Future<List> productList() async {
  final productUrl = 'https://test.mimapi.club/wp-json/wp/v2/product';

  final response =
      await http.get(productUrl, headers: {"Accept": "application/json"});

  var jsonConvert = jsonDecode(response.body);

  return jsonConvert;
}

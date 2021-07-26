import 'dart:convert';

import 'package:new_filopp/src/models/Category.dart';
import 'package:http/http.dart' as http;

// class CategoryProvider {
// final String baseUrlV3 = 'https://mimapi.club/wp-json/wc/v3/';

// final String consumerKey =
//     'consumer_key=ck_a36ffd8a2b5ed5df6c7bb0bc607c2370cd9c5060';

// final String consumerSecret =
//     'consumer_secret=cs_4039f7c013c9a1a1ceec5f845efa6067637e1416';

// Future<List<Category>> categoryList() async {
//   final String categoryUrl =
//       baseUrlV3 + 'products/categories?$consumerKey&$consumerSecret';

//   final resp = await http.get(categoryUrl);
//   final Map<String, dynamic> decodedData = json.decode(resp.body);
//   final List<Category> categories = new List();

//   if (decodedData == null) return [];

//   decodedData.forEach((key, value) {
//     final categoryTemp = Category.fromJson(value);
//   });

//   print(decodedData);

//   return [];
// }
// }

Future<List> categoryList() async {
  final String baseUrlV3 = 'https://mimapi.club/wp-json/wc/v3/';

  final String consumerKey =
      'consumer_key=ck_a36ffd8a2b5ed5df6c7bb0bc607c2370cd9c5060';

  final String consumerSecret =
      'consumer_secret=cs_4039f7c013c9a1a1ceec5f845efa6067637e1416';

  final categoryUrl =
      baseUrlV3 + 'products/categories?$consumerKey&$consumerSecret';

  final response =
      await http.get(categoryUrl, headers: {"Accept": "application/json"});

  var jsonConvert = jsonDecode(response.body);

  return jsonConvert;
}

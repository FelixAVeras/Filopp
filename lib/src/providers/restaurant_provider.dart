import 'dart:convert';
import 'package:http/http.dart' as http;

final String baseUrlV3 = 'https://mimapi.club/wp-json/wc/v3/';

final String consumerKey =
    'consumer_key=ck_a36ffd8a2b5ed5df6c7bb0bc607c2370cd9c5060';

final String consumerSecret =
    'consumer_secret=cs_4039f7c013c9a1a1ceec5f845efa6067637e1416';

Future<List> restaurantList() async {
  final restaurantUrl =
      Uri.parse(baseUrlV3 + 'products/tags?$consumerKey&$consumerSecret');

  final response =
      await http.get(restaurantUrl, headers: {"Accept": "application/json"});

  var jsonConvert = jsonDecode(response.body);

  return jsonConvert;
}

// Future<Product> getRestaurantById(String id) async {
//   final productIdUrl =
//       Uri.parse(baseUrlV3 + 'products/$id?$consumerKey&$consumerSecret');
//   final response = await http.get(productIdUrl);

//   if (response.statusCode == 200) {
//     return Product.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to load a case');
//   }
// }

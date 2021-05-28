import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart';
import 'package:new_filopp/src/models/Product.dart';

class HttpService {
  // final String baseUrl = 'https://test.mimapi.club/wp-json/wp/v2';
  // final String apiUrlForProducts = '/product';

  final String testApiUrl = 'https://jsonplaceholder.typicode.com/photos';

  Future<List<Product>> getAllProducts() async {
    // Response resp = await get(baseUrl + apiUrlForProducts);
    Response resp = await get(testApiUrl);

    if (resp.statusCode == 200) {
      List<dynamic> body = jsonDecode(resp.body);

      List<Product> products =
          body.map((dynamic item) => Product.fromJson(item)).toList();

      return products;
    }
  }
}

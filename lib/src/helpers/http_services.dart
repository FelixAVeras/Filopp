import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:new_filopp/src/models/Product.dart';

class HttpService {
  final String baseUrl = 'https://test.mimapi.club/wp-json/wp/v2';

  Future<List> getAllProducts() async {
    final resp = await http
        .get(baseUrl + '/product', headers: {'Accept': 'application/json'});

    var convertToJson = jsonDecode(resp.body);

    return convertToJson;
  }
}

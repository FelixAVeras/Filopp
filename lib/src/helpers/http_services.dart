import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:new_filopp/src/helpers/config.dart';
import 'package:new_filopp/src/models/Customer.dart';
import 'package:new_filopp/src/models/LoginResponse.dart';

class HttpService {
  // final String baseUrl = 'https://test.mimapi.club/wp-json/wp/v2';
  // final String baseUrl = 'https://mimapi.club/wp-json/wcfmmp/v1';

  Future<bool> createCustomer(Customer model) async {
    var authToken =
        base64.encode(utf8.encode(Config.key + ":" + Config.secret));

    bool ret = false;

    try {
      var response = await Dio().post(Config.url + Config.customerUrl,
          data: model.toJson(),
          options: new Options(headers: {
            HttpHeaders.authorizationHeader: 'Basic $authToken',
            HttpHeaders.contentTypeHeader: 'application/json'
          }));

      if (response.statusCode == 201) {
        ret = true;
      }
    } on DioError catch (e) {
      if (e.response.statusCode == 404) {
        ret = false;
      } else {
        ret = false;
      }
    }

    return ret;
  }

  Future<LoginResponse> LoginUser(String username, String password) async {
    LoginResponse model;

    try {
      var response = await Dio().post(Config.tokenUrl,
          data: {'username': username, 'password': password},
          options: new Options(headers: {
            HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded'
          }));

      if (response.statusCode == 200) {
        model = LoginResponse.fromJson(response.data);
      }
    } on DioError catch (e) {
      print(e.message);
    }

    return model;
  }

  // Future<List> getAllRestaurants() async {
  //   final resp = await http
  //       .get(baseUrl + '/restaurants', headers: {'Accept': 'application/json'});

  //   var convertToJson = jsonDecode(resp.body);

  //   return convertToJson;
  // }

  // Future<List> getRestaurant(id) async {
  //   final resp = await http.get(baseUrl + '/restaurants/' + id);

  //   var convertToJson = jsonDecode(resp.body);

  //   return convertToJson;
  // }

  // Future<List> getProductOfRestaurant(id) async {
  //   final resp = await http
  //       .get(baseUrl + '/wp-json/wcfmmp/v1/products/autor/' + id, headers: {
  //     'Accept': 'application/json',
  //     'Authorization': "Basic " + "QWRtaW50OkNvbG9tYmlhMjAyMCE"
  //   });

  //   var convertToJson = jsonDecode(resp.body);

  //   return convertToJson;
  // }

  Future<List> getAllProducts() async {}
}

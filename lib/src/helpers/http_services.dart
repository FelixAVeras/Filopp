import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:new_filopp/src/helpers/config.dart';
import 'package:new_filopp/src/models/Customer.dart';
import 'package:new_filopp/src/models/LoginResponse.dart';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_wordpress/flutter_wordpress.dart' as wp;

class APIHttpService {
  // final String baseUrl = 'https://test.mimapi.club/wp-json/wp/v2';
  // final String baseUrl = 'https://mimapi.club/wp-json/wcfmmp/v1';

  // wp.WordPress wordPress;
  
  // wordPress = wp.WordPress(
  //   baseUrl: 'https://mimapi.club/wp-json/wcfmmp/v1',
  //   authenticator: wp.WordPressAuthenticator.JWT,
  //   adminName: '',
  //   adminKey: '',
  // );

  // Future<wp.User> response =
  //     wordPress.authenticateUser(username: 'admint', password: 'Colombia2020!');

  // static var client = http.Client();
  // static String baseUrl = 'https://mimapi.club/wp-json/wcfmmp/v1';

  // Future<bool> loginUser(String username, String password) async {
  //   Map<String, dynamic> requestHeader = {
  //     'Content-type': 'application/x-www-form-urlencoded'
  //   };

  //   var responsetoken = await client.post('$baseUrl/wp-json/jwt-auth/v1/token',
  //       headers: requestHeader,
  //       body: {'username': username, 'password': password});
  
  //   if (responsetoken.statusCode == 200) {
  //     var jsonString = responsetoken.body;

  //     LoginResponse loginResponse = LoginResponse.fromJson(jsonString);

  //     return loginResponse.statusCode == 200 ? true : false;
  //   }
  // }

  // Future<LoginResponse> LoginUser(String username, String password) async {
  //   LoginResponse model;

  //   try {
  //     var response = await Dio().post(Config.tokenUrl,
  //         data: {'username': username, 'password': password},
  //         options: new Options(headers: {
  //           HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded'
  //         }));

  //     if (response.statusCode == 200) {
  //       model = LoginResponse.fromJson(response.data);

  //       print('Resultado: ');
  //       print(response);
  //       print(model);
  //     }
  //   } on DioError catch (e) {
  //     print(e.message);
  //   }

  //   return model;
  // }

  // Future<http.Response> LoginUser(String username, String password) async {
  //   final http.Response response = await http.post(
  //       'https://app.biciaccesorios.online/wp-json/jwt-auth/v1/token?username=$username&password=$password');

  //   print('Resultado: ');
  //   print(response);

  //   return response;
  // }

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

  // Future<List> getAllProducts() async {}
}

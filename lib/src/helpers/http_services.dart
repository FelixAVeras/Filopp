import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

final String baseUrlV3 = 'https://mimapi.club/wp-json/wc/v3/';

final String consumerKey =
    'consumer_key=ck_a36ffd8a2b5ed5df6c7bb0bc607c2370cd9c5060';
final String consumerSecret =
    'consumer_secret=cs_4039f7c013c9a1a1ceec5f845efa6067637e1416';

Future<List> getCategories() async {
  final categoryResponse = await http.get(
      Uri.parse(baseUrlV3 + 'products/categories?$consumerKey&$consumerSecret'),
      headers: {"Accept": "application/json"});

  var categoryJson = jsonDecode(categoryResponse.body);

  return categoryJson;
}

Future<List> getProducts() async {
  final productResponse = await http.get(
      Uri.parse(baseUrlV3 + 'products?$consumerKey&$consumerSecret'),
      headers: {"Accept": "application/json"});

  var productJson = jsonDecode(productResponse.body);

  return productJson;
}

// class APIHttpService {

// Future<List> Products() async {
//   final endPointProducts =
//       '/wp-json/wcfmmp/v1/products?consumer_key=$consumerKey&consumer_secret=$consumerSecret';

//   final response = await http.get(baseUrl + endPointProducts,
//       headers: {"Accept": "application/json"});

//   var jsonConvert = jsonDecode(response.body);

//   return jsonConvert;
// }

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
// }

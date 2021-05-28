import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_filopp/src/models/Restaurant.dart';

class RestaurantProvider {
  String _apikey = 'fc4b84dc54035cf532ba4246a84ff741';
  String _url = 'api.themoviedb.org';
  String _lang = 'es-ES';

  ProcesedResponse(url) {}

  //Restaurant List
  Future<List<Restaurant>> GetAllRestaurants() async {
    final url = Uri.https(
        _url, '3/movie/new_playing', {'api_key': _apikey, 'lenguage': _lang});

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final restaurants = new Restaurants.fromJsonList(decodedData['results']);

    return restaurants.items;
  }

  //Search Restaurant
  Future<List<Restaurant>> SearchRestaurant(String query) async {
    final url =
        Uri.https(_url, 'enpointApi', {'api_key': _apikey, 'query': query});

    return await ProcesedResponse(url);
  }
}

import 'package:flutter/material.dart';

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Restaurantes'),
      ),
      body: Center(child: Text('Restaurantes')),
    );
  }
}

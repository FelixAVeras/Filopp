import 'package:flutter/material.dart';
import 'package:new_filopp/src/pages/category.dart';
import 'package:new_filopp/src/pages/home.dart';
import 'package:new_filopp/src/pages/login.dart';

void main() => runApp(NewFilopp());

class NewFilopp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Filopp',
        theme: ThemeData(primarySwatch: Colors.red),
        debugShowCheckedModeBanner: false,
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: Text('Filopp'),
        //   ),
        //   body: Center(
        //     child: Text('Esta es la nueva App'),
        //   ),
        // ),
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'home': (BuildContext context) => HomePage(),
          'category': (BuildContext context) => CategoryPage(),
          // 'restaurant': (BuildContext context) => RestaurantPage(),
        });
  }
}

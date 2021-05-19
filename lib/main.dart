import 'package:flutter/material.dart';
import 'package:new_filopp/src/pages/home.dart';
import 'package:new_filopp/src/pages/login.dart';
import 'package:new_filopp/src/pages/register.dart';

void main() => runApp(NewFilopp());

class NewFilopp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filopp',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
        'home': (BuildContext context) => HomePage(),
      },
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:new_filopp/src/pages/home.dart';
import 'package:new_filopp/src/pages/login.dart';
import 'package:new_filopp/src/pages/register.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();

  runApp(NewFilopp());
}

class NewFilopp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filopp',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      // initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
        'home': (BuildContext context) => HomePage(),
      },
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200.0,
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
        // width: MediaQuery.of(context).size.width * 0.65,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              color: Colors.red,
            ),
            SizedBox(width: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              color: Colors.blue,
            ),
            SizedBox(width: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              color: Colors.green,
            ),
            SizedBox(width: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              color: Colors.yellow,
            ),
            SizedBox(width: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

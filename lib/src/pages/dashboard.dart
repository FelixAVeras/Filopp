import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DashboardPageState();
  }
}

class _DashboardPageState extends State<DashboardPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 13.0),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Que quisieras comer hoy?',
                labelText: 'Buscar',
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: Colors.red,
                ),
                SizedBox(width: 15),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: Colors.blue,
                ),
                SizedBox(width: 15),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: Colors.green,
                ),
                SizedBox(width: 15),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: Colors.yellow,
                ),
                SizedBox(width: 15),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

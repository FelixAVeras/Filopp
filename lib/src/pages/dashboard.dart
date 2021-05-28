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
          // Container(
          //   width: MediaQuery.of(context).size.width * 0.9,
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //       border: OutlineInputBorder(),
          //       hintText: 'Que quisieras comer hoy?',
          //       labelText: 'Buscar',
          //     ),
          //   ),
          // ),
          // SizedBox(height: 10.0),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
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
          SizedBox(height: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trending en la Zona',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
              SizedBox(height: 10.0),
              GridView.count(
                primary: false,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                padding: EdgeInsets.all(20.0),
                children: [
                  Card(
                    child: InkWell(
                      splashColor: Colors.red.withAlpha(30),
                      onTap: () => {},
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Text('Hola Mundo 1'),
                      ),
                    ),
                  ),
                  Card(
                    child: InkWell(
                      splashColor: Colors.red.withAlpha(30),
                      onTap: () => {},
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Text('Hola Mundo 2'),
                      ),
                    ),
                  ),
                  Card(
                    child: InkWell(
                      splashColor: Colors.red.withAlpha(30),
                      onTap: () => {},
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Text('Hola Mundo 3'),
                      ),
                    ),
                  ),
                  Card(
                    child: InkWell(
                      splashColor: Colors.red.withAlpha(30),
                      onTap: () => {},
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Text('Hola Mundo 4'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}

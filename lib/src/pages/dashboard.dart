import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 15),
          Text('Categorias Trending', style: TextStyle(fontSize: 18)),
          // SizedBox(
          //     // height: 120.0,
          //     // width: 999.0,
          //     // child: ListView.builder(
          //     //   physics: ClampingScrollPhysics(),
          //     //   shrinkWrap: true,
          //     //   scrollDirection: Axis.horizontal,
          //     //   itemCount: 8,
          //     //   itemBuilder: (BuildContext context, int index) => Card(
          //     //     child: Center(child: Text('Dummy Card Text')),
          //     //   ),
          //     // ),
          //     ),
          Container(
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
          SizedBox(height: 10),
          Text('Restaurantes Trending', style: TextStyle(fontSize: 18)),
          Card(
            child: ListTile(
                title: Text('Motivation $int'),
                subtitle: Text('this is a description of the motivation')),
          ),
          Card(
            child: ListTile(
                title: Text('Motivation $int'),
                subtitle: Text('this is a description of the motivation')),
          ),
          Card(
            child: ListTile(
                title: Text('Motivation $int'),
                subtitle: Text('this is a description of the motivation')),
          ),
          Card(
            child: ListTile(
                title: Text('Motivation $int'),
                subtitle: Text('this is a description of the motivation')),
          ),
          Card(
            child: ListTile(
                title: Text('Motivation $int'),
                subtitle: Text('this is a description of the motivation')),
          ),
          Card(
            child: ListTile(
                title: Text('Motivation $int'),
                subtitle: Text('this is a description of the motivation')),
          ),
          Card(
            child: ListTile(
                title: Text('Motivation $int'),
                subtitle: Text('this is a description of the motivation')),
          ),
        ],
      ),
    ));
  }
}

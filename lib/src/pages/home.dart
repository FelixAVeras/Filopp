import 'package:flutter/material.dart';
import 'package:new_filopp/src/models/Restaurant.dart';
import 'package:new_filopp/src/pages/category.dart';
import 'package:new_filopp/src/pages/login.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
// import 'package:new_filopp/src/controllers/HomeController.dart';

class HomePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  HomePage({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // HomeController _homeController;

  // _HomePageState() : super(HomeController()) {
  //   _homeController = controller;
  // }

  // final String apiUrl = "https://randomuser.me/api/?results=10";
  // Future<List<dynamic>> fetchUsers() async {
  //   var result = await http.get(apiUrl);
  //   return json.decode(result.body)['results'];
  // }

  // Future<http.Response> getContries() async {
  //   // var response = await Dio().get('https://restcountries.eu/rest/v2/all');
  //   // return http.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1'));
  //   return http.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1'));
  //   // print(response.data.length);

  //   List<Restaurant> restaurants = [];
  // }

  @override
  Widget build(BuildContext context) {
    // getContries();
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        // backgroundColor: Colors.red,
        // elevation: 0,
        centerTitle: true,
        title: Text('Inicio'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notificaciones',
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
                width: 300,
                margin: EdgeInsets.all(10),
                child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.red.withAlpha(30),
                      onTap: () => {},
                      child: Container(
                        child: Column(
                          children: [
                            const ListTile(
                              leading: Icon(Icons.restaurant),
                              title: Text('Restaurante #1'),
                              subtitle:
                                  Text('Calle primera #12, sector, ciudad'),
                            )
                          ],
                        ),
                      ),
                    ))),
            Container(
                width: 300,
                margin: EdgeInsets.all(10),
                child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.red.withAlpha(30),
                      onTap: () => {},
                      child: Container(
                        child: Column(
                          children: [
                            const ListTile(
                              leading: Icon(Icons.restaurant),
                              title: Text('Restaurante #2'),
                              subtitle:
                                  Text('Calle primera #12, sector, ciudad'),
                            )
                          ],
                        ),
                      ),
                    ))),
            Container(
                width: 300,
                margin: EdgeInsets.all(10),
                child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.red.withAlpha(30),
                      onTap: () => {},
                      child: Container(
                        child: Column(
                          children: [
                            const ListTile(
                              leading: Icon(Icons.restaurant),
                              title: Text('Restaurante #3'),
                              subtitle:
                                  Text('Calle primera #12, sector, ciudad'),
                            )
                          ],
                        ),
                      ),
                    ))),
            Container(
                width: 300,
                margin: EdgeInsets.all(10),
                child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.red.withAlpha(30),
                      onTap: () => {},
                      child: Container(
                        child: Column(
                          children: [
                            const ListTile(
                              leading: Icon(Icons.restaurant),
                              title: Text('Restaurante #4'),
                              subtitle:
                                  Text('Calle primera #12, sector, ciudad'),
                            )
                          ],
                        ),
                      ),
                    ))),
          ],
        ),
      ),
      // body: FutureBuilder<List<dynamic>>(
      //   future: fetchUsers(),
      //   builder: (BuildContext context, AsyncSnapshot snapshot) {
      //     if (snapshot.hasData) {
      //       print(snapshot.data[0]);
      //       return ListView.builder(
      //           padding: EdgeInsets.all(8),
      //           itemCount: snapshot.data.length,
      //           itemBuilder: (BuildContext context, int index) {
      //             return Card(
      //               child: Column(
      //                 children: <Widget>[
      //                   ListTile(
      //                     leading: CircleAvatar(
      //                         radius: 30,
      //                         backgroundImage: NetworkImage(
      //                             snapshot.data[index]['picture']['large'])),
      //                     title: Text(snapshot.data[index]),
      //                     subtitle: Text(snapshot.data[index]),
      //                     trailing: Text(snapshot.data[index]),
      //                   )
      //                 ],
      //               ),
      //             );
      //           });
      //     } else {
      //       return Center(child: CircularProgressIndicator());
      //     }
      //   },
      // ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage('assets/drawerHeaderBG.jpg'),
                    fit: BoxFit.cover)),
            child: Text('Filopp'),
          ),
          ListTile(
            leading: Icon(Icons.grid_view),
            title: Text('Categorias'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryPage()))
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('Restaurantes'),
            onTap: () => {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.verified),
            title: Text('Ofertas'),
            onTap: () => {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text('Codigo Referido'),
            onTap: () => {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Cerrar Sesión'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginPage()))
            },
          ),
        ],
      )),
    );
  }
}

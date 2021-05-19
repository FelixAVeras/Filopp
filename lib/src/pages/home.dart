import 'package:flutter/material.dart';
import 'package:new_filopp/src/models/Restaurant.dart';
import 'package:new_filopp/src/pages/category.dart';
import 'package:new_filopp/src/pages/dashboard.dart';
import 'package:new_filopp/src/pages/login.dart';
import 'package:http/http.dart' as http;
import 'package:new_filopp/src/pages/my_order.dart';
import 'package:new_filopp/src/pages/user_profile.dart';
import 'dart:async';
import 'dart:convert';
import 'package:qrcode_reader/qrcode_reader.dart';

class HomePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  HomePage({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  _scanQr() async {
    String futureString = '';

    try {
      futureString = await new QRCodeReader().scan();
    } catch (e) {
      futureString = e.toString();
    }

    if (futureString != null) {
      print('Tenemos informacion');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: _loadPage(currentIndex),
      // body: Container(
      //   height: 150,
      //   child: ListView(
      //     scrollDirection: Axis.horizontal,
      //     children: [
      //       Container(
      //           width: 300,
      //           margin: EdgeInsets.all(10),
      //           child: Card(
      //               semanticContainer: true,
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child: InkWell(
      //                 splashColor: Colors.red.withAlpha(30),
      //                 onTap: () => {},
      //                 child: Container(
      //                   child: Column(
      //                     children: [
      //                       const ListTile(
      //                         leading: Icon(Icons.restaurant),
      //                         title: Text('Restaurante #1'),
      //                         subtitle:
      //                             Text('Calle primera #12, sector, ciudad'),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ))),
      //       Container(
      //           width: 300,
      //           margin: EdgeInsets.all(10),
      //           child: Card(
      //               semanticContainer: true,
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child: InkWell(
      //                 splashColor: Colors.red.withAlpha(30),
      //                 onTap: () => {},
      //                 child: Container(
      //                   child: Column(
      //                     children: [
      //                       const ListTile(
      //                         leading: Icon(Icons.restaurant),
      //                         title: Text('Restaurante #2'),
      //                         subtitle:
      //                             Text('Calle primera #12, sector, ciudad'),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ))),
      //       Container(
      //           width: 300,
      //           margin: EdgeInsets.all(10),
      //           child: Card(
      //               semanticContainer: true,
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child: InkWell(
      //                 splashColor: Colors.red.withAlpha(30),
      //                 onTap: () => {},
      //                 child: Container(
      //                   child: Column(
      //                     children: [
      //                       const ListTile(
      //                         leading: Icon(Icons.restaurant),
      //                         title: Text('Restaurante #3'),
      //                         subtitle:
      //                             Text('Calle primera #12, sector, ciudad'),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ))),
      //       Container(
      //           width: 300,
      //           margin: EdgeInsets.all(10),
      //           child: Card(
      //               semanticContainer: true,
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child: InkWell(
      //                 splashColor: Colors.red.withAlpha(30),
      //                 onTap: () => {},
      //                 child: Container(
      //                   child: Column(
      //                     children: [
      //                       const ListTile(
      //                         leading: Icon(Icons.restaurant),
      //                         title: Text('Restaurante #4'),
      //                         subtitle:
      //                             Text('Calle primera #12, sector, ciudad'),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ))),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: _customBottomNavigationBar(),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Orden Nueva'),
        icon: Icon(Icons.add),
        onPressed: () => {},
      ),
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
            onTap: _scanQr,
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

  Widget _loadPage(int currentPage) {
    switch (currentPage) {
      case 0:
        return DashboardPage();
      case 1:
        return MyOrderPage();
      case 2:
        return UserProfilePage();

      default:
        return DashboardPage();
    }
  }

  Widget _customBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: 'Mis Pedidos'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Mi Perfil'),
      ],
    );
  }
}

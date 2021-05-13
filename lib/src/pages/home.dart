import 'package:flutter/material.dart';
import 'package:new_filopp/src/pages/category.dart';
import 'package:new_filopp/src/pages/login.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        // backgroundColor: Colors.red,
        // elevation: 0,
        centerTitle: true,
        title: Text('Inicio'),
        // actions: <Widget>[
        //   new ShoppingCartButtonWidget(iconColor: Theme.of(context).hintColor, labelColor: Theme.of(context).accentColor),
        // ],
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

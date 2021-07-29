import 'package:flutter/material.dart';
import 'package:new_filopp/src/helpers/search_delegate.dart';
import 'package:new_filopp/src/pages/category.dart';
import 'package:new_filopp/src/pages/dashboard.dart';
import 'package:new_filopp/src/pages/login.dart';
import 'package:new_filopp/src/pages/my_order.dart';
import 'package:new_filopp/src/pages/product/product.dart';
import 'package:new_filopp/src/pages/restaurant.dart';

class HomePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  HomePage({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Inicio'),
        actions: [
          // IconButton(
          //   icon: const Icon(Icons.notifications),
          //   tooltip: 'Notificaciones',
          //   onPressed: () {},
          // ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Buscar',
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          )
        ],
      ),
      body: _loadPage(currentIndex),
      bottomNavigationBar: _customBottomNavigationBar(),
      // floatingActionButton: FloatingActionButton.extended(
      //   label: Text('Nueva Orden'),
      //   icon: Icon(Icons.add),
      //   onPressed: () => {
      //     // Navigator.push(
      //     //     context, MaterialPageRoute(builder: (context) => ProductPage()))
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
            leading: Icon(Icons.menu_book),
            title: Text('Menu'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductPage()))
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('Restaurantes'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RestaurantPage()))
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('Historial'),
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
            leading: Icon(Icons.person),
            title: Text('Mi Perfil'),
            onTap: () => {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ajustes'),
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

  Widget _loadPage(int currentPage) {
    switch (currentPage) {
      case 0:
        return DashboardPage();
      case 1:
        return MyOrderPage();

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
      ],
    );
  }
}

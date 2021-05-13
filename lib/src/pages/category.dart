import 'package:flutter/material.dart';
import 'package:new_filopp/src/pages/category_detail.dart';
// import 'package:new_filopp/src/controllers/HomeController.dart';

class CategoryPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  CategoryPage({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
        title: Text('Categorías'),
        // actions: <Widget>[
        //   new ShoppingCartButtonWidget(iconColor: Theme.of(context).hintColor, labelColor: Theme.of(context).accentColor),
        // ],
      ),
      body: GridView.count(
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: EdgeInsets.all(8.0),
        crossAxisCount: 2,
        children: [
          Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.red.withAlpha(30),
                onTap: () => {},
                child: Container(
                    child: Column(
                  children: [
                    Image.network(
                      'https://cdn.colombia.com/sdi/2011/08/01/pollo-a-la-criolla-517810.jpg',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      'Comida Criolla',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 2),
          Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.red.withAlpha(30),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoryDetail()))
                },
                child: Container(
                    child: Column(
                  children: [
                    Image.network(
                      'http://www.tastyislandhawaii.com/images15/mortons/mortons_cc_ribeye_k.jpg',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      'Carnes',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 2),
          Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.red.withAlpha(30),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoryDetail()))
                },
                child: Container(
                    child: Column(
                  children: [
                    Image.network(
                      'https://www.unacolombianaencalifornia.com/wp-content/uploads/2021/03/Arroz-con-camarones-criollos-2-900x500.jpg',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      'Mariscos',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 2),
          Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.red.withAlpha(30),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoryDetail()))
                },
                child: Container(
                    child: Column(
                  children: [
                    Image.network(
                      'https://www.opskrifter.dk/images/recipes/JMleH3KJVSk2Le7b06qYTyFjXW8GmSYLbpbOBHn4.jpeg',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      'Sandwiches',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 2),
          Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.red.withAlpha(30),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoryDetail()))
                },
                child: Container(
                    child: Column(
                  children: [
                    Image.network(
                      'https://www.braciamiancora.com/wp-content/uploads/2018/04/hamburger-300gr.nazionale-e-angus.jpg',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      'Hamburguesas',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 2),
          Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.red.withAlpha(30),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoryDetail()))
                },
                child: Container(
                    child: Column(
                  children: [
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Sushi7.jpg/1200px-Sushi7.jpg',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      'Oriental',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 2),
          Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.red.withAlpha(30),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoryDetail()))
                },
                child: Container(
                    child: Column(
                  children: [
                    Image.network(
                      'https://www.stylemotivation.com/wp-content/uploads/2017/05/Mexican-Food-Recipes-Ground-Beef2.jpg',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      'Mexicana',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 2),
          Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.red.withAlpha(30),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoryDetail()))
                },
                child: Container(
                    child: Column(
                  children: [
                    Image.network(
                      'https://www.pressdek.com/uploads/2020/08/1597446178-pollo-frito-con-curry-1024x615.jpeg',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      'Pollo',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 2),
          Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.red.withAlpha(30),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoryDetail()))
                },
                child: Container(
                    child: Column(
                  children: [
                    Image.network(
                      'http://kitchenfair.com.mx/wp-content/uploads/2017/02/receta-postre-primavera1280x854.jpg',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      'Postres',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 2),
        ],
      ),
    );
  }
}

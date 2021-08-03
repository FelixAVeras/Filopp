import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/image.dart' as flutterImage;
import 'package:new_filopp/src/pages/restaurant/restaurant_detail.dart';

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
          Container(
            height: 150.0,
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
            // width: MediaQuery.of(context).size.width * 0.65,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: flutterImage.Image.network(
                        'https://via.placeholder.com/600x200?text=Nombre+Categoria')),
                SizedBox(width: 10),
                Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: flutterImage.Image.network(
                        'https://via.placeholder.com/600x200?text=Nombre+Categoria')),
                SizedBox(width: 10),
                Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: flutterImage.Image.network(
                        'https://via.placeholder.com/600x200?text=Nombre+Categoria')),
                SizedBox(width: 10),
                Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: flutterImage.Image.network(
                        'https://via.placeholder.com/600x200?text=Nombre+Categoria')),
                SizedBox(width: 10),
                Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: flutterImage.Image.network(
                        'https://via.placeholder.com/600x200?text=Nombre+Categoria')),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(
            indent: 40,
            endIndent: 40,
            thickness: 2,
          ),
          SizedBox(height: 10),
          Text('Restaurantes Trending', style: TextStyle(fontSize: 18)),
          Card(
            child: ListTile(
                title: Text('Mr. Burger Tulua'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                title: Text('Ohana Sushi Bowl'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                title: Text('La Tostonera'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                title: Text('Restaurante Rivarolo'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                title: Text('Pizzeria Venecia'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                title: Text('Wasabi Sushi Bar'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                title: Text('Grato Pecado'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                title: Text('Alitas BBQ a la 26'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantDetail()))
                    }),
          ),
        ],
      ),
    ));
  }
}

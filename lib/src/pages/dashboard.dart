import 'package:flutter/material.dart';
import 'package:new_filopp/src/pages/category_detail.dart';

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
          Divider(
            indent: 40,
            endIndent: 40,
            thickness: 2,
          ),
          SizedBox(height: 10),
          Text('Restaurantes Trending', style: TextStyle(fontSize: 18)),
          Card(
            child: ListTile(
                leading: Image.network(
                    'https://test.mimapi.club/wp-content/uploads/2020/04/IMG_20200404_133331-1.jpg'),
                title: Text('Mr. Burger Tulua'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                leading: Image.network(
                    'https://test.mimapi.club/wp-content/uploads/2020/04/ohannasushi-1.jpg'),
                title: Text('Ohana Sushi Bowl'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                leading: Image.network(
                    'https://test.mimapi.club/wp-content/uploads/2020/05/conodeplatano.jpg'),
                title: Text('La Tostonera'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                leading: Image.network(
                    'https://test.mimapi.club/wp-content/uploads/2020/04/logorivarolo.jpg'),
                title: Text('Restaurante Rivarolo'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                leading: Image.network(
                    'https://test.mimapi.club/wp-content/uploads/2021/01/logovenecia.jpg'),
                title: Text('Pizzeria Venecia'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                leading: Image.network(
                    'https://test.mimapi.club/wp-content/uploads/2021/01/logowasabi.jpg'),
                title: Text('Wasabi Sushi Bar'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                leading: Image.network(
                    'https://test.mimapi.club/wp-content/uploads/2020/05/logo-5.jpg'),
                title: Text('Grato Pecado'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryDetail()))
                    }),
          ),
          Card(
            child: ListTile(
                leading: Image.network(
                    'https://test.mimapi.club/wp-content/uploads/2020/05/logoalitasbbqla26.jpg'),
                title: Text('Alitas BBQ a la 26'),
                subtitle: Text('this is a description of this restaurant'),
                onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryDetail()))
                    }),
          ),
        ],
      ),
    ));
  }
}

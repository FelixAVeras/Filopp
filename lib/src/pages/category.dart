import 'package:flutter/material.dart';
import 'package:new_filopp/src/helpers/http_services.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Categorías'),
        ),
        body: ListView(
          children: [
            FutureBuilder(
              future: getCategories(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                final data = snapshot.data;
                // return Card(child: ListTile(title: Text('One-line ListTile')));
                return Column(
                  children: [
                    ...data.map((category) {
                      return Card(
                        child: ListTile(title: Text(category['name'])),
                      );
                    })
                  ],
                );
              },
            )
          ],
        ));
  }
}

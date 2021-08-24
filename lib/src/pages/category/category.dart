import 'package:flutter/material.dart';
import 'package:new_filopp/src/models/Category.dart';
import 'package:new_filopp/src/providers/category_provider.dart';

class CategoryPage extends StatelessWidget {
  // Category categoryModel = new Category();
  // final categoryProvider = new CategoryProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Categorias'),
        ),
        // body: _loadCategoryList());
        body: FutureBuilder(
            future: categoryList(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                var categories = snapshot.data;

                return ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      Map categories = snapshot.data[index];
                      return Card(
                        child: ListTile(
                          title: Text(categories['name']),
                          onTap: () => {},
                        ),
                      );
                    });
              } else {
                // return Center(child: CircularProgressIndicator());
                return Container(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Column(
                        children: [
                          Text('Cargando...'),
                          SizedBox(height: 20.0),
                          LinearProgressIndicator()
                        ],
                      ),
                    ));
              }
            }));
  }

  // Widget _loadCategoryList() {
  //   return FutureBuilder(
  //     future: categoryProvider.categoryList(),
  //     builder: (BuildContext context, AsyncSnapshot<List<Category>> snapshot) {
  //       if (snapshot.hasData) {
  //         final categories = snapshot.data;

  //         return ListView.builder(
  //           itemCount: categories.length,
  //           itemBuilder: (context, i) => _itemCategoryList(categories[i]),
  //         );
  //       } else {
  //         return Center(child: CircularProgressIndicator());
  //       }
  //     },
  //   );
  // }

  // Widget _itemCategoryList(Category categoryModel) {
  //   return Card(
  //       child: ListTile(
  //     title: Text('${categoryModel.categoryName}'),
  //     onTap: () => {},
  //   ));
  // }
}

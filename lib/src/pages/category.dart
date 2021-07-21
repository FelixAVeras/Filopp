import 'package:flutter/material.dart';
import 'package:new_filopp/src/helpers/http_services.dart';
import 'package:new_filopp/src/models/Category.dart';
import 'package:new_filopp/src/providers/category_provider.dart';

class CategoryPage extends StatelessWidget {
  Category categoryModel = new Category();
  final categoryProvider = new CategoryProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Categorias'),
        ),
        body: _loadCategoryList());
  }

  Widget _loadCategoryList() {
    return FutureBuilder(
      future: categoryProvider.categoryList(),
      builder: (BuildContext context, AsyncSnapshot<List<Category>> snapshot) {
        if (snapshot.hasData) {
          final categories = snapshot.data;

          return ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, i) => _itemCategoryList(categories[i]),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _itemCategoryList(Category categoryModel) {
    return Card(
        child: ListTile(
      title: Text('${categoryModel.categoryName}'),
      onTap: () => {},
    ));
  }
}

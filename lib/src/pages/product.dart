import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_filopp/src/helpers/http_services.dart';
import 'package:new_filopp/src/models/Product.dart';

class ProductPage extends StatefulWidget {
  @override
  _productPageState createState() => _productPageState();
}

class _productPageState extends State<ProductPage> {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Menu - Productos'),
      ),
      body: FutureBuilder(
          future: httpService.getAllProducts(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
            if (snapshot.hasData) {
              List<Product> products = snapshot.data;

              return ListView(
                children: products
                    .map((Product product) =>
                        ListTile(title: Text(product.productName)))
                    .toList(),
              );
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}

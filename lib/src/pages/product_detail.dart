import 'package:flutter/material.dart';
import 'package:new_filopp/src/models/Product.dart';
import 'package:new_filopp/src/providers/product_provider.dart';

class ProductDetailPage extends StatefulWidget {
  ProductDetailPage(this.products);
  final Product products;
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle de Producto'),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(8.0),
        // width: 440,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Column(children: [Text('NombreProducto')]),
            ),
          ],
        ),
      )),
    );
  }
}

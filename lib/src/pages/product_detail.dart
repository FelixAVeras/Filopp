import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/image.dart' as flutterImage;
import 'package:new_filopp/src/models/Product.dart';
import 'package:new_filopp/src/providers/product_provider.dart';

class ProductDetailPage extends StatefulWidget {
  final Product products;
  ProductDetailPage(this.products);
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final Product products = new Product();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles'),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Column(children: [
                // flutterImage.Image.network(products.images.src),
                // flutterImage.Image.network(products['images']['src']),
                flutterImage.Image.network(
                    'https://via.placeholder.com/400x200'),
                SizedBox(height: 30.0),
                Text(
                  products.name != null ? products.name : 'NombreProducto',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nisi assumenda necessitatibus illo, inventore corporis, natus fugiat maiores quam quis animi odit corrupti mollitia exercitationem consequatur, ipsum reiciendis quibusdam voluptate fuga?',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 30.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Precio: \$\$\$\$\$',
                    style: TextStyle(fontSize: 16.0, color: Colors.red),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 10.0),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Categoria: NombreCategoria',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold)))
              ]),
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => {},
          icon: Icon(Icons.shopping_cart),
          label: Text('Agregar al Carrito')),
    );
  }
}

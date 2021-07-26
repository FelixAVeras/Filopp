import 'package:flutter/material.dart';
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
                Text(
                  products.name != null ? products.name : 'NombreProducto',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Tu va cae en un gancho, sabemo que tu ta ancho, como luchador te plancho y como nieve me avalancho. Tu cara no distingo de un trasero como pancho y pa guindarme en un dico contigo prefiero mejor me engancho.',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 30.0),
                Text(
                  'Precio: \$16400',
                  style: TextStyle(fontSize: 16.0, color: Colors.red),
                  textAlign: TextAlign.left,
                ),
                Text('Categoria: Hamburgesa',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
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

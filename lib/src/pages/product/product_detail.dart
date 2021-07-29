import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/image.dart' as flutterImage;
import 'package:new_filopp/src/models/Product.dart';
import 'package:new_filopp/src/providers/product_provider.dart';

class ProductDetailPage extends StatefulWidget {
  ProductDetailPage(this.products);
  final Product products;

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  // final Product products = new Product();
  _ProductDetailPageState();
  final ProductProvider productProvider = ProductProvider();

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
                CachedNetworkImage(
                  placeholder: (context, url) => CircularProgressIndicator(),
                  imageUrl: 'https://via.placeholder.com/400x200',
                ),
                SizedBox(height: 30.0),
                Text(
                  widget.products.name != null
                      ? widget.products.name
                      : 'NombreProducto',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Text(
                  widget.products.description != null
                      ? widget.products.description
                      : 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nisi assumenda necessitatibus illo, inventore corporis, natus fugiat maiores quam quis animi odit corrupti mollitia exercitationem consequatur, ipsum reiciendis quibusdam voluptate fuga?',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 25.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Precio: \$' + widget.products.price != null
                        ? 'Precio: \$' + widget.products.price
                        : 'Precio: \$\$\$\$\$',
                    style: TextStyle(fontSize: 16.0, color: Colors.red),
                    textAlign: TextAlign.left,
                  ),
                ),
                // SizedBox(height: 10.0),
                // Align(
                //     alignment: Alignment.bottomLeft,
                //     child: Text('Categoria: ' + widget.products.tags.na :'Categoria: NombreCategoria',
                //         style: TextStyle(
                //             fontSize: 14.0, fontWeight: FontWeight.bold)))
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

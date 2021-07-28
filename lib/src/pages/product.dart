import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/image.dart' as flutterImage;
import 'package:new_filopp/src/models/Product.dart';
import 'package:new_filopp/src/pages/product_detail.dart';
import 'package:new_filopp/src/providers/product_provider.dart';

class ProductPage extends StatefulWidget {
  @override
  _productPageState createState() => _productPageState();
}

class _productPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Menu'),
      ),
      body: FutureBuilder(
        future: productList(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            var products = snapshot.data;

            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, int index) {
                Map products = snapshot.data[index];
                return Card(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductDetailPage(products[index])));
                  },
                  child: ListTile(
                    // leading:
                    //     flutterImage.Image.network(products['images']['src']),
                    leading: flutterImage.Image.network(
                        'https://via.placeholder.com/150'),
                    title: Text(products['name']),
                    subtitle: Text(
                      'Precio: \$' + products['price'],
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  // child: Column(
                  //   children: [
                  //     Text(
                  //       products['name'],
                  //       style: TextStyle(
                  //         fontSize: 18,
                  //       ),
                  //       textAlign: TextAlign.left,
                  //     ),
                  //     Text('Precio: \$' + products['price']),
                  //     // Text('Restaurante: ' + products['tags']['name']),
                  //     // Text('Categoria: ' + products['categories']['name']),
                  //   ],
                  // ),
                ));
              },
            );
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
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
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
        title: Text('Menu - Productos'),
      ),
      body: FutureBuilder(
        future: productList(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            var products = snapshot.data;

            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                Map products = snapshot.data[index];
                return Card(
                    child: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             ProductDetailPage(products['id'])));
                  },
                  child: ListTile(
                    // leading: Image.network(products['images']['src']),
                    title: Text(products['name']),
                    subtitle: Text(
                      'Precio: \$' + products['price'],
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ));
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

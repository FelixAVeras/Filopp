import 'package:flutter/material.dart';
import 'package:new_filopp/src/models/Product.dart';
import 'package:flutter/src/widgets/image.dart' as flutterImage;
import 'package:new_filopp/src/pages/product/product_detail.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products == null ? 0 : products.length,
        itemBuilder: (BuildContext context, int index) {
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
                leading: flutterImage.Image.network(
                    'https://via.placeholder.com/200'),
                title: Text(products[index].name),
                subtitle: Text('\$' + products[index].price,
                    style: TextStyle(color: Colors.red)),
              ),
            ),
          );
        });
  }
}

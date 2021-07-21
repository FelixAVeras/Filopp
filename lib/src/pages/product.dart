import 'package:flutter/material.dart';
import 'package:new_filopp/src/models/Product.dart';
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
      // body: _loadProductList(),
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
                    child: ListTile(
                  title: Text(products['title']['rendered']),
                  subtitle: Text(products['content']['rendered']),
                  onTap: () => {},
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

//   Widget _loadProductList() {
//     final productProvider = new ProductProvider();
//     return FutureBuilder(
//       future: productProvider.productList(),
//       builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
//         if (snapshot.hasData) {
//           final products = snapshot.data;

//           return ListView.builder(
//             itemCount: products.length,
//             itemBuilder: (context, i) => _itemProductList(products[i]),
//           );
//         } else {
//           return Center(child: CircularProgressIndicator());
//         }
//       },
//     );
//   }

//   Widget _itemProductList(Product productModel) {
//     return Card(
//         child: ListTile(
//       title: Text('${productModel.productName}'),
//       onTap: () => {},
//     ));
//   }
// }

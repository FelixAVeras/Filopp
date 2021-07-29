import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/image.dart' as flutterImage;
import 'package:new_filopp/src/models/Product.dart';
import 'package:new_filopp/src/pages/product/product_detail.dart';
import 'package:new_filopp/src/pages/product/productlist.dart';
import 'package:new_filopp/src/providers/product_provider.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ProductProvider productProvider = ProductProvider();
  List<Product> productsList;

  @override
  Widget build(BuildContext context) {
    if (productsList == null) {
      productsList = List<Product>();
    }

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Menu'),
        ),
        body: FutureBuilder(
          future: loadProductList(),
          builder: (context, snapshot) {
            return productsList.length > 0
                ? new ProductList(products: productsList)
                : Container(
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
          },
        ));
  }

  Future loadProductList() {
    Future<List<Product>> futureCases = productProvider.getProducts();
    futureCases.then((productList) {
      setState(() {
        this.productsList = productList;
      });
    });
    return futureCases;
  }
}

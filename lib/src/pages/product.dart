// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:new_filopp/src/helpers/http_services.dart';
// import 'package:new_filopp/src/models/Product.dart';

// class ProductPage extends StatefulWidget {
//   @override
//   _productPageState createState() => _productPageState();
// }

// class _productPageState extends State<ProductPage> {
//   final HttpService httpService = HttpService();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Menu - Productos'),
//       ),
//       body: FutureBuilder(
//           future: httpService.getAllProducts(),
//           builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
//             if (snapshot.hasData) {
//               List products = snapshot.data;

//               return ListView.builder(
//                 itemCount: products.length,
//                 itemBuilder: (context, index) {
//                   Map product = products[index] as Map;
//                   return Card(
//                     child: ListTile(
//                       title: Text(product['title']['rendered']),
//                       subtitle: Text(product['content']['rendered']),
//                     ),
//                   );
//                 },
//               );
//             }
//             return Center(child: CircularProgressIndicator());
//           }),
//     );
//   }
// }

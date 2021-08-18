import 'package:flutter/material.dart';
import 'package:new_filopp/src/pages/restaurant/qrcode_page.dart';
import 'package:new_filopp/src/providers/restaurant_provider.dart';

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Restaurantes'),
          actions: [
            // PopupMenuButton(
            //     child: Padding(
            //       child: Text('Opciones'),
            //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            //     ),
            //     itemBuilder: (context) => [
            //           PopupMenuItem(
            //             child: Text('Hacer Reservacion'),
            //           ),
            //           PopupMenuItem(
            //             child: Text('Escanear Menu QR'),

            //           )
            //         ])
            IconButton(
                tooltip: 'Escanear Codigo',
                icon: Icon(
                  Icons.qr_code,
                  color: Colors.white,
                ),
                // onPressed: _scan)
                onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => QRPage()))
                    })
          ],
        ),
        body: FutureBuilder(
            future: restaurantList(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                var restaurants = snapshot.data;

                return ListView.builder(
                    itemCount: restaurants.length,
                    itemBuilder: (context, index) {
                      Map restaurants = snapshot.data[index];
                      return Card(
                        child: ListTile(
                          leading:
                              Image.network('https://via.placeholder.com/150'),
                          title: Text(restaurants['name']),
                          subtitle: Text('Descripcion del Restaurante'),
                          onTap: () => {},
                        ),
                      );
                    });
              } else {
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
            }));
  }

  // _scan() async {
  //   String futureString = '';

  //   try {
  //     futureString = await new QRCodeReader().scan();
  //   } catch (e) {
  //     futureString = e.toString();
  //   }

  //   print('FutureString: $futureString');

  //   if (futureString != null) {
  //     print('TENEMOS INFORMACION');
  //   }
  // }
}
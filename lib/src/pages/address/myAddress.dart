import 'package:flutter/material.dart';
import 'package:new_filopp/src/pages/address/addNewAddress.dart';

class MyAddressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Mis Direcciones'),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewAddressPage()))
                  })
        ],
      ),
      body: Center(child: Text('Mis Direcciones')),
    );
  }
}

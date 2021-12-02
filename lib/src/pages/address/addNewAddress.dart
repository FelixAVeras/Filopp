import 'package:flutter/material.dart';

class NewAddressPage extends StatefulWidget {
  @override
  _NewAddressPageState createState() => _NewAddressPageState();
}

class _NewAddressPageState extends State<NewAddressPage> {
  final _addFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nueva Direccion'),
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                    PopupMenuItem(child: Text('Ubicacion GPS')),
                  ])
        ],
      ),
      body: Form(
        key: _addFormKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Direccion',
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'No. de piso/Apartamento/Casa',
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Referencias para la entrega',
                        hintText: 'Ej: En la misma calle de...'),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Telefono',
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Alias',
                        hintText: 'Casa, Trabajo, etc...'),
                  ),
                  SizedBox(height: 35.0),
                  RaisedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 110.0, vertical: 15.0),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    onPressed: () => {},
                    child: Text(
                      'Guardar',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:new_filopp/src/helpers/http_services.dart';
// import 'package:new_filopp/src/helpers/http_services.dart';
import 'package:new_filopp/src/pages/home.dart';
import 'package:new_filopp/src/pages/register.dart';
// // // import 'package:personalmoney/bloc/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

// // ignore: camel_case_types
class _loginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isApiCallProcess = false;
  bool hidePassword = true;
  // APIHttpService httpService;

  String username;
  String password;

  @override
  void initState() {
    // httpService = new APIHttpService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Center(
          child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(8.0),
              children: <Widget>[
            Center(
                child: Card(
              elevation: 5.0,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Image.asset('assets/filopp_logo.png'),
                    SizedBox(height: 30.0),
                    Text('Inicio de Sesion',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            fontStyle: FontStyle.italic)),
                    SizedBox(height: 15.0),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Form(
                            key: _formKey,
                            child: Column(children: [
                              TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Nombre de usuario',
                                    prefixIcon: Icon(Icons.person_outline),
                                    hintText: 'Usuario'),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Introduzca un usuario valido';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 25.0),
                              TextFormField(
                                obscureText: hidePassword,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Contraseña',
                                    prefixIcon:
                                        Icon(Icons.lock_outline_rounded),
                                    suffix: InkWell(
                                      onTap: togglePasswordView,
                                      child: Icon(hidePassword
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    )),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Introduzca una contraseña valida';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 35.0),
                              RaisedButton(
                                child: Container(
                                  child: Text('Iniciar Sesion'),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 80.0, vertical: 15.0),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                onPressed: () {
                                  if (validatedForm()) {
                                    // httpService.loginUser(username, password);

                                    print('usuario: ${this.username}');
                                    print('Contraseña: ${this.password}');

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));

                                    // showDialog<String>(
                                    //     context: context,
                                    //     builder: (BuildContext context) =>
                                    //         AlertDialog(
                                    //           title: const Text('Filopp'),
                                    //           content: Text(
                                    //               '${this.username}, Entraste'),
                                    //           actions: [
                                    //             TextButton(
                                    //                 onPressed: () =>
                                    //                     Navigator.pop(
                                    //                         context, 'OK'),
                                    //                 child:
                                    //                     const Text('Aceptar'))
                                    //           ],
                                    //         ));
                                  }
                                },
                                color: Colors.red,
                                textColor: Colors.white,
                              ),
                              // SizedBox(height: 25.0),
                              // RaisedButton(
                              //     child: Text('Registro de Usuario'),
                              //     padding: EdgeInsets.symmetric(
                              //         horizontal: 80.0, vertical: 15.0),
                              //     shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(5.0)),
                              //     color: Colors.white,
                              //     textColor: Colors.red,
                              //     onPressed: () => {
                              //           Navigator.push(
                              //               context,
                              //               MaterialPageRoute(
                              //                   builder: (context) =>
                              //                       RegisterPage()))
                              //         }),
                            ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
          ])),
    );
  }

  void togglePasswordView() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  bool validatedForm() {
    final form = _formKey.currentState;

    if (form.validate()) {
      form.save();

      return true;
    }

    return false;
  }
}

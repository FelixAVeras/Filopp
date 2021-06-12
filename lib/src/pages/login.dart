import 'package:flutter/material.dart';
import 'package:new_filopp/src/helpers/http_services.dart';
// import 'package:new_filopp/src/helpers/http_services.dart';
import 'package:new_filopp/src/pages/home.dart';
import 'package:new_filopp/src/pages/register.dart';
// // // import 'package:personalmoney/bloc/provider.dart';

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//       children: [_customAppBackground(context), _loginForm(context)],
//     ));
//   }

//   Widget _loginForm(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     // final bloc = CustomProvider.of(context);

//     bool isApiCallProcess = false;
//     HttpService httpService;

//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           SafeArea(
//               child: Container(
//             height: 180.0,
//           )),
//           Container(
//             width: size.width * 0.85,
//             padding: EdgeInsets.symmetric(vertical: 50.0),
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(5.0),
//                 boxShadow: <BoxShadow>[
//                   BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 3.0,
//                       offset: Offset(0.0, 0.5),
//                       spreadRadius: 3.0),
//                 ]),
//             child: Column(
//               children: [
//                 Text(
//                   'Inicio de Sesion',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//                 SizedBox(height: 40.0),
//                 // _emailField(bloc),
//                 _emailField(),
//                 SizedBox(height: 40.0),
//                 // _passwordField(bloc),
//                 _passwordField(),
//                 SizedBox(height: 60.0),
//                 _btnLogin(context)
//               ],
//             ),
//           ),
//           // SizedBox(height: 40.0),
//           // Text('Olvido su contraseña?'),
//           SizedBox(height: 40.0),
//           ButtonTheme(
//               minWidth: 270.0,
//               height: 50.0,
//               shape: RoundedRectangleBorder(
//                   side: BorderSide(
//                       color: Colors.red, width: 1, style: BorderStyle.solid),
//                   borderRadius: BorderRadius.circular(5.0)),
//               child: OutlineButton(
//                 color: Colors.white,
//                 onPressed: () => {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => RegisterPage()))
//                 },
//                 child: Text(
//                   'Registrar Usuario',
//                   style: TextStyle(color: Colors.red),
//                 ),
//               )),
//           // OutlineButton(
//           //   onPressed: () => {
//           //     Navigator.push(context,
//           //         MaterialPageRoute(builder: (context) => RegisterPage()))
//           //   },
//           //   child: Text('Registrar Usuario'),
//           // ),
//           SizedBox(height: 40.0),
//           // Text(
//           //   'IF Software - ©2021',
//           //   style: TextStyle(color: Colors.grey[400]),
//           // ),
//           // SizedBox(height: 20.0),
//         ],
//       ),
//     );
//   }

//   // Widget _emailField(LoginBloc bloc) {
//   Widget _emailField() {
//     return StreamBuilder(
//         // stream: bloc.emailStream,
//         builder: (BuildContext context, AsyncSnapshot snapshot) {
//       return Container(
//         padding: EdgeInsets.symmetric(horizontal: 20.0),
//         child: TextFormField(
//           validator: (value) {
//             if (value == null || value.isEmpty) {
//               return 'Este campo no puede estar vacio.';
//             }

//             return null;
//           },
//           keyboardType: TextInputType.emailAddress,
//           decoration: InputDecoration(
//               icon: Icon(
//                 Icons.alternate_email,
//                 color: Colors.red,
//               ),
//               labelText: 'Correo Electronico',
//               hintText: 'ejemplo@ejemplo.com',
//               counterText: snapshot.data),
//           // onChanged: bloc.changeEmail,
//         ),
//       );
//     });
//   }

//   // Widget _passwordField(LoginBloc bloc) {
//   Widget _passwordField() {
//     return StreamBuilder(
//         // stream: bloc.passwordStream,
//         builder: (BuildContext context, AsyncSnapshot snapshot) {
//       return Container(
//         padding: EdgeInsets.symmetric(horizontal: 20.0),
//         child: TextFormField(
//           validator: (value) {
//             if (value == null || value.isEmpty) {
//               return 'Este campo no puede estar vacio.';
//             }

//             return null;
//           },
//           keyboardType: TextInputType.emailAddress,
//           obscureText: true,
//           decoration: InputDecoration(
//               icon: Icon(
//                 Icons.lock_outline,
//                 color: Colors.red,
//               ),
//               labelText: 'Contraseña',
//               counterText: snapshot.data),
//           // onChanged: bloc.changePassword,
//         ),
//       );
//     });
//   }

//   Widget _btnLogin(BuildContext context) {
//     return RaisedButton(
//       child: Container(
//         child: Text('Iniciar Sesion'),
//         padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
//       ),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
//       color: Colors.red,
//       textColor: Colors.white,
//       onPressed: () => {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => HomePage()))
//       },
//     );
//   }

//   Widget _customAppBackground(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     final backgroundApp = Container(
//       height: size.height * 0.2,
//       width: double.infinity,
//       decoration: BoxDecoration(
//           gradient: LinearGradient(colors: <Color>[
//         Color.fromRGBO(200, 20, 20, 1.0),
//         Color.fromRGBO(255, 26, 26, 1.0)
//       ])),
//     );

//     return Stack(
//       children: [
//         backgroundApp,
//         Container(
//           padding: EdgeInsets.only(top: 50.0),
//           child: Column(
//             children: [
//               // Icon(Icons.account_balance_wallet_outlined,
//               //     color: Colors.white, size: 100.0),
//               Image(image: AssetImage('assets/filopp_logo.png')),
//               SizedBox(height: 10.0, width: double.infinity),
//               // Text('Personal Money',
//               //     style: TextStyle(color: Colors.white, fontSize: 25.0))
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

// // ignore: camel_case_types
class _loginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isApiCallProcess = false;
  bool hidePassword = true;
  HttpService httpService;

  String username;
  String password;

  @override
  void initState() {
    httpService = new HttpService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
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
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Correo Electronico',
                                    prefixIcon: Icon(Icons.alternate_email),
                                    hintText: 'ejemplo@ejemplo.com'),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Introduzca un email valido';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 25.0),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Contraseña',
                                    prefixIcon:
                                        Icon(Icons.lock_outline_rounded)),
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
                                    setState(() {
                                      isApiCallProcess = true;
                                    });

                                    httpService.LoginUser(username, password)
                                        .then((ret) {
                                      if (ret != null) {
                                        AlertDialog(
                                          title: Text('Filopp'),
                                          content: Text('Hiciste Login!!!'),
                                          actions: [
                                            FlatButton(
                                                child: Text('Cancelar'),
                                                onPressed: () {}),
                                            FlatButton(
                                                child: Text('Aceptar'),
                                                onPressed: () {}),
                                          ],
                                          elevation: 24.0,
                                        );
                                      } else {
                                        AlertDialog(
                                          title: Text('Filopp'),
                                          content:
                                              Text('Algo anda mal (-_-") ... '),
                                          actions: [
                                            FlatButton(
                                                child: Text('Aceptar'),
                                                onPressed: () {}),
                                          ],
                                          elevation: 24.0,
                                        );
                                      }
                                    });
                                  }
                                },
                                color: Colors.red,
                                textColor: Colors.white,
                              ),
                              SizedBox(height: 25.0),
                              RaisedButton(
                                child: Text('Registro de Usuario'),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 80.0, vertical: 15.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                color: Colors.white,
                                textColor: Colors.red,
                                onPressed: () {},
                              ),
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
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       resizeToAvoidBottomPadding: false,
  //       body: Container(
  //           child: SingleChildScrollView(
  //         child: Column(
  //           children: [
  //             Image.asset('assets/filopp_logo.png'),
  //             SizedBox(height: 30.0),
  //             Text('Inicio de Sesion',
  //                 style: TextStyle(
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 24.0,
  //                     fontStyle: FontStyle.italic)),
  //             SizedBox(height: 15.0),
  //             Container(
  //               padding: EdgeInsets.all(10.0),
  //               child: Column(
  //                 children: [
  //                   Form(
  //                     key: _formKey,
  //                     child: Column(children: [
  //                       TextFormField(
  //                         keyboardType: TextInputType.emailAddress,
  //                         decoration: InputDecoration(
  //                             border: OutlineInputBorder(),
  //                             labelText: 'Correo Electronico',
  //                             hintText: 'ejemplo@ejemplo.com'),
  //                         validator: (value) {
  //                           if (value == null || value.isEmpty) {
  //                             return 'Introduzca un email valido';
  //                           }
  //                           return null;
  //                         },
  //                       ),
  //                       SizedBox(height: 25.0),
  //                       TextFormField(
  //                         obscureText: true,
  //                         decoration: InputDecoration(
  //                           border: OutlineInputBorder(),
  //                           labelText: 'Contraseña',
  //                         ),
  //                         validator: (value) {
  //                           if (value == null || value.isEmpty) {
  //                             return 'Introduzca una contraseña valida';
  //                           }
  //                           return null;
  //                         },
  //                       ),
  //                       SizedBox(height: 35.0),
  //                       RaisedButton(
  //                         child: Container(
  //                           child: Text('Iniciar Sesion'),
  //                           padding: EdgeInsets.symmetric(
  //                               horizontal: 80.0, vertical: 15.0),
  //                         ),
  //                         shape: RoundedRectangleBorder(
  //                             borderRadius: BorderRadius.circular(5.0)),
  //                         onPressed: () {
  //                           if (validatedForm()) {
  //                             setState(() {
  //                               isApiCallProcess = true;
  //                             });

  //                             httpService.LoginUser(username, password)
  //                                 .then((ret) {
  //                               if (ret != null) {
  //                                 AlertDialog(
  //                                   title: Text('Filopp'),
  //                                   content: Text('Hiciste Login!!!'),
  //                                   actions: [
  //                                     FlatButton(
  //                                         child: Text('Cancelar'),
  //                                         onPressed: () {}),
  //                                     FlatButton(
  //                                         child: Text('Aceptar'),
  //                                         onPressed: () {}),
  //                                   ],
  //                                   elevation: 24.0,
  //                                 );
  //                               } else {
  //                                 AlertDialog(
  //                                   title: Text('Filopp'),
  //                                   content: Text('Algo anda mal (-_-") ... '),
  //                                   actions: [
  //                                     FlatButton(
  //                                         child: Text('Aceptar'),
  //                                         onPressed: () {}),
  //                                   ],
  //                                   elevation: 24.0,
  //                                 );
  //                               }
  //                             });
  //                           }
  //                         },
  //                         color: Colors.red,
  //                         textColor: Colors.white,
  //                       ),
  //                       SizedBox(height: 25.0),
  //                       RaisedButton(
  //                         child: Text('Registro de Usuario'),
  //                         padding: EdgeInsets.symmetric(
  //                             horizontal: 80.0, vertical: 15.0),
  //                         shape: RoundedRectangleBorder(
  //                             borderRadius: BorderRadius.circular(5.0)),
  //                         color: Colors.white,
  //                         textColor: Colors.red,
  //                         onPressed: () {},
  //                       ),
  //                     ]),
  //                   )
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       )));
  // }

  bool validatedForm() {
    final form = _formKey.currentState;

    if (form.validate()) {
      form.save();

      return true;
    }

    return false;
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_screen/src/screens/DataScreen.dart';

class LoginWidget extends StatelessWidget {
  LoginWidget({Key? key}) : super(key: key);
  String user = '', password = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            decoration: InputDecoration(hintText: "Ingrese su usuario aqui"),
            onChanged: (value) {
              user = value;
            },
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          TextField(
            obscureText: true,
            decoration: InputDecoration(hintText: "Ingrese su password aqui"),
            onChanged: (value) {
              password = value;
            },
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DataScreen(
                              user: user,
                              password: password,
                            )));
              },
              child: Text("Iniciar sesion"))
        ]),
      ),
    );
  }
}

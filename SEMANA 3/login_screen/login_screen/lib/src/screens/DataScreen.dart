// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  DataScreen({Key? key, required this.user, required this.password})
      : super(key: key);
  String user;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataScreen"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Usted ha ingresado el nombre de usuario: "),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              user,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Text("Usted ha ingresado la password: "),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              password,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Regresar"))
        ],
      )),
    );
  }
}

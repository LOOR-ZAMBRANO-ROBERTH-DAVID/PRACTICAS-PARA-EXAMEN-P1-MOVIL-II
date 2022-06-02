import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: _aumentar,
        child: Text(_contador.toString()),
      ),
    );
  }

  void _aumentar() {
    setState(() {
      _contador = _contador + 1;
    });
  }
}

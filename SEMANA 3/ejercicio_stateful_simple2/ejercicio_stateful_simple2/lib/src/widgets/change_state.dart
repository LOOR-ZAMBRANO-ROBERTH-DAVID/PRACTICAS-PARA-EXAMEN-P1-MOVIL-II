// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChangueState extends StatefulWidget {
  ChangueState({Key? key}) : super(key: key);

  @override
  State<ChangueState> createState() => _ChangueStateState();
}

class _ChangueStateState extends State<ChangueState> {
  bool _state = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: _cambiarEstado,
        color: Colors.orange,
        icon: (_state
            ? Icon(
                Icons.star_border,
                size: 100,
              )
            : Icon(
                Icons.star,
                size: 100,
              )),
      ),
    );
  }

  void _cambiarEstado() {
    setState(() {
      if (_state == false) {
        _state = true;
      } else {
        _state = false;
      }
    });
  }
}

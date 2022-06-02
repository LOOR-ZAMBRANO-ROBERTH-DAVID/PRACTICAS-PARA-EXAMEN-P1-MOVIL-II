import 'package:canciones2/src/models/cancion_data.dart';
import 'package:flutter/material.dart';

import '../models/cancion_model.dart';

class CancionesWidget extends StatelessWidget {
  const CancionesWidget({Key? key, required this.onTap, required this.cancion})
      : super(key: key);
  final Function onTap;
  final Cancion cancion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(cancion);
      },
      child: Column(
        children: [
          Text(
            cancion.titulo,
            style: TextStyle(fontSize: 30),
          ),
          Text(cancion.autor, style: TextStyle(fontSize: 30)),
          Divider()
        ],
      ),
    );
  }
}

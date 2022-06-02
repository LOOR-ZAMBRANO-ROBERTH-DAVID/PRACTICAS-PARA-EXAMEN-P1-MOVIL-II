import 'package:flutter/material.dart';
import 'package:canciones/src/models/canciones_data.dart';

import '../models/canciones_model.dart';

class CancionesWidget extends StatelessWidget {
  const CancionesWidget(
      {Key? key, required this.canciones, required this.onTap})
      : super(key: key);
  final Canciones canciones;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(canciones);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(canciones.titulo), Text(canciones.autor), Divider()],
      ),
    );
  }
}

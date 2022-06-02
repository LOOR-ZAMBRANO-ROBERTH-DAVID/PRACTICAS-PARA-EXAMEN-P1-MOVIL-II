import 'package:canciones2/src/models/cancion_data.dart';
import 'package:canciones2/src/widgets/canciones_widget.dart';
import 'package:flutter/material.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Canciones muy XD"),
      ),
      body: ListView(
          children: canciones
              .map((canciones) =>
                  CancionesWidget(cancion: canciones, onTap: imprimir))
              .toList()),
    );
  }
}

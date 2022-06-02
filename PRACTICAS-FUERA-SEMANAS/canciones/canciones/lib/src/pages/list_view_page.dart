import 'package:canciones/src/models/canciones_data.dart';
import 'package:canciones/src/widgets/canciones_widget.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Canciones"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: canciones
            .map(
              (uwu) => CancionesWidget(canciones: uwu, onTap: imprimir),
            )
            .toList(),
            
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(Icons.list),
          trailing: Text(
            "uwu",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          title: Text("Item $index"),
        );
      },
    );
  }
}

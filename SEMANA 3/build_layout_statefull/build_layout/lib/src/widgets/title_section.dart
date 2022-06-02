// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:build_layout/src/widgets/favorite_widget.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: prefer_const_constructors
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Parque Nacional del Lago Mburo",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Text("Ecuador", style: TextStyle(color: Colors.grey))
              ],
            ),
          ),

          FavoriteWidget(),
        ],
      ),
    );
  }
}

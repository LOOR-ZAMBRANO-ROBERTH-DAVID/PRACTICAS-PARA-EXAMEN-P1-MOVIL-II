// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Icon(Icons.phone),
                  Padding(padding: EdgeInsets.all(8)),
                  Text("CALL")
                ],
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Icon(Icons.share_location),
                  Padding(padding: EdgeInsets.all(8)),
                  Text("ROUTE")
                ],
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Icon(Icons.share),
                  Padding(padding: EdgeInsets.all(8)),
                  Text("SHARE")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'dart:html';

import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Image.asset(
          'assets/images/lago.jpeg',
          height: 240,
          width: 600,
        ),
      ],
    ));
  }
}

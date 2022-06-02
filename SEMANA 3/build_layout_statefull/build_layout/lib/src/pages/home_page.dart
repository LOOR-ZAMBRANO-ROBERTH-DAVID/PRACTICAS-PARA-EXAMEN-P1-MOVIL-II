import 'package:build_layout/src/widgets/buttons_section.dart';
import 'package:build_layout/src/widgets/image_section.dart';
import 'package:build_layout/src/widgets/title_section.dart';
import 'package:flutter/material.dart';

import '../widgets/text_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido"),
      ),
      body: Column(
        children: [
          ImageSection(),
          TitleSection(),
          ButtonsSection(),
          TextSection(),
        ],
      ),
    );
  }
}

import 'package:cartoons_flutter/widgets/character_widget.dart';
import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/character.dart';
import 'package:cartoons_flutter/model/characters_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("uwu"),
      ),
      body: ListView(
        children: characters.map((e) => CharacterWidget(character: e)).toList(),       
      ),
    );

  }
}
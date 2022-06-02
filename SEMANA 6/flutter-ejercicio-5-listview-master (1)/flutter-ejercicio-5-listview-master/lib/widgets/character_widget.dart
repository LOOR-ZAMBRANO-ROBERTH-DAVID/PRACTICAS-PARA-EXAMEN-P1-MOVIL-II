import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/character.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO 0: Usa widgets básicos que ya conoces para crear este widget/cell.
    // Algunos consejos útiles:
    // * No elimine el widget Container(), agregue todos sus widgets dentro. Recuerde que el widget Container
    //   tiene un solo hijo, pero su primer paso probablemente debería ser agregar un widget Row como ese hijo.
    // * Cargue imágenes con Image.asset (character.image, ...
    // * En el widget Container, siéntase libre de usar decoration:
    //   BoxDecoration (color: Colors.black12, borderRadius: BorderRadius.all (Radius.circular (20.0)))
    return Container(
      margin: EdgeInsets.all(20),
      width: 250,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.orange,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Image.asset(character.image),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  character.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Container(
                      decoration: BoxDecoration(
                        color: character.stars < 4 ? Colors.red : Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        character.stars.toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        character.jobTitle,
                        style: TextStyle(fontSize: 25),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

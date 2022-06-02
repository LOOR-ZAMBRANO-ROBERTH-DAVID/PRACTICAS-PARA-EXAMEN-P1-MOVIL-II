import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Text(
        "bjdfb sjdfh sdfhsdfjsdjfsjfsf sdfjsjhs jhsjfsj df jsdf jshjsdj sjjhsd jsj sdhf jsjdshfsjdf hsj sjf sdfjh sj fj sdfjsdfsfjsdfjhs sdj s jhf ",
        style: TextStyle(fontSize: 18),
        softWrap: true,
      ),
    );
  }
}

// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  FavoriteWidget({Key? key}) : super(key: key);

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: IconButton(
            onPressed: _toggleFavorite,
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Color.fromARGB(255, 255, 165, 54),
          ),
        ),
        Container(
          child: Text(
            _favoriteCount.toString(),
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount = _favoriteCount - 1;
        _isFavorited = false;
      } else {
        _favoriteCount = _favoriteCount + 1;
        _isFavorited = true;
      }
    });
  }
}

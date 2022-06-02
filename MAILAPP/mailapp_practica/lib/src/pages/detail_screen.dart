import 'package:flutter/material.dart';
import 'package:mailapp_practica/model/email.dart';

class DetailScreen extends StatelessWidget {
  final Email email;
  const DetailScreen({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(email.subject),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('from: ' + email.from),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Text(email.subject),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Text(email.dateTime.toString()),
            Divider(),
            Padding(padding: EdgeInsets.all(30)),
            Text(email.body)
          ],
        ),
      ),
    );
  }
}

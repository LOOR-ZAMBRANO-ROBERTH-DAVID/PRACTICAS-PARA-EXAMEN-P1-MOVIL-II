import 'package:flutter/material.dart';
import 'package:mailapp2/src/model/backend.dart';
import 'package:mailapp2/src/pages/detail_screen.dart';
import 'package:mailapp2/src/widgets/email_widget.dart';

import '../model/email.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListScreen> {
  void longPress(Email email) {
    setState(() {
      Backend().markEmailAsRead(email.id);
    });
  }

  void swipe(Email email) {
    setState(() {
      Backend().deleteEmail(email.id);
    });
  }

  void ontap(Email email, context) {
    setState(() {
      Backend().markEmailAsRead(email.id);
    });
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => DetailScreen(email: email)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hola xd"),
      ),
      body: ListView(
          children: Backend()
              .getEmails()
              .map((email) => EmailWidget(
                  email: email,
                  longPress: longPress,
                  swipe: swipe,
                  ontap: ontap))
              .toList()),
    );
  }
}

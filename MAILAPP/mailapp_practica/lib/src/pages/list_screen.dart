import 'package:flutter/material.dart';
import 'package:mailapp_practica/model/backend.dart';
import 'package:mailapp_practica/src/pages/detail_screen.dart';
import 'package:mailapp_practica/src/widgets/email_widget.dart';

import '../../model/email.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  //declaracion de metodos
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
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailScreen(email: email)),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mail App"),
      ),
      body: ListView(
        children: Backend().getEmails().map((email) => EmailWidget(
          email:email,
          longPress: longPress,
          swipe: swipe,
          ontap: ontap,
        )).toList()
      ),
    );
  }
}

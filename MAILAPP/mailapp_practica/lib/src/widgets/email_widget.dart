import 'package:flutter/material.dart';
import 'package:mailapp_practica/model/email.dart';

class EmailWidget extends StatelessWidget {
  final Email email;
  final Function longPress;
  final Function swipe;
  final Function ontap;

  EmailWidget(
      {Key? key,
      required this.email,
      required this.longPress,
      required this.swipe,
      required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => longPress(email),
      onHorizontalDragEnd: (details) => swipe(email),
      onTap: () => ontap(
        email,
        context,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),
          ),
        ),
        margin: EdgeInsets.all(10),
        child: Row(children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: email.read ? Colors.transparent : Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(email.dateTime.toString().split(' ')[0]),
                Text(
                  email.from,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

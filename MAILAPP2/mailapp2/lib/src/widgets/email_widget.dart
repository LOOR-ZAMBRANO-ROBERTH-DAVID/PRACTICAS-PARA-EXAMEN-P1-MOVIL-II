import 'package:flutter/material.dart';

import '../model/email.dart';

class EmailWidget extends StatelessWidget {
  const EmailWidget(
      {Key? key,
      required this.email,
      required this.longPress,
      required this.swipe,
      required this.ontap})
      : super(key: key);

  final Email email;
  final Function longPress;
  final Function swipe;
  final Function ontap;

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
        margin: EdgeInsets.all(10),
        child: Row(
          //este es el circulo que nos indica si fue visto o no
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: email.read ? Colors.transparent : Colors.lightBlue,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(email.dateTime.toString()),
                  Text(email.from),
                  Text(email.subject),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

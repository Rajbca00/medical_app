import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'Elsie Adkins',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/images/waving-hand.png',
              width: 35,
            ),
          ],
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Theme.of(context).accentColor,
          child: Image.asset(
            'assets/images/woman.png',
            // fit: BoxFit.contain,
            width: 30,
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../constant.dart';

class OptionCard extends StatelessWidget {
  bool primaryCard = false;
  final String title;
  final String subtitle;
  final IconData icon;
  Function? onSelect;

  OptionCard(
      {required this.title,
      required this.subtitle,
      required this.icon,
      this.onSelect,
      this.primaryCard = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelect!(),
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 10),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: primaryCard ? baseColor : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 3.0), //(x,y)
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: primaryCard ? Colors.white : baseColor,
              child: Icon(
                icon,
                size: 30,
                color: primaryCard ? baseColor : Colors.white,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: primaryCard ? Colors.white : Colors.black,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 15,
                color: primaryCard ? Colors.white : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

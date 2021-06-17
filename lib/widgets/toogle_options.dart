import 'package:flutter/material.dart';

import 'option_card.dart';

class ToogleOptionCard extends StatefulWidget {
  const ToogleOptionCard({Key? key}) : super(key: key);

  @override
  _ToogleOptionCardState createState() => _ToogleOptionCardState();
}

class _ToogleOptionCardState extends State<ToogleOptionCard> {
  bool isClinicVisit = true;

  void toggleOption(bool flag) {
    setState(() {
      isClinicVisit = flag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OptionCard(
            title: 'Clinic Visit',
            subtitle: 'Make an appoinment',
            icon: Icons.add,
            primaryCard: isClinicVisit,
            onSelect: () => toggleOption(true)),
        OptionCard(
            title: 'Home Visit',
            subtitle: 'Call the doctor home',
            icon: Icons.home,
            primaryCard: !isClinicVisit,
            onSelect: () => toggleOption(false)),
      ],
    );
  }
}

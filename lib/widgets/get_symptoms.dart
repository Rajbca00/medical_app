import 'package:flutter/material.dart';
import 'package:medical_app_ui/constant.dart';

class GetSymptoms extends StatelessWidget {
  const GetSymptoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What are your symptoms?',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _SymptomCard("🤒", "Temperature"),
                _SymptomCard("🤧", "Snuffle"),
                _SymptomCard("😷", "Allergy"),
                _SymptomCard("🤮", "Vomiting"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SymptomCard extends StatefulWidget {
  final String emoji;
  final String text;

  _SymptomCard(this.emoji, this.text);

  @override
  __SymptomCardState createState() => __SymptomCardState();
}

class __SymptomCardState extends State<_SymptomCard> {
  bool selected = false;

  void toggleSelection() {
    this.setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: toggleSelection,
      child: Container(
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: selected ? baseColor : Colors.grey[200],
          ),
          child: Row(
            children: [
              Text(
                widget.emoji,
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: selected ? Colors.white : Colors.black),
                ),
              )
            ],
          )),
    );
  }
}

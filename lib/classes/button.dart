import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/classes/question.dart';
import 'package:quiz/classes/Score.dart';

class Button extends StatelessWidget {
  final String routeName;
  final Question quest;
  final int index;

  Button(
      {@required this.index, @required this.quest, @required this.routeName});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, routeName);
        Score.add(quest.verify(index));
      },
      child: Text(
        quest.options[index],
        style: TextStyle(fontSize: 20.0),
      ),
      style: TextButton.styleFrom(
        primary: Colors.white,
        minimumSize: Size(200, 40),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}

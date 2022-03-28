import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/classes/question.dart';
import 'package:quiz/screens/questions/question_screen.dart';

class ThirdQuestion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return QuestionScreen(
      ques: new Question(question: "How many minutes are in an hour ?",
          options: ['60', '100', '30','40'],
          correctAnswer: 0),
      routeName: '/score',
    );

  }}
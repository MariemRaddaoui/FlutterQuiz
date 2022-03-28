import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/classes/question.dart';
import 'package:quiz/screens/questions/question_screen.dart';

class FirstQuestion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return QuestionScreen(
      ques: new Question(question:
        "What does the cow drink ?",
        options: ['Milk', 'Cola', 'Water','Juice'],
        correctAnswer: 2,),
      routeName: '/second',
    );

  }}
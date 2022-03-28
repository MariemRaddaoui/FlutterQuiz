import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/classes/question.dart';
import 'package:quiz/screens/questions/question_screen.dart';

class SecondQuestion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return QuestionScreen(
      ques: new Question(
      question: "What color is the grass ?",
        options: ['White', 'Green', 'Red','Orange'],
        correctAnswer: 1,),
      routeName: '/third',
    );

  }}
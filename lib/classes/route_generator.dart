import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/screens/first_screen.dart';
import 'package:quiz/screens/questions/first_question.dart';
import 'package:quiz/screens/questions/second_question.dart';
import 'package:quiz/screens/questions/third_question.dart';
import 'package:quiz/screens/score_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => FirstScreen());
        break;
      case '/first':
        return MaterialPageRoute(builder: (context) => FirstQuestion());
        break;
      case '/second':
        return MaterialPageRoute(builder: (context) => SecondQuestion());
        break;
      case '/third':
        return MaterialPageRoute(builder: (context) => ThirdQuestion());
        break;
      case '/score':
        return MaterialPageRoute(builder: (context) => ScoreScreen());
        break;
      default:
        return MaterialPageRoute(builder: (context) => FirstScreen());
    }
  }
}

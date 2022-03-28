import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/classes/button.dart';
import 'package:quiz/classes/question.dart';

class QuestionScreen extends StatelessWidget{
   final Question ques ;
   final String routeName;
    QuestionScreen({this.ques, this.routeName});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Text("Question "+ Question.id.toString() ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic,
                          fontSize: 50,
                        )),
                    SizedBox(
                      height:40,
                    ),
                    Container(
                      height: 150.0,
                      width:320,
                      child: Text(ques.question,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 30,
                          )),
                    ),

                    SizedBox(
                      height:40,
                    ),

                    Button(index: 0,quest: ques, routeName: routeName,),
                    SizedBox(
                      height: 10,
                    ),
                    Button(index: 1,quest: ques, routeName: routeName,),
                    SizedBox(
                      height: 10,
                    ),
                    Button(index: 2,quest: ques, routeName: routeName,),
                    SizedBox(
                      height: 10,
                    ),
                    Button(index: 3,quest: ques, routeName: routeName,),
                  ],),],),
          ],),),);}}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/classes/Score.dart';
import 'package:quiz/classes/question.dart';

class FirstScreen extends StatelessWidget{
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

                      Text("It's Quiz Time",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic,
                            fontSize: 50,
                          )),
                      SizedBox(
                        height:10,
                      ),
                      Container(
                        height: 50.0,
                        width: 300.0,
                        child: Text("Press start once you're ready.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                            )),
                      ),

                      SizedBox(
                        height:80,
                      ),
                      Container(
                        height: 175.0,
                        width: 175.0,
                        decoration:  BoxDecoration(
                          image:  DecorationImage(
                            image: AssetImage("assets/images/quiz.jpg"),
                            fit: BoxFit.cover,

                          ),
                          shape: BoxShape.circle,
                        ),
                      ),

                      SizedBox(
                        height:100,
                      ),

                      TextButton(
                        onPressed:(){ Navigator.pushReplacementNamed(context,'/first');Score.score=0;Question.id=0;},
                        child: Text(
                          "START",
                          style: TextStyle(fontSize: 25.0,color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                          minimumSize: Size(200, 50),
                          backgroundColor: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                    ],),],),
            ],),),);}}
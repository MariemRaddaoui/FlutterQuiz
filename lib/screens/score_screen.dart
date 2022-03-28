import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/classes/Score.dart';
import 'package:quiz/classes/question.dart';

class ScoreScreen extends StatelessWidget{
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

                    Text("The End",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic,
                          fontSize: 50,
                        )),
                    SizedBox(
                      height:30,
                    ),
                    Container(
                      height: 50.0,
                      width: 300.0,
                      child: Text("Your Score:",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                          )),
                    ),

                    SizedBox(
                      height:10,
                    ),
                    Container(
                      height: 50.0,
                      width: 300.0,
                      child: Text(Score.calculateScore().toString()+"/3",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 30,
                          )),
                    ),
                    SizedBox(
                      height:40,
                    ),
                    Container(
                      height: 175.0,
                      width: 175.0,
                      decoration:  BoxDecoration(
                        image:  DecorationImage(
                          image: AssetImage("assets/images/emoji.jpg"),
                          fit: BoxFit.cover,

                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      height:70,
                    ),

                    TextButton(
                      onPressed:(){

                        Navigator.pushReplacementNamed(context,'/first'); Score.score=0; Question.id=0;},
                      child: Text(
                        "RESTART",
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
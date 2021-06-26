import "package:flutter/material.dart";
import 'package:foodflood/question.dart';
import 'package:foodflood/answer.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}
class _MyAppState extends State{
  var _questionIndex = 0;
  List questions = ["what year is this?", "Is a laptop a computer?", "Is Vue JS a programming language?", "How many days are in May?"];
  void answerQuestion(){
    setState(() {
      if(_questionIndex == questions.length -1){
        _questionIndex = -1;
      }
      _questionIndex+= 1;
    });
    print(_questionIndex);
  }
  void answerQuestion2(){
    setState(() {
      _questionIndex-= 1;
    });
    print(_questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      title: "Eat Now",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Food Flood"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex],),
            Answer("First Version"),
            Answer("Second Version"),
          ],
        )
      ),
    );
  }
}
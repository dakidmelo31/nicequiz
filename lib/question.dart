import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
      child: Text(questionText, style: TextStyle(fontSize: 25, color: Colors.purple)),
    );
  }
}

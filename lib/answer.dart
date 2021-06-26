import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer(this.answers);
  final String answers;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: RaisedButton(
        onPressed: null,
        child: Text(answers),
        color: Colors.blue,
      ),
    );
  }
}

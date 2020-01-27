import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  @override
  String questions;

  Question(this.questions);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questions,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

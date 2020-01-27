import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String answer;
  Answer(this.handler, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              color: Colors.blueGrey,
              child: Text(
                answer,
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
              ),
              onPressed: handler,
            ),
          ],
        ));
  }
}

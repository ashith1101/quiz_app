import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          padding: EdgeInsets.symmetric(vertical: 12),
        ),
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

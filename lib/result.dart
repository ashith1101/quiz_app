import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore >= 5 && resultScore <= 10) {
      resultText =
          'Introverted Personality: Reserved, reflective, prefers solitude, cautious in new situations';
    } else if (resultScore > 10 && resultScore <= 15) {
      resultText =
          'Open-Minded Personality: Curious, adaptable, open to new experiences, considers different perspectives';
    } else if (resultScore > 15 && resultScore <= 20) {
      resultText =
          'Balanced Personality: Moderately social, rational decision-making, handles stress well, receptive to feedback.';
    } else if (resultScore > 20 && resultScore <= 25) {
      resultText =
          'Assertive Personality: Confident, proactive, takes charge, trusts intuition, handles stress effectively.';
    } else {
      resultText = 'Cannot Determine!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            'Your Score: $resultScore',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          ElevatedButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(fontSize: 16),
            ),
            onPressed: resetHandler,
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

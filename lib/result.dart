import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8)
      resultText = 'You are Type 1';
    else if (resultScore <= 12)
      resultText = 'You are Type 2';
    else
      resultText = 'You are Type 3';
    return resultText;
  }

  Result(this.resultScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;
  Result({required this.totalScore, required this.resetQuiz});

  String get resultPhrase {
    var resultText = 'You did it!';

    if (totalScore <= 8) {
      resultText = 'You are awesome!';
    } else if (totalScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (totalScore <= 16) {
      resultText = 'You are ....strange?';
    } else {
      resultText = 'You are so bad!!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz!'),
            style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.green),
                foregroundColor: Colors.red),
          )
        ],
      ),
    );
  }
}

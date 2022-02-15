import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'you are awesome';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable!';
    } else if (resultScore <= 16) {
      resultText = 'you are ... strange!';
    } else {
      resultText = 'you are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text("Restart Quiz",
             style: TextStyle(color: Colors.blue),),
            
          ),
        ],
      ),
    );
  }
}

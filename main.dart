import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _questions = const [
    {
      'questionText': 'what is fav  color',
      'answers': [
        {
          'text': 'black',
          'score': 10
        },
        {
          'text': 'red',
          'score': 5
        },
        {
          'text': 'green',
          'score': 3
        },
        {
          'text': 'white',
          'score': 1
        },
      ]
    },
    {
      'questionText': 'what is fav game',
      'answers': [
        {
          'text': 'pubg',
          'score': 1
        },
        {
          'text': 'cod',
          'score': 7
        },
        {
          'text': 'minecraft',
          'score': 5
        },
        {
          'text': 'spintires',
          'score': 10
        },
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {

    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuest(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: _questionIndex < _questions.length ? 
      Quiz(answerQuest: _answerQuest, questionIndex: _questionIndex, questions: _questions)
       : Result(_totalScore,_resetQuiz), 
    );
  }
}

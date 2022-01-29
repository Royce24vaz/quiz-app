import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuest() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what is fav  color',
        'answers': [
          'black',
          'red',
          'green',
          'white'
        ],
      },
      {
        'questionText': 'what is fav game',
        'answers': [
          'pubg',
          'cod',
          'minecraft',
          'spintires'
        ],
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuest, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

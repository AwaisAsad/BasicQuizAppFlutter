import 'package:flutter/material.dart';
import './quiz.dart';
import './rezult.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Black', 'Red', 'green', 'Blue'],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Rabbit', 'Cat', 'Lion', 'Snake'],
    },
    {
      'questionText': 'What\'s your favourite Teacher?',
      'answers': ['Ali', 'Ahmed', 'Fatima', 'Sobia'],
    },
  ];
  var _questionindex = 0;

  void _questionAnswers() {
    if (_questionindex < _questions.length) {
      print("we have more quesions!");
    } else {
      print('Sorry dont have more questions! ');
    }
    setState(() {
      _questionindex = _questionindex + 1;
    });

    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First Flutter App'),
          ),
          body: _questionindex < _questions.length
              ? Quiz(
                  questionAnswer: _questionAnswers,
                  questionIndex: _questionindex,
                  questions: _questions,
                )
              : Rezult()),
    );
  }
}

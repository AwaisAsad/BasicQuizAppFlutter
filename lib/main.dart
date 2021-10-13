import 'package:flutter/material.dart';
import './question.dart';

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
  var _questionindex = 0;

  void _questionAnswers() {
    setState(() {
      _questionindex = _questionindex + 1;
    });

    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color',
      'What\'s your Favourite animal',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionindex],
            ),
            RaisedButton(
              child: Text('Answwer 1'),
              onPressed: _questionAnswers,
            ),
            RaisedButton(
              child: Text('Answwer 2'),
              onPressed: () => print('Answer 2 chosen'),
            ),
            RaisedButton(
              child: Text('Answwer 3'),
              onPressed: () {
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}

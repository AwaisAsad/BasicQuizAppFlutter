import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback questionAnswer;

   Quiz({
      required this.questions,
      required this.questionAnswer,
      required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answers)
        {
          return Answers(questionAnswer ,answers);
        }
        ).toList()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:start/answer_button.dart';
import 'package:start/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(style: TextStyle(color: (Colors.white)), currentQuestion.text),
          const SizedBox(height: 30),
          AnswerButton(answer: currentQuestion.answers[0], onTap: () {}),
          AnswerButton(answer: currentQuestion.answers[1], onTap: () {}),
          AnswerButton(answer: currentQuestion.answers[2], onTap: () {}),
          AnswerButton(answer: currentQuestion.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:start/answer_button.dart';
import 'package:start/data/questions.dart';
import 'package:start/models/quiz_question.dart';

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
    final currentQuestion = questions[1];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                style: const TextStyle(color: (Colors.white)),
                textAlign: TextAlign.center,
                currentQuestion.text),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answers) {
              return AnswerButton(answer: answers, onTap: () {});
            })
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:start/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(style: TextStyle(color: (Colors.white)), "Questions"),
          const SizedBox(height: 30),
          AnswerButton(answer: "Answer 1", onTap: () {}),
          AnswerButton(answer: "Answer 2", onTap: () {}),
          AnswerButton(answer: "Answer 3", onTap: () {}),
        ],
      ),
    );
  }
}

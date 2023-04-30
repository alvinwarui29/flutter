import 'package:flutter/material.dart';
import 'package:start/answer_button.dart';
import 'package:start/data/questions.dart';
import 'package:start/models/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var qIndex = 0;
  answerQuestion() {
    setState(() {
      qIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[qIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
                textAlign: TextAlign.center,
                currentQuestion.text),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answers) {
              return AnswerButton(answer: answers, onTap: answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}

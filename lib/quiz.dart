import 'package:flutter/material.dart';
import 'package:start/data/questions.dart';
import 'package:start/questions_screen.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(answers) {
    selectedAnswers.add(answers);
    if (selectedAnswers.length == questions.length) {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.lightBlue, Colors.blueGrey],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: activeScreen == 'start-screen'
                ? StartScreen(switchScreen)
                : QuestionScreen(
                    onSelectAnswer: chooseAnswer,
                  )),
      ),
    );
  }
}

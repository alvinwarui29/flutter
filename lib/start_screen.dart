import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Image(
          image: AssetImage('assets/quiz-logo.png'),
          color: Color.fromARGB(150, 250, 255, 255),
        ),
        const SizedBox(
          height: 90,
        ),
        const Text(
          'Learn flutter the fun way',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            label: const Text(
              'Start quiz',
              style: TextStyle(color: Colors.white),
            ))
      ],
    ));
  }
}

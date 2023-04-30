import 'package:flutter/material.dart';

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
        children: const [
          Text("Questions"),
          SizedBox(height: 30),
          ElevatedButton(onPressed: null, child: Text("Answer 1")),
          ElevatedButton(onPressed: null, child: Text("Answer 2")),
          ElevatedButton(onPressed: null, child: Text("Answer 3")),
        ],
      ),
    );
  }
}

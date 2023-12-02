import 'package:adv_basics/answer_button.dart';
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
        children: [
          const Text('the question.....'),
          const SizedBox(height: 30),
          AnswerButton(onTap: () {}, answerText: 'answer 1'),
          AnswerButton(onTap: () {}, answerText: 'answer 1'),
          AnswerButton(onTap: () {}, answerText: 'answer 1'),
        ],
      ),
    );
  }
}

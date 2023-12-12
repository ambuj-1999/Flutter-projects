import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/question_summary/question_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreeen extends StatelessWidget {
  const ResultScreeen(
    this.restart, {
    super.key,
    required this.chosenAnswer,
  });
  final void Function() restart;
  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': chosenAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = getSummaryData().where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: restart,
              icon: const Icon(Icons.restart_alt),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
              label: const Text(
                'Restart Quiz',
              ),
            )
          ],
        ),
      ),
    );
  }
}

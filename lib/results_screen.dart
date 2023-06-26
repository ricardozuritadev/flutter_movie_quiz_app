import 'package:flutter/material.dart';

import 'package:quizz/data/questions.dart';
import 'package:quizz/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.resetQuiz});

  final List<String> chosenAnswers;

  final void Function() resetQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  // void Function() resetQuiz;

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              '¡Has contestado correctamente $numCorrectAnswers de $numTotalQuestions preguntas!',
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: resetQuiz,
              child: const Text('Reiniciar Quiz'),
            )
          ],
        ),
      ),
    );
  }
}

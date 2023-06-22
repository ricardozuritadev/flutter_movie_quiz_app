import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quizz/data/questions.dart';

import 'package:quizz/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    final answers = currentQuestion.getShuffledAnswers().map((answer) {
      return Column(
        children: [
          AnswerButton(
            answerText: answer,
            onPressed: () {
              answerQuestion(answer);
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      );
    });

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 120,
            ),
            Text(
              currentQuestion.text,
              style: GoogleFonts.montserratAlternates(
                  color: const Color.fromARGB(255, 14, 14, 14),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 100,
            ),
            ...answers,
          ],
        ),
      ),
    );
  }
}

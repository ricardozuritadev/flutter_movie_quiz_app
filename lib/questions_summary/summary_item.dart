import 'package:flutter/material.dart';
import 'package:quizz/questions_summary/questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          questionIndex: itemData['question_index'] as int,
          isCorrectAnswer: isCorrectAnswer,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                itemData['user_answer'] as String,
                style: TextStyle(
                  fontSize: 20,
                  color: isCorrectAnswer
                      ? const Color.fromARGB(255, 20, 166, 112)
                      : const Color.fromARGB(255, 218, 70, 70),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                itemData['correct_answer'] as String,
                style: const TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 20, 166, 112),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    backgroundColor: Color.fromARGB(255, 31, 97, 202),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 231, 12, 12)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: const TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 31, 97, 202),
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
          }).toList(),
        ),
      ),
    );
  }
}

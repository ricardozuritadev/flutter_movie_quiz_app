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
        Image.asset(
          'assets/images/cine_quiz_logo.png',
          width: 380,
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 111, 10, 124),
                textStyle: const TextStyle(fontSize: 18),
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 20)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Empezar'))
      ],
    ));
  }
}

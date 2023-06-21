import 'package:flutter/material.dart';

import 'package:quizz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 216, 183, 15),
              Color.fromARGB(255, 240, 212, 101),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}

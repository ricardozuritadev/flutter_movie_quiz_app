import 'package:flutter/material.dart';

import 'package:quizz/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
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
    ),
  );
}

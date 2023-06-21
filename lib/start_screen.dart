import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void handleClick() {
    print('empezar');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/cine_quiz_logo.png',
          width: 350,
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: handleClick,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 124, 10, 115),
                textStyle: const TextStyle(fontSize: 18),
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20)),
            child: const Text('Empezar'))
      ],
    ));
  }
}

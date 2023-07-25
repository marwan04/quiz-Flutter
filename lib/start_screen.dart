import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz ,{super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Image.asset(
            'me/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(71, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'me/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Learn Flutter with fun!',
            style: TextStyle(
                color: Color.fromARGB(255, 205, 163, 233), fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,

            ),
            icon:const Icon(Icons.arrow_right),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}

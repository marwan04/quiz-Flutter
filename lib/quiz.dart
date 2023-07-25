import 'package:flutter/material.dart';
import 'package:project2/data/questions.dart';
import 'package:project2/questions_screen.dart';
import 'package:project2/result_screen.dart';
import 'package:project2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  List<String> slectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(
      () {
        activeScreen = 'questions-screen';
      },
    );
  }

  void chooseAnswer(String answer) {
    slectedAnswers.add(answer);

    if (slectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
        // slectedAnswers = [];
      });
    }
  }
  void restartQuiz() {
    setState(() {
      slectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    // var screenWidget = activeScreen == 'start-screen'
    //           ? StartScreen(switchScreen)
    //           : const QuestionsScreen();
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    }
    else if (activeScreen == 'result-screen') {
      screenWidget  = ResultScreen(slectedAnswers , restartQuiz);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 90, 32, 192),
              Color.fromARGB(255, 53, 17, 114)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

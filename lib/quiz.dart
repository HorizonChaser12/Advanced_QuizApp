import 'package:advanced_project_2/data/questions.dart';
import 'package:advanced_project_2/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:advanced_project_2/start_screen.dart';
import 'package:advanced_project_2/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWIdget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWIdget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'result-screen') {
      screenWIdget = ResultsScreen(
          choosenAnswers: selectedAnswers, onRestart: restartQuiz);
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 90, 26, 149),
              Color.fromARGB(255, 157, 78, 221),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: screenWIdget,
      )),
    );
  }
}

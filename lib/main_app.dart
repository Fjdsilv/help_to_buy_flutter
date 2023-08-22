import "package:flutter/material.dart";

import "package:help_buy_robot_flutter/data/questions.dart";

import "package:help_buy_robot_flutter/start_screen.dart";
import "package:help_buy_robot_flutter/questions_screen.dart";

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MainApp> {
  Widget? currentScreen;
  List<String> selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    currentScreen = StartScreen(switchScreen);
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        currentScreen = StartScreen(switchScreen);
        //to demo restart app
      });
    }
  }

  void switchScreen() {
    setState(() {
      currentScreen = QuestionsScreen(selectedAnswer: chooseAnswer);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
          ),
          child: Center(
            child: currentScreen,
          ),
        ),
      ),
    );
  }
}

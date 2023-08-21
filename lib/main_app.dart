import "package:flutter/material.dart";

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

  @override
  void initState() {
    super.initState();
    currentScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      currentScreen = const QuestionsScreen();
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

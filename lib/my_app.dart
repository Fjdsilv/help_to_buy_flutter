import "package:flutter/material.dart";

import "package:help_buy_robot_flutter/start_screen.dart";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  Widget? currentScreen;

  @override
  void initState() {
    super.initState();
    currentScreen = const StartScreen();
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

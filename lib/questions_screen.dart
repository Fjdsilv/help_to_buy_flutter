import 'package:flutter/material.dart';

import "package:help_buy_robot_flutter/quiz_button.dart";

import "package:help_buy_robot_flutter/data/questions.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var counterQuestion = 0;

  void answerChosen() {
    setState(() {
      counterQuestion++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[counterQuestion];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            ...currentQuestion.answers.map((item) {
              return QuizButton(
                answerText: item,
                onTop: () {},
              );
            })
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import "package:help_buy_robot_flutter/quiz_button.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const Text("Qual o valor médio que você paga em um sapato?", style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
            const SizedBox(height: 10,),
            QuizButton(answerText: "Mais de R\$200", onTop: () {},),
            QuizButton(answerText: "Asfalto", onTop: () {},),
            QuizButton(answerText: "Asfalto", onTop: () {},),
            QuizButton(answerText: "Asfalto", onTop: () {},),
          ],
        ),
      ),
    );
  }
}


        // OutlinedButton(onPressed: () {}, child: const Text("answer 1")),
        //     OutlinedButton(onPressed: () {}, child: const Text("answer 2")),
        //     OutlinedButton(onPressed: () {}, child: const Text("answer 3")),
        //     OutlinedButton(onPressed: () {}, child: const Text("answer 4")),
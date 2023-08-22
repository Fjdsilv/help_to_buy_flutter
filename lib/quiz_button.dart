import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({
    super.key,
    required this.answerText,
    required this.onTop,
  });

  final String answerText;
  final void Function() onTop;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTop,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 50,
        ),
        backgroundColor: Colors.black,
      ),
      child: Text(answerText),
    );
  }
}

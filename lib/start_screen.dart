import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/robot.png",
          width: 300,
        ),
        const Text(
          "Posso ajudá-lo no seu pedido?",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
          ),
          icon: const Icon(Icons.arrow_circle_right_outlined),
          label: const Text("Start"),
        )
      ],
    );
  }
}

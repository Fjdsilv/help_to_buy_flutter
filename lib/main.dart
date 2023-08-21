import "package:flutter/material.dart";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(home: Text("text"),);
  }
}

void main() {
  runApp(const MyApp());
}

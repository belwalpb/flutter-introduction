import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 35;
  final String name = "Priyanshu";
  final double pi = 3.14;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Application"),
      ),
      body: Center(child: Text("Welcome $name at $days days of Flutter $pi")),
      drawer: const Drawer(),
    );
  }
}

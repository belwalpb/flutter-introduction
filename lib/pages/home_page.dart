import 'package:flutter/material.dart';
import 'package:my_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 35;
  final String name = "Priyanshu";
  final double pi = 3.14;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Center(
            child: Text("Catalog App", style: TextStyle(color: Colors.black))),
      ),
      body: Center(child: Text("Welcome $name at $days days of Flutter $pi")),
      drawer: const ApplicationDrawer(),
    );
  }
}

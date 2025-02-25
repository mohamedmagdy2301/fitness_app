import 'package:fitness_app/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Home Screen'),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(child: CustomBarChart()),

          Center(child: CustomBarChart()),
        ],
      ),
    );
  }
}

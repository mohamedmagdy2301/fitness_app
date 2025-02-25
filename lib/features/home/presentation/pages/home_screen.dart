import 'package:fitness_app/core/extansions/padding_extention.dart';
import 'package:fitness_app/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 21,
            foregroundImage: Image.asset('assets/images/mego.jpg').image,
          ),
        ).paddingAll(6),
        actions: [
          Image.asset('assets/images/notification_home.png').paddingAll(12),
        ],
      ),
      body: Column(
        children: [
          Center(child: CustomBarChart()),

          Center(child: CustomBarChart()),
        ],
      ),
    );
  }
}

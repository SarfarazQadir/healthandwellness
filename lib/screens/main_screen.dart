import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health & Wellness Tracker"),
        backgroundColor: Color(0xFF2196F3),
      ),
      body: Center(
        child: Text("Welcome to your Health & Wellness Tracker App!"),
      ),
    );
  }
}

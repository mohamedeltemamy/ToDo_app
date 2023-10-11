import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/HomePage.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomePage.routeName);
    });

    return Scaffold(
      body: Image.asset("assets/images/splash.png",
          width: double.infinity, height: double.infinity, fit: BoxFit.cover),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/HomePage.dart';
import 'package:todo_app/appTheme.dart';
import 'package:todo_app/spalsh_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        HomePage.routeName: (context) => HomePage()
      },
      home: HomeScreen(),
    );
  }
}

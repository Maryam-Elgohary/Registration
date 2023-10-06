import 'package:flutter/material.dart';
import 'package:login/SignUp.dart';
import 'LogIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LogIn(),
      routes: {
        '/signup': (context) => const SignUp(),
        '/login': (context) => const LogIn()
      },
    );
  }
}

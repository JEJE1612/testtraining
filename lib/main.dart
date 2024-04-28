import 'package:flutter/material.dart';
import 'package:trainningtest/ui/screen/signin.dart';

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
      title: 'Training Test',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:SignIn() ,
    );
  }
}


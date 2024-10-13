import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_page.dart';
import 'package:flutter_application_1/main_page2.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage2(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aplikasi Pertamaku')),
      body: const Column(
        children: [
          Text('Hello '),
          Row(
            children: [
              Text('Hello '),
              Text('Hello '),
              Text('Hello '),
            ],
          ),
          Text('Hello '),
        ],
      ),
    );
  }
}

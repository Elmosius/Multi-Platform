import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi Pertamaku'),
        ),
        body: Center(
            child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$number',
              style: const TextStyle(fontSize: 60),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                child: const Text('Add Number'))
          ],
        )),
      ),
    );
  }
}

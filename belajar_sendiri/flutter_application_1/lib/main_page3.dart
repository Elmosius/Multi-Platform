import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_page2.dart';

class MainApp3 extends StatefulWidget {
  const MainApp3({super.key});

  @override
  State<MainApp3> createState() => _MainApp3State();
}

class _MainApp3State extends State<MainApp3> {
  TextEditingController tec = TextEditingController();

  String inputNameAge(String input) {
    List<String> e = input.split(', ');
    if (e.length > 1 && e[1].trim().isNotEmpty) {
      String name = e[0].trim();
      String age = e[1].trim();
      return 'Hello $name, Your Age today is $age';
    } else if (e.length == 1 && e[0].isNotEmpty) {
      return 'Hello ${e[0].trim()}';
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Quiz Pertemuan 3')),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tec,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              onChanged: (value) => setState(() {}),
              decoration: const InputDecoration(
                hintText: 'Please enter your name & age',
                labelText: 'Name & Age',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              alignment: Alignment.center,
              child: Text(
                inputNameAge(tec.text),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MainPage2()));
              },
              child: const Text('Go to second page'),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pertemuan_4/main/pages/second_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SecondPage()));
              },
              child: const Text('Go to second page'),
            )
          ],
        ),
      ),
    );
  }
}

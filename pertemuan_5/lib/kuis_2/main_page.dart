import 'dart:io';

import 'package:flutter/material.dart';
import 'second_page.dart';
import 'profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Profile profile =
      Profile(nrp: "2272008", name: "Elmosius Suli", imagePath: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Kuis 2')),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                image: profile.imagePath.isNotEmpty
                    ? DecorationImage(
                        image: FileImage(File(profile.imagePath)),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
            ),
            const SizedBox(height: 20),
            Text(profile.nrp, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text(profile.name, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(
                      profile: profile,
                    ),
                  ),
                );
                if (result != null) {
                  setState(() {
                    profile = result;
                  });
                }
              },
              child: const Text('Edit'),
            ),
          ],
        ),
      ),
    );
  }
}

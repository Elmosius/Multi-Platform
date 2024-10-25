import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rived_pod_state_management/part1/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'text',
              style: GoogleFonts.poppins(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));
                },
                child: const Text('Go to Second Page'))
          ],
        ),
      ),
    );
  }
}

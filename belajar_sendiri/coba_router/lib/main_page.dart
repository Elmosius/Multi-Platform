import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Main Page',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
              width: 200,
              child: Divider(
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed('profile', pathParameters: {'name': 'Elmo'});
              },
              child: const Text('Profile'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed('about');
              },
              child: const Text('About'),
            ),
            const SizedBox(
              height: 30,
              width: 200,
              child: Divider(
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed('login');
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

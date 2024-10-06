import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';

class MainPage2 extends StatefulWidget {
  const MainPage2({super.key});

  @override
  State<MainPage2> createState() => _MainPage2State();
}

class _MainPage2State extends State<MainPage2> {
  int number = 0;

  // Nambah angka
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Text(
  //             '$number',
  //             style: const TextStyle(
  //               fontFamily: 'NotoSansJp',
  //               fontSize: 20,
  //             ),
  //           ),
  //           const SizedBox(
  //             height: 20,
  //           ),
  //           ElevatedButton(
  //               onPressed: () {
  //                 setState(() {
  //                   number += 1;
  //                 });
  //               },
  //               child: const Text('+')),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  ////// Icon Widget

  TextEditingController tec = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field Widged'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: tec,
              // obscureText: true,
              // obscuringCharacter: '*',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              inputFormatters: [
                TextInputFormatter.withFunction(
                    (a, b) => TextEditingValue(text: b.text.toLowerCase()))
              ],
              decoration: InputDecoration(
                icon: Icon(MdiIcons.pencil, color: Colors.blue, size: 20),
              ),
              onChanged: (value) => setState(() {}),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              tec.text,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

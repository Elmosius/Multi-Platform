import 'package:flutter/material.dart';

class MerahIjo extends StatefulWidget {
  const MerahIjo({super.key});

  @override
  State<StatefulWidget> createState() => _MerahIjoState();
}

class _MerahIjoState extends State<MerahIjo> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          state = !state;
        });
      },
      child: Container(
        width: 50,
        height: 50,
        color: state ? Colors.green : Colors.red,
      ),
    );
  }
}

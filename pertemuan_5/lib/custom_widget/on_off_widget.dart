import 'package:flutter/material.dart';

class OnOffWidget extends StatefulWidget {
  const OnOffWidget({super.key});

  @override
  State<OnOffWidget> createState() => _OnOffWidgetState();
}

class _OnOffWidgetState extends State<OnOffWidget> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isOn = !_isOn;
          });
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: _isOn ? Colors.green.shade300 : Colors.red.shade300,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

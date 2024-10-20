import 'package:flutter/material.dart';

class OnOffWidget extends StatefulWidget {
  final void Function(bool value)? onChanged;
  final bool isOn;

  const OnOffWidget({super.key, this.onChanged, required this.isOn});

  @override
  State<OnOffWidget> createState() => _OnOffWidgetState();
}

class _OnOffWidgetState extends State<OnOffWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.5)),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [
          BoxShadow(blurRadius: 5, color: Colors.grey),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          if (widget.onChanged != null) {
            widget.onChanged!(!widget.isOn);
          }
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: widget.isOn ? Colors.green.shade400 : Colors.red.shade400,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

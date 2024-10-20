import 'package:flutter/material.dart';
import 'package:pertemuan_5/custom_widget/on_off_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool state = false;
  List<bool> widgetStates = [false, false, false];

  void _onChanged(int index, bool value) {
    setState(() {
      state = value;
      for (int i = 0; i < widgetStates.length; i++) {
        widgetStates[i] = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state ? 'ON' : 'OFF'),
            const SizedBox(height: 20),
            for (int i = 0; i < widgetStates.length; i++)
              OnOffWidget(
                isOn: widgetStates[i],
                onChanged: (value) {
                  _onChanged(i, value);
                },
              ),
          ],
        ),
      ),
    );
  }
}

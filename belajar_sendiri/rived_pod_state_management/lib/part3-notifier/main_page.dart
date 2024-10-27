import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rived_pod_state_management/part3-notifier/person.dart';
import 'package:rived_pod_state_management/part3-notifier/person_provider.dart';

class MainPage extends ConsumerWidget {
  MainPage({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var person = ref.watch(personProvider);
    var age = ref.watch(personProvider.select((person) => person.age));

    ref.listen<Person>(
      personProvider,
      (previous, next) => log('state person berubah'),
    );

    ref.listen<int>(
      personProvider.select((person) => person.age),
      (previous, next) => log('state age berubah'),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Person Provider Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 300,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue)),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: 'New Name'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              person.name,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$age',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(personProvider.notifier).changeName(controller.text);
                },
                child: const Text('Change Name')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(personProvider.notifier).birthday();
                },
                child: const Text('Birthday')),
          ],
        ),
      ),
    );
  }
}

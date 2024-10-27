import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rived_pod_state_management/part3-notifier/person.dart';

class PersonNotifier extends StateNotifier<Person> {
  PersonNotifier() : super(const Person(name: 'no name', age: 0));

  void changeName(String name) => state = state.copyWith(name: name);

  void birthday() => state = state.copyWith(age: state.age + 1);
}

final personProvider = StateNotifierProvider<PersonNotifier, Person>(
  (ref) => PersonNotifier(),
);

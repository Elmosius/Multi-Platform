import 'person.dart';

class Student extends Person {
  final String studentId;

  Student({required this.studentId, required super.name, required super.age});
}

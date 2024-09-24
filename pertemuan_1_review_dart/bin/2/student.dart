import 'person.dart';

class Student extends Person {
  final String studentId;

  Student(this.studentId, {required super.name, required super.age});
}

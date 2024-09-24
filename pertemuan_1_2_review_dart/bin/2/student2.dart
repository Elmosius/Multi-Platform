import 'person2.dart';

class Student2 extends Person2 {
  String studentId = 'No Student Id';

  @override
  String hello() {
    return "Hello, my name is $name and I am $age years old. I'm $studentId";
  }
}

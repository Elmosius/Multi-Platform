import 'package:flutter/material.dart';
import 'package:pertemuan_4/class/student.dart';
import 'package:pertemuan_4/class/student_widget.dart';

class MainPage2 extends StatelessWidget {
  const MainPage2({super.key});

  final List<Student> students = const [
    Student(name: 'a', studentId: '1'),
    Student(name: 'b', studentId: '2'),
    Student(name: 'c', studentId: '3'),
    Student(name: 'd', studentId: '4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Student Widget Demo'),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: students.map((e) => StudentWidget(students: e)).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pertemuan_4/class/student.dart';

class StudentWidget extends StatelessWidget {
  final Student student;

  const StudentWidget({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.fromLTRB(0, 0, 10, 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black,
          ),
          child: Icon(
            Icons.person,
            size: 20,
            color: Colors.red.shade900,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              student.studentId,
            ),
            Text(
              student.name,
            ),
          ],
        )
      ],
    );
  }
}

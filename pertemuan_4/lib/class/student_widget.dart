import 'package:flutter/material.dart';
import 'package:pertemuan_4/class/student.dart';

class StudentWidget extends StatelessWidget {
  final Student students;

  const StudentWidget({super.key, required this.students});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              students.studentId,
            ),
            Column(
              children: [
                Text(
                  students.name,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

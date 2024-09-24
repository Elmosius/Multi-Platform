import 'person.dart';
import 'person2.dart';
import 'segi_empat.dart';
import 'student.dart';

void main(List<String> args) {
  Student a = Student(studentId: '2272008', name: 'Elmo', age: 20);
  print(a.studentId);

  Person2 b = Person2();
  b.name = 'Elmo';
  b.age = -20;
  print('${b.age}, ${b.name}');

  Person c = Student(studentId: '1', name: 'Budi', age: 20);

  if (c is Student) {
    print('Student ID for ${c.name} is ${c.studentId}');
  }

  SegiEmpat kotak1 = SegiEmpat(panjang: 2.5, lebar: 1.0);

  print(kotak1.luas());
  print(kotak1.keliling());
}

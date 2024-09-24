import 'dart:io';

void main(List<String> args) {
  stdout.write("N: ");
  int n = int.parse(stdin.readLineSync() ?? '0');

  int count = 1;

  for (int i = 0; i < n; i++) {
    if (i % 2 == 0) {
      for (int j = 0; j < n; j++) {
        stdout.write('${count + j} ');
      }
      count += n;
    } else {
      for (int j = n - 1; j >= 0; j--) {
        stdout.write('${count + j} ');
      }
      count += n;
    }
    stdout.writeln();
  }
}

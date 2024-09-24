import 'dart:io';

void main(List<String> args) {
  stdout.write("N: ");
  int n = int.parse(stdin.readLineSync() ?? '0');

  int m = n;
  int o = n;

  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n * 2; j++) {
      if ((j < m - 1) || (j > o)) {
        stdout.write(' ');
        stdout.write(' ');
      } else {
        stdout.write('*');
        stdout.write(' ');
      }
    }
    m--;
    o++;
    stdout.writeln(' ');
  }
}

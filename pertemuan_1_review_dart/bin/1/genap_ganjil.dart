import 'dart:io';

void main(List<String> args) {
  stdout.write("N: ");
  int number = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  if (number % 2 == 0) {
    print('$number adalah genap');
  } else {
    print('$number adalah Ganjil');
  }
}

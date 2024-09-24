import 'dart:io';

void main(List<String> args) {
  String? input = stdin.readLineSync();

  if (input != null) {
    int? number = int.tryParse(input);
    print(number?? 0 + 10);
    }
  }

 


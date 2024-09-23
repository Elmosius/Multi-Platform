import 'dart:math';

// Nomor 1
// https://www.codewars.com/kata/523b623152af8a30c6000027/train/dart

int square(int n) {
  return n * n;
}

// Nomor 2
// https://www.codewars.com/kata/5625618b1fe21ab49f00001f/train/dart
String sayHello(String name) {
  return "Hello, $name";
}

// Nomor 3
// https://www.codewars.com/kata/57a5c31ce298a7e6b7000334/train/dart
int binToDec(bin) {
  int n = bin.length;
  num total = 0;
  int m = n;
  for (int i = 0; i < n; i++) {
    if (bin[i] == '1') {
      total += pow(2, (m - 1));
    }
    m--;
  }
  return total.toInt();
}

// Nomor 4
// https://www.codewars.com/kata/582cb0224e56e068d800003c/train/dart
int litres(num time) => (time * 0.5).floor();

// Nomor 5
// https://www.codewars.com/kata/57a0556c7cb1f31ab3000ad7/train/dart
String makeUpperCase(String str) => str.toUpperCase();

// Nomor 6
// https://www.codewars.com/kata/57a0e5c372292dd76d000d7e/train/dart
String repeatString(int n, String s) => s * n;



// Coba
void main(List<String> args) {
  print(repeatString(6, 'I'));
}

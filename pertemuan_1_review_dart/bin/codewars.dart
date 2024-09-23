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

// Coba
void main(List<String> args) {}

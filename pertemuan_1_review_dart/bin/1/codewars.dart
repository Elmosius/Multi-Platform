import 'dart:io';
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

// Nomor 7
// https://www.codewars.com/kata/57a4d500e298a7952100035d/train/dart
int hexToDec(String hexString) => int.parse(hexString, radix: 16);

// Nomor 8
// https://www.codewars.com/kata/58261acb22be6e2ed800003a/train/dart
double getVolumeOfCuboid(
        final double length, final double width, final double height) =>
    (length * width * height);

// Nomor 9
// https://www.codewars.com/kata/5ae62fcf252e66d44d00008e
int expressionMatter(a, b, c) {
  int total = a * (b + c);

  if (total <= a * b * c) total = a * b * c;
  if (total <= a + b * c) total = a + b * c;
  if (total <= (a + b) * c) total = (a + b) * c;
  if (total <= a + b + c) total = (a + b + c);

  return total;
}

// Nomor 10
// https://www.codewars.com/kata/515e271a311df0350d00000f/train/dart
int squareSum(List numbers) {
  num total = 0;
  for (var e in numbers) {
    total += pow(e, 2);
    print(total);
  }

  return total.toInt();
}

// Nomor 11
// https://www.codewars.com/kata/53da6d8d112bd1a0dc00008b/train/dart
List<int> reverseList(List<int> list) => list.reversed.toList();

// Nomor 12
// https://www.codewars.com/kata/5513795bd3fafb56c200049e/train/dart
List<int> countBy(int x, int n) {
  List<int> hasil = [];

  for (var i = x; i <= x * n; i += x) {
    hasil.add(i);
  }

  return hasil;
}

// Nomor 13
// https://www.codewars.com/kata/5601409514fc93442500010b/train/dart
bool betterThanAverage(List<int> classPoints, int yourPoints) {
  double total = 0;

  classPoints.forEach((e) => total += e);

  return yourPoints >= total / classPoints.length ? true : false;
}

// Nomor 14
// https://www.codewars.com/kata/57eae20f5500ad98e50002c5/train/dart
String noSpace(String x) {
  List<String> y = x.split(' ');
  String hasil = '';
  for (var e in y) {
    hasil += e;
  }

  return hasil;
}

// atau

String noSpace2(String s) => s.replaceAll(" ", "");

// Nomor 15
// https://www.codewars.com/kata/5a023c426975981341000014/train/dart
int otherAngle(int a, int b) => 180 - a - b;

// Nomor 16
// https://www.codewars.com/kata/643af0fa9fa6c406b47c5399/train/dart
int quadrant(int x, int y) {
  if (x > 0 && y > 0) {
    return 1;
  } else if (x < 0 && y < 0) {
    return 3;
  } else if (x > 0 && y < 0) {
    return 4;
  } else {
    return 2;
  }
}

// atau
int quadrant2(int x, int y) => x > 0 ? (y > 0 ? 1 : 4) : (y > 0 ? 2 : 3);

// Nomor 17
// https://www.codewars.com/kata/598d91785d4ce3ec4f000018/train/dart
List<int> wordValue(List<String> arr) {
  Map<String, int> abjad = {};
  for (int i = 0; i < 26; i++) {
    String letter = String.fromCharCode(97 + i);
    abjad[letter] = i + 1;
  }

  List<int> hasil = [];
  int j = 1;

  for (var e in arr) {
    int total = 0;
    for (int i = 0; i < e.length; i++) {
      if (e[i] != ' ') {
        total += abjad[e[i].toLowerCase()]! * j;
      }
    }
    j++;
    hasil.add(total);
  }

  return hasil;
}

// MAIN TEST //
void main(List<String> args) {
  print(wordValue(["coding", "better pizza", "i got this too"]));
}

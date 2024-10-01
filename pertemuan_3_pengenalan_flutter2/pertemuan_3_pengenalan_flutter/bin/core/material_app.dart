// Template dari sebuah aplikasi dari sebuah material design (desain default android)
// Cupertino (desain default ios)

import 'widget.dart';

class MaterialApp extends Widget {
  final Widget? home;

  MaterialApp({required this.home});
  @override
  String draw() => '''MaterialApp
  ====
  Home: ${home?.draw()}''';
}

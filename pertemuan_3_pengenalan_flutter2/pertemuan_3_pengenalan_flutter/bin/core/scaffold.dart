// scaffold template untuk sebuah page

import 'app_bar.dart';
import 'widget.dart';

class Scaffold extends Widget {
  final Widget? body;
  final Appbar? appBar;

  Scaffold({required this.body, required this.appBar});

  @override
  String draw() => ('''Appbar: ${appBar?.draw()}
  Body: ${body?.draw()}
  ''');
}

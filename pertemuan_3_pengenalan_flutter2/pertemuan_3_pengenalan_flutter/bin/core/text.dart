import 'widget.dart';

class Text extends Widget {
  final String data;

  Text({required this.data});

  @override
  String draw() {
    return ("TEXT($data)");
  }
}

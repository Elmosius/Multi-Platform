import 'widget.dart';

class Appbar extends Widget {
  final Widget title;

  Appbar({required this.title});

  @override
  String draw() => 'AppBar(${title.draw()})';
}

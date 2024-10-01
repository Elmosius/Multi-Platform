import 'core/app_bar.dart';
import 'core/material_app.dart';
import 'core/scaffold.dart';
import 'core/text.dart';
import 'core/widget.dart';

void main(List<String> args) {
  run(MainApp());
}

class MainApp extends Widget {
  @override
  String draw() {
    MaterialApp app = MaterialApp(
        home: Scaffold(
            body: Text(data: 'Hello, World!'),
            appBar: Appbar(title: Text(data: 'Aplikasi Pertamaku'))));

    return app.draw();
  }
}

void run(Widget app) => print(app.draw());

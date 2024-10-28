import 'package:flutter/material.dart';
// import 'part3-notifier/main_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:rived_pod_state_management/part4-future-stream/presentation/pages/builder/main_page_future_builder.dart';
// import 'package:rived_pod_state_management/part4-future-stream/presentation/pages/builder/main_page_stream_builder.dart';
// import 'package:rived_pod_state_management/part5-modifier-family-autodispose/presentation/pages/main_page.dart';
import 'package:rived_pod_state_management/part6-generator/main_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

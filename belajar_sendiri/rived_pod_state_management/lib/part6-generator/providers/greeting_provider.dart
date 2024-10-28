import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'greeting_provider.g.dart';

@riverpod
Future<String> greeting(Ref ref, {required String nama}) async {
  await Future.delayed(const Duration(seconds: 2));

  return 'Hello $nama';
}

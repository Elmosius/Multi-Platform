import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'numbers_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<int> numbers(Ref ref) async* {
  int number = 1;

  while (true) {
    await Future.delayed(const Duration(seconds: 2));
    yield number++;
  }
}

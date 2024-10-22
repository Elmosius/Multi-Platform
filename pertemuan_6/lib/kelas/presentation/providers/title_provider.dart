import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'title_provider.g.dart';

@riverpod
String title(Ref ref) {
  return 'Riverpod Demo App';
}

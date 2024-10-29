import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'title_provider.g.dart';

@riverpod
String title(Ref ref) => 'Riverpod Generator Demo';

// dart run build_runner  watch -d
import 'package:flutter_riverpod/flutter_riverpod.dart';

// mengembalikan jenisnya tetap
final nameProvider = Provider(
  (ref) => 'Jennie Kim',
);

final greetingProvider = Provider(
  (ref) => 'Hello ${ref.watch(nameProvider)}',
);

import 'package:flutter_riverpod/flutter_riverpod.dart';

// autoDispose untuk menghilangkan state jika tidak ada yang pakai
// biasanya untuk firebase
final counterProvider = StateProvider(
  (ref) => 0,
);

// final counterProvider = StateProvider.autoDispose(
//   (ref) => 0,
// );

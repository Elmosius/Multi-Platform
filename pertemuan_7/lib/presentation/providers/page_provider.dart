import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentPageProvider = StateProvider.autoDispose<int>((ref) => 1);

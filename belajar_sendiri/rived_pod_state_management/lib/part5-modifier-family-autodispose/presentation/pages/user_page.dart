import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rived_pod_state_management/part5-modifier-family-autodispose/presentation/providers/providers.dart';

class UserPage extends ConsumerWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Modifiers'),
      ),
      body: Center(
        child: ref.watch(userProvider(3)).when(
              data: (data) => Text('$data'),
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => const Text('Loading'),
            ),
      ),
    );
  }
}

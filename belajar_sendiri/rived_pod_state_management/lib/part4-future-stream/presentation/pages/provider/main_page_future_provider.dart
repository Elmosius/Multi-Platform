import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rived_pod_state_management/part4-future-stream/presentation/pages/providers.dart';

class MainPageFutureProvider extends StatelessWidget {
  const MainPageFutureProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) =>
              ref.watch(weatherFutureProvider).when(
                  data: (data) => SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(data.path),
                      ),
                  error: (error, stackTrace) => Text(
                        error.toString(),
                      ),
                  loading: () => const Text('loading...')),
        ),
      ),
    );
  }
}

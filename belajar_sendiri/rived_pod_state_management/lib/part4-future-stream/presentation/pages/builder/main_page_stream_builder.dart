import 'package:flutter/material.dart';
import 'package:rived_pod_state_management/part4-future-stream/repositories/weather_repository.dart';

class MainPageStreamBuilder extends StatelessWidget {
  const MainPageStreamBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Builder'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: WeatherRepository().getWeatherStream('Bandung'),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error!.toString());
            } else if (snapshot.hasData) {
              return SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(snapshot.data!.path),
              );
            } else {
              return const Text('Loading');
            }
          },
        ),
      ),
    );
  }
}

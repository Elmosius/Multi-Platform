import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rived_pod_state_management/part4-future-stream/repositories/weather_repository.dart';

var weatherRepositoryProvider = Provider<WeatherRepository>(
  (ref) => WeatherRepository(),
);

var weatherFutureProvider = FutureProvider<Weathers>(
  (ref) => ref.watch(weatherRepositoryProvider).getCurrentWeather('Bandung'),
);

var weatherStreamProvider = StreamProvider<Weathers>(
  (ref) => ref.watch(weatherRepositoryProvider).getWeatherStream('Bandung'),
);

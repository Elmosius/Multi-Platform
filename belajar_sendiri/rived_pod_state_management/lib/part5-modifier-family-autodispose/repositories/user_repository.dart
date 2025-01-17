import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:rived_pod_state_management/part5-modifier-family-autodispose/entities/user.dart';

class UserRepository {
  final Dio? _dio;
  final CancelToken? _cancelToken;

  UserRepository({Dio? dio, CancelToken? cancelToken})
      : _dio = dio,
        _cancelToken = cancelToken;

  Future<User?> getUser(int id) async {
    log('Ambil data user');

    await Future.delayed(const Duration(seconds: 2));

    try {
      var response = await (_dio ?? Dio())
          .get('https://reqres.in/api/users/$id', cancelToken: _cancelToken);

      log('Kembalikan data user');
      return User.fromJson(response.data['data']);
    } catch (e) {
      return null;
    }
  }
}

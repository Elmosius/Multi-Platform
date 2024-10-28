import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rived_pod_state_management/part5-modifier-family-autodispose/entities/user.dart';
import 'package:rived_pod_state_management/part5-modifier-family-autodispose/repositories/user_repository.dart';

var userRepositoryProvider = Provider.family<UserRepository, CancelToken?>(
  (ref, cancelToken) => UserRepository(cancelToken: cancelToken),
);

var userProvider = FutureProvider.autoDispose.family<User?, int>(
  (ref, id) async {
    CancelToken cancelToken = CancelToken();

    ref.onDispose(
      () {
        cancelToken.cancel();
      },
    );

    var user = await ref.watch(userRepositoryProvider(cancelToken)).getUser(id);
    ref.keepAlive();
    return user;
  },
);

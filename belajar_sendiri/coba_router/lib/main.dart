import 'package:coba_router/about.dart';
import 'package:coba_router/edit_profile.dart';
import 'package:coba_router/login_page.dart';
import 'package:coba_router/main_page.dart';
import 'package:coba_router/profile.dart';
import 'package:coba_router/user.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(routes: [
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
        path: '/',
        name: 'main_page',
        builder: (context, state) => const MainPage(),
        routes: [
          GoRoute(
            path: 'about',
            name: 'about',
            builder: (context, state) => const AboutPage(),
          ),
          GoRoute(
              name: 'profile',
              path: 'profile/:name',
              builder: (context, state) {
                String name = state.pathParameters['name'] ?? 'no name';
                return ProfilePage(name: name);
              },
              routes: [
                GoRoute(
                  path: 'edit_profile',
                  name: 'edit_profile',
                  builder: (context, state) {
                    Object? object = state.extra;

                    if (object != null && object is User) {
                      return EditProfile(user: object);
                    } else {
                      return const EditProfile(
                          user: User(name: 'None', email: 'None'));
                    }
                  },
                ),
              ]),
        ])
  ], debugLogDiagnostics: true, initialLocation: '/login', routerNeglect: true);

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
      debugShowCheckedModeBanner: true,
    );
  }
}

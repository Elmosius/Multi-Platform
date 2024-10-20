import 'package:flutter/cupertino.dart';

@immutable
class User {
  final String name;
  final String email;

  const User({required this.name, required this.email});
}

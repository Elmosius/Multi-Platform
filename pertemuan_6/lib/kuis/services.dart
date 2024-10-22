import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:pertemuan_6/kuis/person.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Person?> searchUser(String id) async {
    try {
      final response = await _dio.get('https://reqres.in/api/users/$id');
      if (response.statusCode == 200) {
        return Person.fromJson(response.data['data']);
      } else {
        return null;
      }
    } catch (e) {
      log('Error fetching user: $e');
      return null;
    }
  }

  Future<Person?> createUser(String name, String job) async {
    try {
      final response = await _dio.post(
        'https://reqres.in/api/users',
        data: jsonEncode({
          'name': name,
          'job': job,
        }),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      if (response.statusCode == 201) {
        return Person.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      log('Error creating user: $e');
      return null;
    }
  }
}

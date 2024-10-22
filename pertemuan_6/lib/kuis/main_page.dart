import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  Map<int, String> users = {};

  Future<void> searchUser() async {
    String id = idController.text;
    if (id.isEmpty) {
      _showDialog('Error', 'ID is required for searching');
      return;
    }

    final response =
        await http.get(Uri.parse('https://reqres.in/api/users/$id'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      _showDialog('User Found',
          'ID: ${data['id']}\nName: ${data['first_name']} ${data['last_name']}\nEmail: ${data['email']}');

      idController.clear();
    } else {
      _showDialog('Error', 'User not found');
    }
  }

  Future<void> createUser() async {
    String name = nameController.text;
    String job = jobController.text;

    if (name.isEmpty || job.isEmpty) {
      _showDialog(
          'Error', 'Both Name and Job are required for creating a user');
      return;
    }

    final response = await http.post(
      Uri.parse('https://reqres.in/api/users'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'name': name,
        'job': job,
      }),
    );

    if (response.statusCode == 201) {
      var data = jsonDecode(response.body);
      _showDialog('User Created',
          'Name: ${data['name']}\nJob: ${data['job']}\nID: ${data['id']}\nCreated at: ${data['createdAt']}');

      nameController.clear();
      jobController.clear();
    } else {
      _showDialog('Error', 'Failed to create user');
    }
  }

  void _showDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Kuis Pertemuan 6'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                  labelText: 'ID',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: jobController,
                decoration: const InputDecoration(
                  labelText: 'Job',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: searchUser,
                child: const Text('Search'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: createUser,
                child: const Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

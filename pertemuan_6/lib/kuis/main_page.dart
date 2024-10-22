import 'package:flutter/material.dart';
import 'package:pertemuan_6/kuis/person.dart';
import 'package:pertemuan_6/kuis/services.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController jobController = TextEditingController();
  final ApiService apiService = ApiService();

  Future<void> searchUser() async {
    String id = idController.text;
    if (id.isEmpty) {
      _showDialog('Error', 'ID is required for searching');
      return;
    }

    Person? person = await apiService.searchUser(id);
    if (person != null) {
      _showDialog('User Found',
          'ID: ${person.id}\nName: ${person.firstName} ${person.lastName}\nEmail: ${person.email}');
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

    Person? person = await apiService.createUser(name, job);
    if (person != null) {
      _showDialog('User Created',
          'Name: ${person.name}\nJob: ${person.job}\nID: ${person.id}\nCreated at: ${person.createdAt}');
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
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: jobController,
                decoration: const InputDecoration(
                  labelText: 'Job',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
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

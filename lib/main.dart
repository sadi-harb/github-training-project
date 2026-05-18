import 'package:flutter/material.dart';

void main() {
  runApp(const StudentTasksApp());
}

class StudentTasksApp extends StatelessWidget {
  const StudentTasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Tasks App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> tasks = const [
    {
      "title": "Complete Flutter Assignment",
      "subtitle": "Finish GitHub training project"
    },
    {
      "title": "Study Git Commands",
      "subtitle": "Practice add, commit, push"
    },
    {
      "title": "Prepare README File",
      "subtitle": "Add project documentation"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Tasks App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                leading: const Icon(Icons.task),
                title: Text(tasks[index]["title"]!),
                subtitle: Text(tasks[index]["subtitle"]!),
              ),
            );
          },
        ),
      ),
    );
  }
}
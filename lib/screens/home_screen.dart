import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(12),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: const Icon(
                    Icons.task_alt,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  tasks[index]["title"]!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(tasks[index]["subtitle"]!),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
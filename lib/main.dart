import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

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
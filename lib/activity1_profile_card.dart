
import 'package:flutter/material.dart';
import 'student.dart';

void main() {
  runApp(const ProfileCardApp());
}

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: studentColor),
        useMaterial3: true,
      ),
      home: const ProfileCardPage(),
    );
  }
}

class ProfileCardPage extends StatelessWidget {
  const ProfileCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity 1 - Profile Card'),
        backgroundColor: studentColor,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(24),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundColor: studentColor,
                  child: const Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  studentName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Section: ${studentName.split('_').first}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Text('Student ID: $studentId'),
                const Divider(height: 28),
                const Row(
                  children: [
                    Icon(Icons.school),
                    SizedBox(width: 12),
                    Expanded(child: Text('BS Information Technology')),
                  ],
                ),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 12),
                    Expanded(child: Text('shanger.lor@csucc.edu.ph')),
                  ],
                ),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 12),
                    Expanded(child: Text('09951855448')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

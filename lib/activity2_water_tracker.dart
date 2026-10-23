
import 'package:flutter/material.dart';
import 'student.dart';

void main() {
  runApp(const WaterTrackerApp());
}

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Water Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: studentColor),
        useMaterial3: true,
      ),
      home: const WaterTrackerPage(),
    );
  }
}

class WaterTrackerPage extends StatefulWidget {
  const WaterTrackerPage({super.key});

  @override
  State<WaterTrackerPage> createState() => _WaterTrackerPageState();
}

class _WaterTrackerPageState extends State<WaterTrackerPage> {
  int glassesDrunk = 0;
  int dailyGoal = 6;

  void addWater() {
    setState(() {
      glassesDrunk++;
    });
  }

  void resetWater() {
    setState(() {
      glassesDrunk = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double progress =
        (glassesDrunk / dailyGoal).clamp(0.0, 1.0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity 2 - Water Tracker'),
        backgroundColor: studentColor,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.water_drop,
                size: 80,
                color: Colors.blue,
              ),
              const SizedBox(height: 16),
              Text(
                '$glassesDrunk / $dailyGoal glasses',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              LinearProgressIndicator(
                value: progress,
                minHeight: 12,
                borderRadius: BorderRadius.circular(10),
              ),
              const SizedBox(height: 16),
              Text(
                glassesDrunk >= dailyGoal
                    ? 'Great job! You reached your daily goal!'
                    : 'Your goal is 6 glasses today. Keep going!',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: addWater,
                icon: const Icon(Icons.add),
                label: const Text('Add a Glass'),
              ),
              const SizedBox(height: 8),
              OutlinedButton.icon(
                onPressed: resetWater,
                icon: const Icon(Icons.refresh),
                label: const Text('Reset'),
              ),
              const SizedBox(height: 24),
              Text(
                'Student: $studentName',
                textAlign: TextAlign.center,
              ),
              Text('Student ID: $studentId'),
            ],
          ),
        ),
      ),
    );
  }
}

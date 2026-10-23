
import 'package:flutter/material.dart';
import 'student.dart';

void main() {
  runApp(const WeatherDashboardApp());
}

class WeatherDashboardApp extends StatelessWidget {
  const WeatherDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather Dashboard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: studentColor),
        useMaterial3: true,
      ),
      home: const WeatherDashboardPage(),
    );
  }
}

class WeatherDashboardPage extends StatelessWidget {
  const WeatherDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity 3 - Weather Dashboard'),
        backgroundColor: studentColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                children: [
                  Text(
                    'Cabadban City, Philippines',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Icon(Icons.wb_sunny, size: 70, color: Colors.orange),
                  Text(
                    '32°C',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Sunny'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: StatBox(
                      icon: Icons.water_drop,
                      label: 'Humidity',
                      value: '65%',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: StatBox(
                      icon: Icons.air,
                      label: 'Wind',
                      value: '12 km/h',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: StatBox(
                      icon: Icons.visibility,
                      label: 'Visibility',
                      value: '10 km',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: StatBox(
                      icon: Icons.thermostat,
                      label: 'Feels like',
                      value: '35°',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text('Student: $studentName'),
          ],
        ),
      ),
    );
  }
}

class StatBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const StatBox({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: Colors.blue),
          const SizedBox(height: 8),
          Text(label, textAlign: TextAlign.center),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'student.dart';

void main() {
  runApp(const SettingsApp());
}

class SettingsApp extends StatefulWidget {
  const SettingsApp({super.key});

  @override
  State<SettingsApp> createState() => _SettingsAppState();
}

class _SettingsAppState extends State<SettingsApp> {
  bool darkMode = false;

  ThemeData buildTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: darkMode ? Brightness.dark : Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: studentColor,
        brightness: darkMode ? Brightness.dark : Brightness.light,
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Activity 5 - Settings',
      theme: buildTheme(),
      home: SettingsPage(
        darkMode: darkMode,
        onDarkModeChanged: (value) {
          setState(() {
            darkMode = value;
          });
        },
      ),
    );
  }
}

class SettingsPage extends StatefulWidget {
  final bool darkMode;
  final ValueChanged<bool> onDarkModeChanged;

  const SettingsPage({
    super.key,
    required this.darkMode,
    required this.onDarkModeChanged,
  });

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notifications = true;
  bool location = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: studentColor,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: studentColor,
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              title: Text(studentName),
              subtitle: Text('Student ID: $studentId'),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Preferences',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SwitchListTile(
            title: const Text('Dark Mode'),
            subtitle: const Text('Change the app appearance'),
            secondary: const Icon(Icons.dark_mode),
            value: widget.darkMode,
            onChanged: widget.onDarkModeChanged,
          ),
          SwitchListTile(
            title: const Text('Notifications'),
            secondary: const Icon(Icons.notifications),
            value: notifications,
            onChanged: (value) {
              setState(() {
                notifications = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Location Services'),
            secondary: const Icon(Icons.location_on),
            value: location,
            onChanged: (value) {
              setState(() {
                location = value;
              });
            },
          ),
          const SizedBox(height: 16),
          const Text(
            'Skills',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Wrap(
            spacing: 8,
            children: [
              Chip(label: Text('Flutter')),
              Chip(label: Text('Dart')),
              Chip(label: Text('UI Design')),
              Chip(label: Text('Git')),
              Chip(label: Text('Problem Solving')),
            ],
          ),
          const SizedBox(height: 20),
          FilledButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(
                    content: Text('Settings saved!'),
                    duration: Duration(seconds: 5),
                  ),
                );
            },
            icon: const Icon(Icons.save),
            label: const Text('Save Settings'),
          ),
          const SizedBox(height: 12),
          Center(
            child: Text('Theme color: $studentColorName'),
          ),
        ],
      ),
    );
  }
}

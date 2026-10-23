
import 'package:flutter/material.dart';
import 'student.dart';

void main() {
  runApp(const CafeMenuApp());
}

class CafeMenuApp extends StatelessWidget {
  const CafeMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Café Menu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: studentColor),
        useMaterial3: true,
      ),
      home: const CafeMenuPage(),
    );
  }
}

class CafeMenuPage extends StatelessWidget {
  const CafeMenuPage({super.key});

  final List<Map<String, dynamic>> menuItems = const [
    {
      'name': 'Iced Coffee',
      'price': 85,
      'icon': Icons.coffee,
      'bestSeller': true,
    },
    {
      'name': 'Milk Tea',
      'price': 75,
      'icon': Icons.local_cafe,
      'bestSeller': false,
    },
    {
      'name': 'Cheese Sandwich',
      'price': 60,
      'icon': Icons.lunch_dining,
      'bestSeller': false,
    },
    {
      'name': 'Chocolate Cake',
      'price': 55,
      'icon': Icons.cake,
      'bestSeller': true,
    },
    {
      'name': 'Fruit Juice',
      'price': 50,
      'icon': Icons.local_drink,
      'bestSeller': false,
    },
    {
      'name': 'French Fries',
      'price': 45,
      'icon': Icons.fastfood,
      'bestSeller': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity 4 - Campus Café'),
        backgroundColor: studentColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                color: Colors.brown.shade100,
                child: const Column(
                  children: [
                    Icon(Icons.local_cafe, size: 30, color: Colors.brown),
                    SizedBox(height: 8),
                    Text(
                      'Campus Café',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Fresh food, happy students!'),
                  ],
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Chip(
                  label: const Text('OPEN'),
                  backgroundColor: Colors.green.shade100,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Our Menu',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.9,
              ),
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final item = menuItems[index];

                return Card(
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              item['icon'] as IconData,
                              size: 30,
                              color: Colors.brown,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              item['name'] as String,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text('₱${item['price']}'),
                          ],
                        ),
                      ),
                      if (item['bestSeller'] as bool)
                        const Positioned(
                          top: 4,
                          right: 4,
                          child: Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text('Student: $studentName'),
          ),
        ],
      ),
    );
  }
}

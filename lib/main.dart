import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 1. Root Application Setup
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Two Page App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(), // Start at the First Page
    );
  }
}

// 2. The First Page
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page One')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the First Page!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20), // Spacing
            ElevatedButton(
              child: const Text('Go to Page Two'),
              onPressed: () {
                // Navigate to the second page using a Material route
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// 3. The Second Page
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Two')),
      backgroundColor: Colors.grey[200], // Slight color change to distinguish
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have arrived at Page Two.',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Go Back'),
              onPressed: () {
                // Navigate back to the first screen by popping the current route
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to My App!', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Button Pressed!');
              },
              child: const Text('Click Me'),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://picsum.photos/200/300', // Example image
              height: 100,
              errorBuilder:
                  (BuildContext context, Object error, StackTrace? stackTrace) {
                return const Text('Error loading image');
              },
            ),
          ],
        ),
      ),
    );
  }
}

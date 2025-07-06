import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BPAL Test',
      home: Scaffold(
        appBar: AppBar(title: const Text('BPAL Test View')),
        body: const Center(child: Text('Hello from GitHub Setup')),
      ),
    );
  }
}

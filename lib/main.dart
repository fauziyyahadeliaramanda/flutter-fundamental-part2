import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fauziyyah Adelia Ramanda 2341760145'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
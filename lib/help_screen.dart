import 'package:flutter/material.dart';

// ignore: camel_case_types
class help_screen extends StatelessWidget {
  const help_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
      ),
      body: const Center(
          child: Icon(
            Icons.handshake,
            semanticLabel: 'Help',
            size: 100.0, // Adjust the size of the icon as needed
            color: Colors.blue, // Customize the color of the icon
          ),
        ),
    );
  }
}
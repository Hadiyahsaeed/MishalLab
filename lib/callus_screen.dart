import 'package:flutter/material.dart';

class CallUsScreen extends StatelessWidget {
  const CallUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Call us'),
      ),
      body: const Center(
          child: Icon(
            Icons.phone,
            semanticLabel: 'Call Us',
            size: 100.0, // Adjust the size of the icon as needed
            color: Colors.blue, // Customize the color of the icon
          ),
        ),
    );
  }
}
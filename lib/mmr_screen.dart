import 'package:flutter/material.dart';

// ignore: camel_case_types
class mmr_screen extends StatelessWidget {
  const mmr_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Merge Members Request'),
      ),
      body: const Center(
          child: Icon(
            Icons.wallet,
            semanticLabel: 'Merge members Request',
            size: 100.0, // Adjust the size of the icon as needed
            color: Colors.blue, // Customize the color of the icon
          ),
        ),
    );
  }
}
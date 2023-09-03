// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:mishallab_app/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Header Example',
      home: AccountPage(),
    );
  }
}

class AccountPage extends StatelessWidget {
  @override
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Customize the AppBar as needed
        title: const Text('Settings'),
        backgroundColor: Colors.teal, // Change the background color
        actions: <Widget>[
          // Add action buttons or widgets on the right side of the AppBar
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle the search action
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Handle the settings action
            },
          ),
        ],
      ),
      
    );
  }
}
class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
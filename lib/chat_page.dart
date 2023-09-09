import 'package:flutter/material.dart';
import 'package:mishallab_app/accounts_page.dart';

void main() {
  runApp(MyApp());
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Chat Screen'),
    );
  }
}
// ignore: use_key_in_widget_constructors
class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Chat with us"),
        ),
        body: const Center(
          child: Icon(
            Icons.chat_bubble,
            semanticLabel: 'Chat with us',
            size: 100.0, // Adjust the size of the icon as needed
            color: Colors.blue, // Customize the color of the icon
          ),
        ),
      ),
    );
  }
}




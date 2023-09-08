import 'package:flutter/material.dart';

//change test
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('MishalLab'),

        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to the cart page when the cart icon is clicked
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: _getPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 23, 35, 129),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
            backgroundColor: Colors.blue,

          ),
        ],
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return ChatPage();
      case 2:
        return AccountPage();
      default:
        return const HomeScreen();
    }
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16.0),
        const Text(
          'Search Tests',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16.0),
        GridView.count(
          crossAxisCount: 3, // 3 buttons in a row
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _buildButton(context, 'All', Icons.medical_services),
            _buildButton(context, 'Diabetes', Icons.medication_liquid_outlined),
            _buildButton(context, 'Heart', Icons.heart_broken),
          ],
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context, String text, IconData icon) {
    return InkWell(
      onTap: () {
        // Navigate to the corresponding page when a button is clicked
        String route;
        if (text == 'All') {
          route = '/all';
        } else if (text == 'Diabetes') {
          route = '/diabetes';
        } else {
          route = '/heart';
        }
        Navigator.of(context).pushNamed(route);
      },
      child: Column(
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 40.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            text,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
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

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Handle the settings action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PersonWidget
            const Row(
              children: [
                PersonWidget(),

                // Text widget on the right side
                SizedBox(width: 16.0), // Add some space between the widgets
                Text(
                  '03354789230',
                  style: TextStyle(
                    color: Colors.black, // Customize text color
                    fontSize: 16.0,     // Customize text size
                  ),
                ),
              ],
            ),

            // Button below the PersonWidget
            const SizedBox(height: 16.0), // Add some space above the button
            ElevatedButton(
              onPressed: () {
                // Handle the "MANAGE" button press
              },
              child: const Text('MANAGE'),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonWidget extends StatelessWidget {
  const PersonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 100.0,
      height: 100.0,
      child: const Icon(
        Icons.person,
        size: 48.0,
        color: Colors.white,
      ),
    );
  }
}
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Your Cart Contents Here'),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the home page when the back button is clicked
                Navigator.of(context).pop();
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}

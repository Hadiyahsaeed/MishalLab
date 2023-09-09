import 'package:flutter/material.dart';
import 'package:mishallab_app/accounts_page.dart';
import 'package:mishallab_app/cart_page.dart';
import 'package:mishallab_app/chat_page.dart';

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
        return const HomePage();
      case 1:
        return ChatPage();
      case 2:
        return const AccountPage();
      default:
        return const HomePage();
    }
  }
}



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Search Test',
              style: TextStyle(
                fontSize: 24, // Adjust the font size as needed
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildIconWithLabel(
                Icons.search, // Replace with your icon
                'All', // Label for the first button
                context,
              ),
              _buildIconWithLabel(
                Icons.medical_services, // Replace with your icon
                'Diabetes', // Label for the second button
                context,
              ),
              _buildIconWithLabel(
                Icons.heart_broken, // Replace with your icon
                'Heart', // Label for the third button
                context,
              ),
            ],
          ),

          const SizedBox(height: 16), // Space between sections

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Mishal Lab',
              style: TextStyle(
                fontSize: 24, // Adjust the font size as needed
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildLabButtonWithIcon(
                Icons.electric_scooter, // Replace with your icon
                'Home Sampling', // Label for the first button
                context,
              ),
              _buildLabButtonWithIcon(
                Icons.pages_sharp, // Replace with your icon
                'View Reports', // Label for the second button
                context,
              ),
              _buildLabButtonWithIcon(
                Icons.card_membership, // Replace with your icon
                'Blue Card', // Label for the third button
                context,
              ),
            ],
          ),
          const SizedBox(height: 16), // Space between rows
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildLabButtonWithIcon(
                Icons.map, // Replace with your icon
                'Location', // Label for the fourth button
                context,
              ),
              _buildLabButtonWithIcon(
                Icons.airplanemode_on, // Replace with your icon
                'Travel Request', // Label for the fifth button
                context,
              ),
            ],
          ),

          const SizedBox(height: 16), // Space before "Service" heading

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Service', // Add the "Service" heading
              style: TextStyle(
                fontSize: 24, // Adjust the font size as needed
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildServiceIconWithLabel(
                Icons.medication_outlined, // Replace with your icon
                'Medicine', // Label for the first service
                context,
              ),
              _buildServiceIconWithLabel(
                Icons.radio, // Replace with your icon
                'Radiology', // Label for the second service
                context,
              ),
              _buildServiceIconWithLabel(
                Icons.house, // Replace with your icon
                'Appointment', // Label for the third service
                context,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconWithLabel(IconData icon, String label, BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80, // Adjust the width of the circular background
          height: 80, // Adjust the height of the circular background
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue, // Set the circular background color
          ),
          child: Center(
            child: Icon(
              icon,
              color: Colors.white, // Set the icon color to white
              size: 32, // Adjust the icon size as needed
            ),
          ),
        ),
        const SizedBox(height: 8), // Space between icon and label
        Text(
          label,
          style: const TextStyle(
            color: Colors.blue, // Set the label color to blue
            fontSize: 16, // Adjust the label font size as needed
          ),
        ),
      ],
    );
  }

  Widget _buildLabButtonWithIcon(
      IconData icon, String label, BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80, // Adjust the width of the circular background
          height: 80, // Adjust the height of the circular background
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue, // Set the circular background color
          ),
          child: Center(
            child: Icon(
              icon,
              color: Colors.white, // Set the icon color to white
              size: 32, // Adjust the icon size as needed
            ),
          ),
        ),
        const SizedBox(height: 8), // Space between icon and label
        Text(
          label,
          style: const TextStyle(
            color: Colors.blue, // Set the label color to blue
            fontSize: 16, // Adjust the label font size as needed
          ),
        ),
      ],
    );
  }

  Widget _buildServiceIconWithLabel(
      IconData icon, String label, BuildContext context) {
return Column(
      children: [
        Container(
          width: 80, // Adjust the width of the circular background
          height: 80, // Adjust the height of the circular background
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue, // Set the circular background color
          ),
          child: Center(
            child: Icon(
              icon,
              color: Colors.white, // Set the icon color to white
              size: 32, // Adjust the icon size as needed
            ),
          ),
        ),
        const SizedBox(height: 8), // Space between icon and label
        Text(
          label,
          style: const TextStyle(
            color: Colors.blue, // Set the label color to blue
            fontSize: 16, // Adjust the label font size as needed
          ),
        ),
      ],
    );
  }
}
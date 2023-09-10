import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

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
                  '03335104260',
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

            // "About us" button
            const SizedBox(height: 16.0), // Add some space above the button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the AboutUsScreen when button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutUsScreen()),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'About us',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            // "Help" button
            const SizedBox(height: 16.0), // Add some space above the button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle the "Help" button press
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Help',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.business_center,
                      size: 32.0, // Increase icon size
                      color: Colors.blue, // Set icon color to blue
                    ),
                  ],
                ),
              ),
            ),

            // "Call us" button
            const SizedBox(height: 16.0), // Add some space above the button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle the "Call us" button press
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Call us',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.phone,
                      size: 32.0, // Increase icon size
                      color: Colors.blue, // Set icon color to blue
                    ),
                  ],
                ),
              ),
            ),

            // "Wallet" button
            const SizedBox(height: 16.0), // Add some space above the button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle the "Wallet" button press
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallet',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.account_balance_wallet,
                      size: 32.0, // Increase icon size
                      color: Colors.blue, // Set icon color to blue
                    ),
                  ],
                ),
              ),
            ),

            // "Merge members request" button
            const SizedBox(height: 16.0), // Add some space above the button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle the "Merge members request" button press
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Merge members request',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.people,
                      size: 32.0, // Increase icon size
                      color: Colors.blue, // Set icon color to blue
                    ),
                  ],
                ),
              ),
            ),


            // Rest of your widgets...

            // Centered icons
            const SizedBox(height: 16.0), // Add some space above the icons
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.facebook,
                  size: 48.0, // Increase icon size
                  color: Colors.blue, // Set icon color to blue
                ),

              ],
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

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About us'),
      ),
      body: const Center(
        child: Text('Welcome to Mishal Lab'),
      ),
    );
  }
}
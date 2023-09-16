import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card Example'),
        ),
        body: const Center(
          child: WalletScreen(),
        ),
      ),
    );
  }
}

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Wallet'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white, // Set the background color to white
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: 300,
              height: 200,
              child: Card(
                elevation: 4.0,
                color: Colors.blue, // Set the card color to blue
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 30,
                                color: Colors.white, // Set the icon color to white
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Mishal Lab',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white, // Set the text color to white
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            color: Colors.blue,
                            child: const Text(
                              'BLUE CARD',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        '000000000000',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Set the text color to white
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Text(
                            'Good Through: 09/2023',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white, // Set the text color to white
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Points Balance: 000000',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white, // Set the text color to white
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

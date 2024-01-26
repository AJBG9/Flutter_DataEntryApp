import 'package:flutter/material.dart';

class ReceiverPage extends StatelessWidget {
  // Declare a variable to store the received data
  final String name_Data;
  final String address_Data;
  final String contact_Data;

  // Constructor to receive the data when the page is created
  ReceiverPage({required this.name_Data, required this.address_Data, required this.contact_Data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College Information'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Name text
            Text(
              'Hi, ' + name_Data + '! Thank you for registering.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Here is what you entered: ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Name:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              name_Data,
              style: TextStyle(fontSize: 24),
            ),
            // Address text
            Text(
              'Address:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              address_Data,
              style: TextStyle(fontSize: 24),
            ),
            // Contact text
            Text(
              'Contact Number:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              contact_Data,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

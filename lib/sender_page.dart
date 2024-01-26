import 'package:flutter/material.dart';
import 'receiver_page.dart';

class SenderPage extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController contact = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College Information'),
      ),
      body: Center(
        child: Container(
          width: 500, // Adjust the width of the container
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ENTER COLLEGE INFORMATION:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: address,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: contact,
                decoration: InputDecoration(
                  labelText: 'Contact',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String nameData = name.text;
                  String addressData = address.text;
                  String contactData = contact.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReceiverPage(
                        name_Data: nameData,
                        address_Data: addressData,
                        contact_Data: contactData,
                      ),
                    ),
                  );
                },
                child: Text('SUBMIT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

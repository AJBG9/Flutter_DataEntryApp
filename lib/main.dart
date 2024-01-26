import 'package:flutter/material.dart';
import 'sender_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
      primaryColor: Colors.lightGreen[800],
      ),
      home: SenderPage(),
    );
  }
}

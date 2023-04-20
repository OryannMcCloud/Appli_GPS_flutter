import 'package:flutter/material.dart';
import 'screens/login_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crisartech GPS beta',
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Crisartech GPS beta'),
          backgroundColor: Colors.purple,
        ),
        body: LoginPage(),
      ),
    );
  }
}




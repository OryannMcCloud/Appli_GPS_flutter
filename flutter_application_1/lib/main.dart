import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'provider/theme_provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crisartech GPS beta',
      themeMode: ThemeMode.system,
      darkTheme: MyThemes.darkTheme,
      theme: MyThemes.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Crisartech GPS beta'),
          backgroundColor: Colors.purple,
        ),
        body: LoginPage(),
      ),
    );
  }
}




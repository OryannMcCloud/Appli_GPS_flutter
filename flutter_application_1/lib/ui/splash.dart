import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override 
  _SplashState createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => HomeScreen(
        title: 'MapboxFlutterMaps examples')));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      ),
    );
  }
}
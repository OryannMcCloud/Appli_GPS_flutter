import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_application_1/screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override 
  _SplashState createState() => _SplashState();
}


class _SplashState extends State<Splash> {

  @override
  void InitState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png', height: 130,),
          const SizedBox(height: 20,),
          if(Platform.isIOS)
            const CupertinoActivityIndicator(
              radius: 15,
            )
          else
            const CircularProgressIndicator(
              color: Colors.white,
            )
        ],
      ),
    );
  }
}
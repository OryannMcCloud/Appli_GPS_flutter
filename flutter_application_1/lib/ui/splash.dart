import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_application_1/screens/home.dart';
import 'package:mapbox_flutter/mapbox_flutter.dart';
import 'package:location/location.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override 
  _SplashState createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  @override
  void InitState() {
    super.initState();
    initializeLocation();
  }

  void initializeLocation() async {
    Location location = Location();
    bool? _serviceEnabled;
    PermissionStatus? _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if(!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
    }

    _permissionGranted = await location.hasPermission();
    if(_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
    }

    LocationData _locationData = await location.getLocation();
    LatLng currentLatLng = LatLng(_locationData.latitude!, _locationData.longitude!);

    //store the user location in sharedpreferences
    sharedPreferences.setDouble('latitude', _locationData.latitude);
    sharedPreferences.setDouble('longitude', _locationData.longitude );

    //get and store the directions API response in sharedpreferences
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const Home()),
      (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
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
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_application_1/screens/home.dart';
import 'package:latlong2/latlong.dart';
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
    //ensure all permissions are collected for Locations
    Location location = Location();
    bool? _serviceEnabled;
    PermissionStatus? _permissionGranted;
    var ltlg;

    _serviceEnabled = await location.serviceEnabled();
    if(!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
    }

    _permissionGranted = await location.hasPermission();
    if(_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
    }

    //get capture the current location of the user
    LocationData _locationData = await location.getLocation();
    LatLng currentLatLng = LatLng(_locationData.latitude!, _locationData.longitude!);

    //get and store the directions API response in sharedpreferences
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const Home()),
      (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,child: Center(child: Image.asset('assets/images/logo.png')),
    );
  }
}
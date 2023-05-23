import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mapbox_flutter/mapbox_flutter.dart';

class _HomeScreenState extends StatefulWidget {
  //FIXME: Add your Mapbox access token here
  static const String ACCESS_TOKEN = "sk.eyJ1IjoiY3Jpc2FydGVjaCIsImEiOiJjbGh5Z2FzZGwwbXM0M2VvZXNwdjkyaHA4In0.vLuglOobIZtS2Vf73fUqzw";

  
  late MapboxMapController controller;
  late CameraPosition _initialCameraPosition;

  @override
  void initState() {
  super.initState();
  _initialCameraPosition = CameraPosition(target: latLng, zoom: 15);
  }
  
  _onMapCreated(MapboxMapController controller) async {
  this.controller = controller;
}

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }


}

class HomeScreen {
}
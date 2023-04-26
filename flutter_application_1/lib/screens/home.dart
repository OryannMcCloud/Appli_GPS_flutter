import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class HomeScreen extends StatefulWidget { //widget pouvant changer d'état (GPS qui change de position)
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LatLng _currentPosition = LatLng(44.359642, 1.671465); //probleme de l'affichage de la position actuelle

  @override
  void initState() { //starting state 
    super.initState();
    Geolocator.getPositionStream().listen((Position position) { //listen to the position
      setState(() { //set the state
        _currentPosition = LatLng(position.latitude, position.longitude); //set the position
      });
    });
  }

  @override
  Widget build(BuildContext context) { //build the widget
    return Stack( //stack the widget
      children: [ //list of widget
        FlutterMap( //map 
          options: MapOptions(  //map options
            center: _currentPosition,   //center of the map
            zoom: 16.0, //zoom of the map
          ),
          layers: [ //layers of the map
            TileLayerOptions( //tile layer
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", //url of the tile
              subdomains: ['a', 'b', 'c'], //subdomains of the tile
              tileProvider: NonCachingNetworkTileProvider(), //tile provider
            ),
            MarkerLayerOptions( //marker of position layer (icon)
              markers: [ //list of markers
                Marker(
                  point: _currentPosition, //position of the marker
                  builder: (ctx) => Image.asset(
                    'assets/arrow.png',
                    width: 50.0,
                    height: 50.0,
                  ),
                  anchorPos: AnchorPos.align(AnchorAlign.center),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          left: 20.0,
          bottom: 20.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: LiteRollingSwitch(
              value: true,
              textOn: 'Dark',
              textOff: 'Light',
              colorOn: Colors.purple,
              colorOff: Color.fromARGB(255, 167, 159, 159),
              iconOn: Icons.check,
              iconOff: Icons.power_settings_new,
              onChanged: (bool state) {
                print('Current State of SWITCH IS: $state');
              },
              onDoubleTap: (bool state) {
                print('Current State of SWITCH IS: $state');
              },
              onSwipe: (bool state) {
                print('Current State of SWITCH IS: $state');
              },
              onTap: (bool state) {
                print('Current State of SWITCH IS: $state');
              },
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';


class MapDisplay extends StatefulWidget {
  @override
  _MapDisplayState createState() => _MapDisplayState();
}

class _MapDisplayState extends State<MapDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Display'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(51.5, -0.09),
          zoom: 13.0,
        ),
        layers: [],
      ),
    );
  }
}

class DownloadedMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(51.5, -0.09),
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          subdomains: ['a', 'b', 'c'],
          tileProvider: CachedNetworkTileProvider(),
        ),
      ],
    );
  }
}


class Cursor extends StatefulWidget {
  @override
  _CursorState createState() => _CursorState();
}

class _CursorState extends State<Cursor> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override 
  Widget build(BuildContext context) {

  }
} 



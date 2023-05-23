import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mapbox_flutter/mapbox_flutter.dart';
import 'package:latlng/latlng.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override 
  Home createState() => _HomeState();
}

class _MyHomePageState extends State<Home> {
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FlutterMap(
          options: MapOptions(
            center: LatLng(31.050478, -7.931633),
            zoom: 12.0,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate:
                  "mapbox://styles/crisartech/clhre093a01zj01pg1b3hgprc",
              additionalOptions: {
                'accessToken':
                    'pk.eyJ1IjoiY3Jpc2FydGVjaCIsImEiOiJjbGhxZ3pucjIyOXRkM2xveGJ1NWp4MWE0In0.hFgp3BOcrGhf5JGYG6Qh-A',
                'id': 'mapbox.streets',
              },
            ),
            MarkerLayerOptions(
              markers: [
                Marker(
                  width: 50.0,
                  height: 50.0,
                  point: LatLng(31.050478, -7.931633),
                  builder: (ctx) => Container(
                    child: Image.asset(
                      "use an image for marker",
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:latlong2/latlong.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var latLng;
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapbox'),
      ),
      body: Center(
        child: FlutterMap(
          options: MapOptions(
            center: latLng.LatLng(31.050478, -7.931633),
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
                  point: latLng.LatLng(31.050478, -7.931633),
                  builder: (ctx) => Container(
                    child: Image.asset(
                      "assets/images/marker.png",
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
}
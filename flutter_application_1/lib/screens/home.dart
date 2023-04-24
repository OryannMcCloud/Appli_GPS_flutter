import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LatLng _currentPosition = LatLng(44.359642, 1.671465);

  @override
  void initState() {
    super.initState();
    Geolocator.getPositionStream().listen((Position position) {
      setState(() {
        _currentPosition = LatLng(position.latitude, position.longitude);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            center: _currentPosition,
            zoom: 16.0,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c'],
              tileProvider: NonCachingNetworkTileProvider(),
            ),
            MarkerLayerOptions(
              markers: [
                Marker(
                  point: _currentPosition,
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
        // switch
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

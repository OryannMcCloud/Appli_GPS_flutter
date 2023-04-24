import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Geolocator.getCurrentPosition(),
      builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
        if (snapshot.hasData) {
          final position = snapshot.data!;
          return Stack(
            children: [
              FlutterMap(
                options: MapOptions(
                  center: LatLng(position.latitude, position.longitude),
                  zoom: 13.0,
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
                        point: LatLng(44.359642, 1.671465),
                        builder: (ctx) => Image.asset(
                          //Icons.location_on,
                          'assets/arrow.png', // relatif au pubspec.yaml
                          width: 50.0, // specify the width of the image widget
                          height: 50.0, // specify the height of the image widget
                        ),
                        anchorPos: AnchorPos.align(AnchorAlign.bottom),
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
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mapbox_flutter/mapbox_flutter.dart';

class _HomeScreenState extends StatelessWidget {
  //FIXME: Add your Mapbox access token here
  static const String ACCESS_TOKEN = "sk.eyJ1IjoiY3Jpc2FydGVjaCIsImEiOiJjbGh5Z2FzZGwwbXM0M2VvZXNwdjkyaHA4In0.vLuglOobIZtS2Vf73fUqzw";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MapboxFlutterMaps examples')),
      body: ListView.builder(
        itemCount: _allPages.length,
        itemBuilder: (_, int index) => ListTile(
          leading: _allPages[index].leading,
          title: Text(_allPages[index].title),
          onTap: () => _pushPage(context, _allPages[index]),
        ),
      ),
    );
  }
}

class HomeScreen {
}
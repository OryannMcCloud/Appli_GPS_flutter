import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

String data = "";

class Receiving extends StatelessWidget {

  void receive(Socket s) async{
  Socket sock = await Socket.connect('192.168.4.1', 80);
  late Socket socket;

    socket = s;
    socket.listen((List<int> rawData) {
      data = utf8.decode(rawData);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}


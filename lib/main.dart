// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsDemo extends StatefulWidget {
  const MapsDemo();
  @override
  State createState() => MapsDemoState();
}

class MapsDemoState extends State<MapsDemo> {
  GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GoogleMaps examples')),
      body: GoogleMap(
          onMapCreated:
              _onMapCreated), // https://github.com/BaseflowIT/flutter-permission-handler/blob/develop/example/lib/main.dart
    );
  }
}

void main() {
  runApp(MaterialApp(home: MapsDemo()));
}

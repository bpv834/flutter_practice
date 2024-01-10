import 'package:flutter/material.dart';

// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

class MapViewModel with ChangeNotifier {
  bool _clickMarker =false;

  List<LatLong> latLongList = [
    LatLong(37, 127),
    LatLong(38, 128),
    LatLong(38, 125),
  ];
  List<String> mapId=[
    "id1",
    "id2",
    "id3",
  ];

  bool get clickMarker => _clickMarker;

  set setClickMarker(bool value) {
    _clickMarker = value;
    notifyListeners();
    print("clickMarker 값은 = ${_clickMarker}");
  }
}

class LatLong {
  double lat;
  double long;

  LatLong(this.lat, this.long);
}

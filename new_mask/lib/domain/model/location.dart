import 'package:geolocator/geolocator.dart';

class Location {
  final num lat;
  final num lng;

  Location(this.lat, this.lng);
}

extension DistanceBetween on Location {
  num distanceBetween(Location other) {
    return Geolocator.distanceBetween(
      lat.toDouble(),
      lng.toDouble(),
      other.lat.toDouble(),
      other.lng.toDouble(),
    );
  }
}

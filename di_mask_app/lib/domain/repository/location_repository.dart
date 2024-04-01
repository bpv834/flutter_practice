import '../model/loaction.dart';

abstract class LocationRepository{
  Future<Location> getLocation();
}
import '../model/permission.dart';

abstract class LocationPermissionHandler {
  Future<bool> isLocationServiceEnabled();

  Future<Permission> checkPermission();

  Future<Permission> requestPermission();
}

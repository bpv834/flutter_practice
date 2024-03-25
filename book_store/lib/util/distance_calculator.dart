import 'dart:math';
class DistanceCalculator {
  static const earthRadius = 6371.0; // 지구 반지름 (단위: 킬로미터)

  static double degreesToRadians(double degrees) {
    return degrees * (pi / 180.0);
  }

  static double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    double dLat = degreesToRadians(lat2 - lat1);
    double dLon = degreesToRadians(lon2 - lon1);

    double a = pow(sin(dLat / 2), 2) +
        pow(sin(dLon / 2), 2) * cos(degreesToRadians(lat1)) * cos(degreesToRadians(lat2));
    double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return earthRadius * c;
  }
}
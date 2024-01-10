import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../core/customer_info_view_model.dart';

class SplashViewModel with ChangeNotifier{
  Future<void> getCurrentLocation(CustomerInfoViewModel viewModel) async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      viewModel.setCurrentLocation(position.latitude, position.longitude);

      print("Current location: ${viewModel.lat}, ${viewModel.long}");
    } catch (e) {
      print("Error getting location: $e");
    }
  }
}
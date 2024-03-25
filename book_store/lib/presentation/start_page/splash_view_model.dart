import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/simple_store.dart';
import 'package:book_store/domain/repository/store_repository.dart';
import 'package:book_store/presentation/map_page/map_view_model.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';



class SplashViewModel with ChangeNotifier{

  StoreRepository repository;

  SplashViewModel(this.repository);

  List<SimpleStore> nearByList=[];

  Future<LatLong> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      return LatLong(position.latitude, position.longitude);
    } catch (e) {
      return LatLong(128, 38);
    }
  }

  Future<List<SimpleStore>> getNearByStores(CustomerInfoViewModel customerInfoViewModel) async {
    List<SimpleStore> nearByStores = await repository.getNearByStores(customerInfoViewModel.lat, customerInfoViewModel.long);
    nearByList=nearByStores;
    return nearByStores;
  }

}
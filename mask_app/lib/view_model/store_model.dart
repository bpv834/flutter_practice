import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mask_app/repository/location_repository.dart';
import 'package:mask_app/repository/store_repository.dart';
import '../model/store.dart';

//with는 mixin 기능을 구현하기 위한 키워드
class StoreModel with ChangeNotifier {
  final _storeRepository = StoreRepository();
  final _locationRepository = LocationRepository();

  // ignore: prefer_typing_uninitialized_variables
  List<Store> stores = [];
  bool isLoading = true;
  double? mylat;
  double? mylng;

  Future fetch() async {
    isLoading = true;
    //통지를 해야 반영됨
    notifyListeners();

    Position position = await _locationRepository.getCurrentLocation();
    mylat=position.latitude;
    mylng=position.longitude;
    // 현재 나의 위치 주소로 앱을 열고 리스트들을 받아 옴
    stores = await _storeRepository.fetch(
      position.latitude,
      position.longitude,
    );
    //통지를 해야 반영됨
    isLoading = false;
    notifyListeners();
  }
}

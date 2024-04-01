import 'package:di_mask_app/domain/model/loaction.dart';
import 'package:di_mask_app/domain/model/permission.dart';
import 'package:di_mask_app/domain/permission/location_permission_handler.dart';
import 'package:di_mask_app/domain/repository/store_repository.dart';
import 'package:injectable/injectable.dart';

import '../model/store.dart';
import '../repository/location_repository.dart';
@singleton
class GetNearByStoresUseCase {
  final StoreRepository _storeRepository;
  final LocationRepository _locationRepository;
  final LocationPermissionHandler _locationPermissionHandler;

  GetNearByStoresUseCase(
    this._storeRepository,
    this._locationPermissionHandler,
    this._locationRepository,
  );

  Future<List<Store>> execute() async {
    final stores = await _storeRepository.getStores();

    //기기의 위치 서비스 확인
    final isServiceEnabled =
        await _locationPermissionHandler.isLocationServiceEnabled();

    //권한 체크
    if (isServiceEnabled) {
      //요청 후 permission을 바꿔야 하기때문에 변수로 할당
      var permission = await _locationPermissionHandler.checkPermission();

      ////거부 -> 요청을 해야함
      if (permission == Permission.denied) {
        //요청
        permission = await _locationPermissionHandler.requestPermission();
        if(permission == Permission.denied){
          print('거부');
          //정렬되지 않은 스토어리스트 리턴
          return stores;
        }
      }

      ////2번거부 -> 정렬 없이 리턴
      if (permission == Permission.deniedForever) {
        print('2번 거부');
        return stores;
      }

      ////승인 -> 정렬 해서 리턴
      final location = await _locationRepository.getLocation();
      return stores.map((store) {
        return store.copyWith(
          distance: location.distanceBetween(
            Location(store.lat, store.lng),
          ),
        );
      }).toList()
        ..sort((a, b) => a.distance.compareTo(b.distance));
    }
    return [];
  }
}

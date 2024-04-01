import 'package:di_mask_app/domain/model/permission.dart';
import 'package:di_mask_app/domain/permission/location_permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: LocationPermissionHandler)
class LocationPermissionHandlerImpl implements LocationPermissionHandler{
  @override
  //Geolocator의 permission을 쓰면 geoLocator클래스와 의존성이 생기기때문에 내가 만든 Permission클래스로 리턴해주는 것
  Future<Permission> checkPermission() async{
    final LocationPermission permission = await Geolocator.checkPermission();

    return switch(permission){
      LocationPermission.denied || LocationPermission.unableToDetermine => Permission.denied,
      LocationPermission.deniedForever=>Permission.deniedForever,
      //위 두 경우 외 나머지 경우
      _=>Permission.always,
    };
  }

  @override
  Future<bool> isLocationServiceEnabled() async{
    //로케이션 서비스가 활성화 돼있는지 확인하는 코드
   return await Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<Permission> requestPermission() async{
    final LocationPermission permission = await Geolocator.requestPermission();

    return switch(permission){
      LocationPermission.denied || LocationPermission.unableToDetermine => Permission.denied,
      LocationPermission.deniedForever=>Permission.deniedForever,
    //위 두 경우 외 나머지 경우
      _=>Permission.always,
    };
  }

}
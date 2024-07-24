import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:new_mask/domain/model/permission.dart';
import 'package:new_mask/domain/permission/location_permission_handler.dart';

@prod
@Singleton(as:LocationPermissionHandler)
class LocationPermissionHandlerImpl implements LocationPermissionHandler{
  @override
  Future<Permission> checkPermission() async{
    //Geolocator클래스의 권한확인을 이용하여 우리가 만든 Permission enum 으로 리턴한다 Geolocator클래스와 엮이지 않기 위해서.
   final LocationPermission permission = await Geolocator.checkPermission();

   return switch(permission){
     //Geo의 권한을 받아서 우리가 만든 클래스의 권한으로 변경 의존성 제거를 위해
     LocationPermission.denied || LocationPermission.unableToDetermine => Permission.denied,
   LocationPermission.deniedForever => Permission.deniedForever,
   //위 두가지 경우를 제외한 나머지 경우 always 리턴
   _=> Permission.always,
   };
  }

  @override
  Future<bool> isLocationServiceEnabled() async{
    //true: 위치 서비스가 활성화되어 있음을 의미합니다.
    //false : 그 반대
   return await Geolocator.isLocationServiceEnabled();
  }

  //퍼미션 요청
  @override
  Future<Permission> requestPermission() async{
    //Geolocator클래스의 권한확인을 이용하여 우리가 만든 Permission enum 으로 리턴한다 Geolocator클래스와 엮이지 않기 위해서.
    final LocationPermission permission = await Geolocator.requestPermission();

    return switch(permission){
    //Geo의 권한을 받아서 우리가 만든 클래스의 권한으로 변경 의존성 제거를 위해
      LocationPermission.denied || LocationPermission.unableToDetermine => Permission.denied,
      LocationPermission.deniedForever => Permission.deniedForever,
    //위 두가지 경우를 제외한 나머지 경우 always 리턴
      _=> Permission.always,
    };
  }

}
import 'package:di_mask_app/domain/model/loaction.dart';
import 'package:di_mask_app/domain/repository/location_repository.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
@prod
@Singleton(as: LocationRepository)
class LocationRepositoryImpl implements LocationRepository{
  @override
  Future<Location> getLocation() async{
   final position = await Geolocator.getCurrentPosition(
     //감도 옶션
     desiredAccuracy: LocationAccuracy.high
   );
   print('현재위치@@@@@@@@@@@');
   print (position.toString());
   return Location(position.latitude, position.longitude);
  }

}
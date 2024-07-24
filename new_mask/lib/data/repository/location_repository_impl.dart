import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:new_mask/domain/model/location.dart';
import 'package:new_mask/domain/repository/location_repository.dart';

@prod
@Singleton(as: LocationRepository)
class LocationRepositoryImpl implements LocationRepository{
  @override
  Future<Location> getLocation() async{
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high
    );
    print('=======현재위치========');
    print(position.toString());
    return Location(position.latitude, position.longitude);

  }

}
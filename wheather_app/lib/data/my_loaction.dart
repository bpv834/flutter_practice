import 'package:geolocator/geolocator.dart';

class MyLoaction{
  double lat=0.0;
  double lon=0.0;

 Future<void> getMyCurrentLocation() async{
   try {
     Position position = await Geolocator.getCurrentPosition();
     lat=position.latitude;
     lon=position.longitude;
   } catch (e) {
     print('인터넷에 문제가 있음 ');
   }
  }

}
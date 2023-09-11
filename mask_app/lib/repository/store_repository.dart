import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';
import '../model/store.dart';

class StoreRepository {
  Future<List<Store>> fetch(double lat, double lng) async {
    final Distance distance = new Distance();

    // ignore: prefer_typing_uninitialized_variables
    List<Store> stores = [];
    var url =
        'https://gist.githubusercontent.com/junsuk5/bb7485d5f70974deee920b8f0cd1e2f0/'
        'raw/063f64d9b343120c2cb01a6555cf9b38761b1d94/sample.json?$lat&lng=$lng&m=5000';
    var response = await http.get(Uri.parse(url));
    final jsonResult = jsonDecode(response.body);
    final jsonStores = jsonResult['stores'];
    jsonStores.forEach((e) {
      final store = Store.fromJson(e);
      stores.add(store);
      // km = 423
      final double km = distance.as(LengthUnit.Kilometer, LatLng(lat, lng),
          LatLng(store.lat!, store.lng!));
      store.dist = km;
    });
    //결과를 얻고 싶을 때 ..sort() toList의 결과의 sort 객체가 리턴됨
    return stores
        .where((e) =>
            e.remainStat == 'plenty' ||
            e.remainStat == 'some' ||
            e.remainStat == 'few')
        .toList()
        ..sort((a,b)=>a.dist!.compareTo(b.dist as num));
  }
}

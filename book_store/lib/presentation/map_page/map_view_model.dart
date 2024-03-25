import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/repository/store_repository.dart';
import 'package:book_store/presentation/map_page/map_ui_event.dart';
import 'package:book_store/presentation/store_page/store_detail_page/store_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:provider/provider.dart';

import '../../domain/model/simple_store.dart';
import '../../domain/model/store_info.dart';

class MapViewModel with ChangeNotifier {
  StoreRepository repository;

  MapViewModel(this.repository);

  bool _clickMarker = false;
  int _radius = 30;
  List<SimpleStore> _nearList = [];
  SimpleStore _currentStore=const SimpleStore(id: null, name: null, category: null, address: null, imageUrl: null);

  void returnState() {
    _radius = 10;
    setClickMarker = false;
    _nearList = [];
  }


  void onEvent(MapUiEvent event, BuildContext context, NaverMapController? mapController,MapViewModel? mapViewModel ) {
    final customerViewModel = context.read<CustomerInfoViewModel>();
    event.when(
        clickMaka: (simpleStore) => setCurrentStore(simpleStore),
        clickContainer: (id) async {
          StoreInfo store = await repository.getStoreInfo(id);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StoreDetailScreen(storeDetail: store),
            ),
          );
        },
        switchRadius: (radius) =>
            switchList(customerViewModel.lat, customerViewModel.long, _radius, mapController!, mapViewModel!, context));
  }

  Future<void> switchList(double lat, double lng, int radius, NaverMapController? mapController, MapViewModel? mapViewModel, BuildContext? context) async {
    _nearList = await repository.getNearByStoresWithRadius(lat, lng, radius);
    notifyListeners();

    mapController!.clearOverlays();
    for (var nearStore in mapViewModel!.nearList) {
      final markerId = 'marker_${nearStore.id}'; // 고유한 마커 id 생성
      final marker = NMarker(
          id: markerId,
          position: NLatLng(nearStore.lat, nearStore.lng));
      mapController.addOverlay(marker);

      marker.setOnTapListener(
            (marker) {
          debugPrint(
              "markerTapped@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2");
          mapViewModel.setClickMarker = true;
          mapViewModel.currentStore!=nearStore;
          mapViewModel.onEvent(
            MapUiEvent.clickMaka(nearStore),
            context!,null,null
          );
        },
      );
      //마커위에 텍스트 띄우기
      final onMarkerInfoWindow = NInfoWindow.onMarker(
          id: marker.info.id, text: '${nearStore.name}');
      marker.openInfoWindow(onMarkerInfoWindow);
    }


  }

  bool get clickMarker => _clickMarker;

  int get radius => _radius;

  List<SimpleStore> get nearList => _nearList;

  SimpleStore get currentStore => _currentStore;

  setCurrentStore(SimpleStore value) {
    _currentStore = value;
    notifyListeners();
  }

  setRadius(int value) {
    _radius = value;
    notifyListeners();
  }

  setNearList(List<SimpleStore> value) {
    _nearList = value;
    notifyListeners();
  }

  set setClickMarker(bool value) {
    _clickMarker = value;
    notifyListeners();
  }
}

class LatLong {
  double lat;
  double long;

  LatLong(this.lat, this.long);
}

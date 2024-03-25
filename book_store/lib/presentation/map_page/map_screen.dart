import 'dart:async';

import 'package:book_store/presentation/map_page/components/button_for_control_radius.dart';
import 'package:book_store/presentation/map_page/components/near_store_box.dart';
import 'package:book_store/presentation/map_page/map_ui_event.dart';
import 'package:book_store/presentation/map_page/map_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:provider/provider.dart';

import '../../core/customer_info_view_model.dart';
import '../home_page/home_view_model.dart';
import '../nav_page/bottom_bar.dart';
import '../nav_page/nav_view_model.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // Completer는 Future 객체를 생성하고 해당 Future가 완료될 때 값을 제공하는 데 사용됩니다.
  final Completer<NaverMapController> mapControllerCompleter = Completer();
  late NaverMapController _mapController;
  double latitude = 0;
  double longitude = 0;

  Future<void> _init(BuildContext context) async {
    final mapViewModel = context.read<MapViewModel>();
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    await mapViewModel.switchList(
        customerInfoViewModel.lat, customerInfoViewModel.long, 10,null,null,null);
    _mapController = await mapControllerCompleter.future;
  }

  @override
  void initState() {
    super.initState();
    _init(context);
  }

  @override
  Widget build(BuildContext context) {
    final mapViewModel = context.watch<MapViewModel>();
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('주변보기: ${mapViewModel.nearList.length}'),
      ),
      body: Stack(
        children: [
          NaverMap(
            options: NaverMapViewOptions(
              initialCameraPosition: NCameraPosition(
                  target: NLatLng(
                      customerInfoViewModel.lat, customerInfoViewModel.long),
                  zoom: 10),
              mapType: NMapType.basic,
              activeLayerGroups: [NLayerGroup.building, NLayerGroup.transit],
            ),
            onMapReady: (controller) {
              _mapController = controller;
              mapControllerCompleter.complete(controller);

              const myMarkerId = 'myLocation';
              final myMarker = NMarker(
                iconTintColor: Colors.redAccent,
                id: myMarkerId,
                position: NLatLng(
                    customerInfoViewModel.lat, customerInfoViewModel.long),
              );
              _mapController.addOverlay(myMarker);

              //마커위에 텍스트 띄우기
              final onMyMarkerInfoWindow =
                  NInfoWindow.onMarker(id: myMarker.info.id, text: '내위치');
              myMarker.openInfoWindow(onMyMarkerInfoWindow);

              for (var nearStore in mapViewModel.nearList) {
                final markerId = 'marker_${nearStore.id}'; // 고유한 마커 id 생성
                final marker = NMarker(
                    id: markerId,
                    position: NLatLng(nearStore.lat, nearStore.lng));
                _mapController.addOverlay(marker);

                marker.setOnTapListener(
                  (marker) {
                    debugPrint(
                        "markerTapped@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
                    mapViewModel.setClickMarker = true;
                    mapViewModel.setCurrentStore(nearStore);
                    mapViewModel.onEvent(
                      MapUiEvent.clickMaka(nearStore),
                      context,null,null,
                    );
                  },
                );
                //마커위에 텍스트 띄우기
                final onMarkerInfoWindow = NInfoWindow.onMarker(
                    id: marker.info.id, text: '${nearStore.name}');
                marker.openInfoWindow(onMarkerInfoWindow);
              }
            },
            onMapTapped: (NPoint point, NLatLng latLng) {
              mapViewModel.setClickMarker = false;
            },
          ),
          Positioned(
            left: 0,
            //FutureBuilder를 사용하여 _mapController가 초기화될 때까지 대기하고, 초기화된 후에는 ButtonForControlRadius 위젯을 생성하도록 하였습니다.
            child: FutureBuilder<NaverMapController>(
              future: mapControllerCompleter.future,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    return Row(
                      children: [
                        ButtonForControlRadius(mapController: snapshot.data!, setRadius: 10),
                        ButtonForControlRadius(mapController: snapshot.data!, setRadius: 20),
                        ButtonForControlRadius(mapController: snapshot.data!, setRadius: 30),
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }
                }
                // _mapController가 초기화되지 않은 경우 로딩 표시 등을 반환할 수 있습니다.
                return const CircularProgressIndicator();
              },
            ),
          ),
          Positioned(
            right: 0,
            child: IconButton(
              onPressed: () {
                _mapController.updateCamera(
                  NCameraUpdate.scrollAndZoomTo(
                    target: NLatLng(
                        customerInfoViewModel.lat, customerInfoViewModel.long),
                  ),
                );
                mapViewModel.switchList(37, 126.97, 30,null,null,null);
              },
              icon: const Icon(Icons.my_location),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: customerInfoViewModel.screenHeight / 6,
              child: Visibility(
                visible: mapViewModel.clickMarker,
                child: GestureDetector(
                  onTap: () {
                 mapViewModel.onEvent(MapUiEvent.clickContainer(mapViewModel.currentStore.id!), context, null, null);
                  },
                  child: NearStoreBox(nearStore: mapViewModel.currentStore),
                ),
              ),
            ),
          ),
        ],
      ),
        bottomNavigationBar:const BottomBar(),
    );
  }
}

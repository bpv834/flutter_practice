import 'dart:async';
import 'dart:developer';

import 'package:book_store/presentation/map_page/map_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:provider/provider.dart';

import '../../core/customer_info_view_model.dart';
import '../home_page/home_view_model.dart';
import '../nav_page/nav_view_model.dart';
import 'map_view_model.dart';

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    final mapViewModel = context.watch<MapViewModel>();
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    final homeViewModel = context.read<HomeViewModel>();
    final navViewModel = context.read<NavViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('주변보기'),
      ),
      body: Stack(
        children: [
          Container(
              child: NaverMap(
            options: NaverMapViewOptions(
              initialCameraPosition: NCameraPosition(
                target: NLatLng(
                    customerInfoViewModel.lat, customerInfoViewModel.long),
                zoom: 15,
              ),
              mapType: NMapType.basic,
              activeLayerGroups: [NLayerGroup.building, NLayerGroup.transit],
            ),
            onMapReady: (controller) {
              _mapController = controller;
              mapControllerCompleter.complete(controller);
              debugPrint("네이버 맵 로딩됨!");
              debugPrint("Controller@@@: $_mapController");
              //List.asMap()은 리스트의 각 요소를 인덱스와 함께 제공하는 맵을 반환하는 메서드입니다.
              mapViewModel.latLongList.asMap().forEach((index, latLong) {
                final markerId = 'marker_$index'; // 고유한 마커 id 생성
                final marker = NMarker(
                  id: markerId,
                  position: NLatLng(latLong.lat, latLong.long),
                );
                _mapController.addOverlay(marker);
                marker.setOnTapListener(
                  (marker) {
                    debugPrint(
                        "markerTapped@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2");
                    mapViewModel.setClickMarker = true;
                  },
                );
                final onMarkerInfoWindow = NInfoWindow.onMarker(
                    id: marker.info.id, text: "${mapViewModel.mapId[index]}");
                marker.openInfoWindow(onMarkerInfoWindow);
              });
            },
            onMapTapped: (NPoint point, NLatLng latLng) {
              mapViewModel.setClickMarker = false;
            },
          )),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: customerInfoViewModel.screenHeight / 6,
              child: Visibility(
                visible: mapViewModel.clickMarker,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      //프로필 사진, 닉, 날짜
                      Container(
                        child: Row(
                          children: [
                            //프사
                            Container(
                              width: customerInfoViewModel.screenWidth / 3,
                              // 정사각형의 가로 길이
                              height: customerInfoViewModel.screenHeight / 8,
                              // 정사각형의 세로 길이
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // 테두리 색상 설정
                                  width: 1.0, // 테두리 두께 설정
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        'https://e1.pngegg.com/pngimages/487/453/png-clipart-iu-thumbnail.png')
                                    // 이미지 파일의 경로
                                    ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        '서점 이름 ',
                                        maxLines: 1,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          fontSize:
                                              customerInfoViewModel.screenHeight /
                                                  40,
                                        ),
                                      ),
                                      Text(
                                        '주소  ',
                                        maxLines: 1,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          fontSize:
                                          customerInfoViewModel.screenHeight /
                                              40,
                                        ),
                                      ),
                                      Text(
                                        '휴무일 :   ',
                                        maxLines: 1,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          fontSize:
                                          customerInfoViewModel.screenHeight /
                                              40,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //게시판 내용 텍스트
                    ],
                  ),
                  padding: EdgeInsets.all(8),
                  width: customerInfoViewModel.screenWidth,
                  height: customerInfoViewModel.screenHeight / 4,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: '게시판',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: '지도',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '나의 정보',
          ),
        ],
        currentIndex: homeViewModel.currentPage,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          // 탭할 때마다 페이지를 전환하도록 설정
          homeViewModel.setCurrentPage = index;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => navViewModel.getPageAtIndex(index),
            ),
          );
        },
      ),
    );
  }
}

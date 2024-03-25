import 'dart:async';

import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/book_mark_request_info.dart';
import 'package:book_store/domain/model/simple_store.dart';
import 'package:book_store/domain/model/store_info.dart';
import 'package:book_store/presentation/home_page/home_view_model.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_view_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../store_review_page/store_review_screen.dart';
import 'store_detail_view_model.dart';

class StoreDetailScreen extends StatelessWidget {
  StoreInfo storeDetail;

  StoreDetailScreen({required this.storeDetail, super.key});

  // Completer는 Future 객체를 생성하고 해당 Future가 완료될 때 값을 제공하는 데 사용됩니다.
  final Completer<NaverMapController> mapControllerCompleter = Completer();
  late NaverMapController _mapController;

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.watch<CustomerInfoViewModel>();
    final storeDetailViewModel = context.watch<StoreDetailViewModel>();
    final storeViewModel = context.watch<StoreViewModel>();
    storeDetailViewModel.setStoreInfo(storeDetail);

    SimpleStore clickedSimpleStore =
        storeViewModel.stores.where((e) => e.id == storeDetail.id).toList()[0];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        physics: storeDetailViewModel.isDraggingMap
            ? NeverScrollableScrollPhysics()
            : ClampingScrollPhysics(), // 스크롤뷰의 스크롤 동작 비활성화
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              // 서점 사진
              Container(
                height: customerInfoViewModel.screenHeight / 2, // 높이 조정
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), // 원하는 모양의 테두리
                  image: DecorationImage(
                    image: NetworkImage('${clickedSimpleStore.imageUrl}'),
                    fit: BoxFit.fill, // 이미지가 컨테이너를 채우도록 설정
                  ),
                ),
              ),

              // 서점 정보 및 북마크
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${storeDetail.name}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () async{
                                BookMarkRequestInfo requestInfo = BookMarkRequestInfo(userId: customerInfoViewModel.token, bookStoreId: storeDetail.id);
                                await storeDetailViewModel.shotBookMark(requestInfo);
                              },
                              icon: const Icon(Icons.bookmark),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StoreReviewScreen(
                                          boardId: storeDetail.id, storeName: '${storeDetail.name}',)),
                                );
                              },
                              icon: Icon(Icons.reviews),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // 서점 정보 리스트
              ListView(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildInfoRow(
                    Icons.call,
                    '${storeDetail.tel}',
                  ),
                  buildInfoRow(
                      FontAwesomeIcons.instagram, '${storeDetail.instagramId}'),
                  buildInfoRow(FontAwesomeIcons.clock,
                      '평일 : ${storeDetail.workdayTime}'),
                  buildInfoRow(
                      FontAwesomeIcons.clock, '토 : ${storeDetail.satTime}'),
                  buildInfoRow(FontAwesomeIcons.clock,
                      '일 : ${storeDetail.sunTime ?? '휴무'}'),
                  buildInfoRow(
                      FontAwesomeIcons.clock, '휴무일 :  ${storeDetail.rest}'),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '서점 특징 : ${storeDetail.optionExplain}',
                            maxLines: null,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '특이사항 : ${storeDetail.optionExplain}',
                            maxLines: null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text('블로그 리뷰')],
                ),
              ),
              Container(
                height: customerInfoViewModel.screenHeight / 3,
                child: ListView.builder(
                    itemCount: storeDetailViewModel.blogList.length,
                    itemBuilder: (BuildContext context, index) {
                      return GestureDetector(
                        onTap: () async {
                          storeDetailViewModel.launchUrl(
                              '${storeDetailViewModel.blogList[index].blogLink}');
                        },
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.grey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${storeDetailViewModel.blogList[index].blogTitle}',
                                  style: TextStyle(
                                    fontSize:
                                        customerInfoViewModel.screenHeight / 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '${storeDetailViewModel.blogList[index].blogContent}',
                                  style: TextStyle(
                                    fontSize:
                                        customerInfoViewModel.screenHeight / 60,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Column(
                children: [
                  Text('주소: ${storeDetail.address}'),
                  Container(
                    height: customerInfoViewModel.screenHeight / 2,
                    child: Container(
                        child: NaverMap(
                      options: NaverMapViewOptions(
                        initialCameraPosition: NCameraPosition(
                          target: NLatLng(storeDetailViewModel.lat!,
                              storeDetailViewModel.lng!),
                          zoom: 5,
                        ),
                        mapType: NMapType.basic,
                        activeLayerGroups: [
                          NLayerGroup.building,
                          NLayerGroup.transit
                        ],
                      ),
                      onMapReady: (controller) {
                        _mapController = controller;
                        mapControllerCompleter.complete(controller);
                        debugPrint("네이버 맵 로딩됨!");

                        final myMarkerId = 'myLocation';
                        final myMarker = NMarker(
                          iconTintColor: Colors.deepOrange,
                          id: myMarkerId,
                          position: NLatLng(customerInfoViewModel.lat,
                              customerInfoViewModel.long),
                        );
                        _mapController.addOverlay(myMarker);
                        // 고유한 마커 id 생성
                        final markerId = '${storeDetail.id}';
                        final marker = NMarker(
                          id: markerId,
                          position: NLatLng(storeDetailViewModel.lat!,
                              storeDetailViewModel.lng!),
                        );
                        _mapController.addOverlay(marker);
                        marker.setOnTapListener(
                          (marker) {
                            debugPrint(
                                "markerTapped@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2");
                            storeDetailViewModel.setClickMarker = true;
                          },
                        );
                        final onMarkerInfoWindow = NInfoWindow.onMarker(
                            id: markerId, text: "${storeDetail.name}");
                        marker.openInfoWindow(onMarkerInfoWindow);
                      },
                      onMapTapped: (NPoint point, NLatLng latLng) {
                        storeDetailViewModel.setClickMarker = false;
                      },
                    )),
                  ),
                  SizedBox(
                    height: customerInfoViewModel.screenHeight / 30,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(IconData iconData, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          Icon(iconData),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}

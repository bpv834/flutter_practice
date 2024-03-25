import 'dart:convert';

import 'package:book_store/data/data_source/post_api/shot_book_mark.dart';
import 'package:book_store/domain/model/blog_info.dart';
import 'package:book_store/domain/model/book_mark_request_info.dart';
import 'package:book_store/domain/repository/store_repository.dart';
import 'package:flutter/material.dart';

import '../../../domain/model/store_info.dart';
import '../../map_page/map_view_model.dart';
import 'package:url_launcher/url_launcher.dart';
class StoreDetailViewModel with ChangeNotifier {
  final StoreRepository repository;

  StoreDetailViewModel(this.repository);

  late StoreInfo _storeInfo;
  double? lat = 0.0;
  double? lng = 0.0;
  List<BlogInfo> blogList = [];
  bool _clickMarker = false;
  bool _isDraggingMap = false;

  StoreInfo get storeInfo => _storeInfo;

  bool get clickMarker => _clickMarker;

  Future<void> setStoreInfo(StoreInfo store) async {
    _storeInfo = store;
    //map객체 접근하는 방식
    final latLong =
        await repository.getLatLongFromAddress('${_storeInfo.address}');
    lat = latLong['latitude'];
    lng = latLong['longitude'];
    blogList = await repository.getBlogReview(store.id);
  }

  set setClickMarker(bool value) {
    _clickMarker = value;
    notifyListeners();
    print("clickMarker 값은 = ${_clickMarker}");
  }

  set storeInfo(StoreInfo value) {
    _storeInfo = value;
    notifyListeners();
  }

  bool get isDraggingMap => _isDraggingMap;

  setIsDraggingMap(bool value) {
    _isDraggingMap = value;
    notifyListeners();
  }

  Future<void> shotBookMark(BookMarkRequestInfo bookMarkRequestInfo)async{
    print('shotBookMark');
    ShotBookMark shotBookMark=ShotBookMark();
    shotBookMark.shotBookMark(bookMarkRequestInfo);

  }

// URL을 열기 위한 함수
  void launchUrl(String url) async {
    if(await canLaunch(url)){
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }
}

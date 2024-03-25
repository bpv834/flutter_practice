import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/best_board_info.dart';
import 'package:book_store/domain/model/simple_store.dart';
import 'package:book_store/domain/repository/board_repository.dart';
import 'package:book_store/domain/repository/store_repository.dart';
import 'package:book_store/presentation/home_page/home_event.dart';
import 'package:book_store/presentation/map_page/map_view_model.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_screen.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_view_model.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:provider/provider.dart';

import '../../util/distance_calculator.dart';

class HomeViewModel with ChangeNotifier {
  final StoreRepository storeRepository;
  final BoardRepository boardRepository;

  List<SimpleStore> stores = [];
  List<BestBoardInfo> bestBoardList=[];

  bool isLoading = true;

  HomeViewModel({required this.storeRepository, required this.boardRepository}) {
    print('homeViewModel');
    _loadSimpleStores('');
    isLoading = false;
    notifyListeners();
  }

  var _currentPage = 0;

  get currentPage => _currentPage;

  set setCurrentPage(int value) {
    _currentPage = value;
    notifyListeners();
  }

  //지역 전체
  Future<void> _loadSimpleStores(String? query) async {
    print('_loadSimpleStores');
    isLoading = true;
    stores = await storeRepository.getStores(query);
    isLoading = false;
    notifyListeners();
  }

  //지역 전체
  Future<void> getBestBoardList() async {
    print('loadBestBoardList');
    bestBoardList = await boardRepository.getBestBoardList();
    notifyListeners();
  }

  void closeToken() async {
    try {
      await UserApi.instance.unlink();
      print('연결 끊기 성공, SDK에서 토큰 삭제');
    } catch (error) {
      print('연결 끊기 실패 $error');
    }
  }


  void onEvent(HomeEvent event) {
    event.when(byRegion: (byRegion) {
      byRegion.when(all: () {
        _loadSimpleStores('');
      }, lookByRegion: (query) {
        _loadSimpleStores(query);
      });
    }, nearbyStore: (nearStoreList, BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => StoreViewScreen(simpleStores: nearStoreList,)),
      );
    });
  }
}

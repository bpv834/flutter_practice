import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/simple_store.dart';
import 'package:book_store/domain/model/store_info.dart';
import 'package:book_store/domain/repository/store_repository.dart';
import 'package:book_store/presentation/start_page/splash_view_model.dart';
import 'package:book_store/presentation/store_page/store_detail_page/store_detail_screen.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_event.dart';
import 'package:flutter/material.dart';

class StoreViewModel with ChangeNotifier {
  String? regionTagName = '';
  String barTagName = '지역별 서점';
  bool isLoading = false;
  bool isNearBy = false;
  String? regionName = '';

  final StoreRepository repository;

  StoreViewModel(this.repository) {
    loadSimpleStores('');
  }

  List<SimpleStore> stores = [];
  List<SimpleStore> nearByStores = [];

  void onEvent(StoreEvent event, BuildContext context) {
    event.when(
      touchTile: (id) async {
        print('ID : $id');
        StoreInfo store = await repository.getStoreInfo(id);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => StoreDetailScreen(storeDetail: store)),
        );
      },
      searchStore: (query, customerViewModel, splashViewModel) async {
        List<SimpleStore> filteredStores = await getSimpleStore(query,customerViewModel,splashViewModel);
        stores.clear();
        stores.addAll(filteredStores);
        notifyListeners();
      },
      refresh: (query) => loadSimpleStores(query),
    );
  }

  Future<List<SimpleStore>> getSimpleStore(String query, SplashViewModel? splashViewModel, CustomerInfoViewModel? customerInfoViewModel) async {
    if(isNearBy){
      stores=await splashViewModel!.getNearByStores(customerInfoViewModel!);
      List<SimpleStore> filteredStores;
      filteredStores =
          stores.where((store) => store.name!.contains(query)).toList();
      return filteredStores;
    }
    else{
      await loadSimpleStores(regionName);
      List<SimpleStore> filteredStores;
      filteredStores =
          stores.where((store) => store.name!.contains(query)).toList();
      return filteredStores;
    }
  }
  void setIsNearBy(value){
    print('valuse : $value');
    isNearBy=value;
    notifyListeners();
  }

  //지역 전체
  Future<void> loadSimpleStores(String? query) async {
    stores.clear();
    isLoading = true;
    notifyListeners();
    if (isNearBy) {
      stores.addAll(nearByStores);
    } else {
      stores = await repository.getStores(query);
      isLoading = false;
      isNearBy=false;
      notifyListeners();
    }

  }
}
import 'package:flutter/foundation.dart';
import 'package:mask_app/repository/store_repository.dart';
import '';
import '../model/store.dart';

//with는 mixin 기능을 구현하기 위한 키워드
class StoreModel with ChangeNotifier {
  final _storeRepository = StoreRepository();

  // ignore: prefer_typing_uninitialized_variables
  List<Store> stores = [];
  bool isLoading=true;
  Future fetch() async {
    isLoading=true;
    //통지를 해야 반영됨
    notifyListeners();
    stores = await _storeRepository.fetch();
    //통지를 해야 반영됨
    isLoading=false;
    notifyListeners();
  }

  storeModel() {
    fetch();
  }
}

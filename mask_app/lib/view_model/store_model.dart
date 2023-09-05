import 'package:flutter/foundation.dart';
import 'package:mask_app/repository/store_repository.dart';
import '';
import '../model/store.dart';

//with는 mixin 기능을 구현하기 위한 키워드
class StoreModel with ChangeNotifier {
  final _storeRepository = StoreRepository();
  // ignore: prefer_typing_uninitialized_variables
  List<Store> stores = [];
  var _start = true;
  var size;

  bool get getStart{
    return _start;
  }
  Future fetch() async{
    _start =true;
    stores = await _storeRepository.fetch();
    _start = false;
    notifyListeners();
  }
  storeModel() async{
     fetch();
  }
}
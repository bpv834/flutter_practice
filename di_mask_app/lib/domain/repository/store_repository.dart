import '../model/store.dart';

abstract class StoreRepository{
  Future<List<Store>> getStores();
}
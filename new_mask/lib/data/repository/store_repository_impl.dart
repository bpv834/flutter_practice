import 'package:injectable/injectable.dart';
import 'package:new_mask/data/data_source/store_api.dart';
import 'package:new_mask/domain/model/store.dart';
import 'package:new_mask/domain/repository/store_repository.dart';

@prod
@Singleton(as: StoreRepository)
class StoreRepositoryImpl implements StoreRepository {
  final _api = StoreApi();

  @override
  Future<List<Store>> getStores() async {
    //api 는 Dto로 변환
    final result = await _api.getStoreResult();
    if (result.stores == null) {
      return [];
    }

    return result.stores!
        .where((e) {
          return e.remainStat !=null && e.stockAt != null;
        })
    //dto에서 정상적인 store만을 찾아서 map함수로 store로 변환
        .map(
          (e) => Store(
              name: e.name ?? '이름없음',
              address: e.addr ?? '주소없음',
              lat: e.lat ?? 0,
              lng: e.lng ?? 0,
              remainStatus: e.remainStat!),
        )
    // 정상 store만을 모은 리스트로 변환
        .toList();
  }
}

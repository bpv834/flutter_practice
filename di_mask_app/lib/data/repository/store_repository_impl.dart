import 'package:di_mask_app/data/data_source/store_api.dart';
import 'package:di_mask_app/domain/model/store.dart';
import 'package:di_mask_app/domain/repository/store_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@Singleton(as: StoreRepository)
class StoreRepositoryImpl implements StoreRepository {
  final _api = StoreApi();

  @override
  Future<List<Store>> getStores() async {
    final result = await _api.getStoreResult();

    if (result.stores!.isEmpty) {
      return [];
    }
    return result.stores!
        .where((nullableStore) {
          return nullableStore.remainStat != null &&
              nullableStore.stockAt != null;
        })
        .map((store) => Store(
              name: store.name ?? '이름 없음',
              address: store.addr ?? '주소 없음',
              lat: store.lat ?? 0,
              lng: store.lng ?? 0,
              distance: 0,
              remainStat: store.remainStat!,
            ))
        .toList();
  }
}

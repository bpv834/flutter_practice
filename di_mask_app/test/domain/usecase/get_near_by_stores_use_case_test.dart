import 'package:di_mask_app/data/mock_datas.dart';
import 'package:di_mask_app/domain/usecase/get_near_by_stores_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final useCase = GetNearByStoresUseCase(
    MockStoreRepositoryImpl(),
    MockLocationPermissionHandler(),
    MockLocationRepositoryImpl(),
  );
  test('약국 정보가 가까운 순서대로 오름차순 정렬돼야 함', () async {
    final stores =await useCase.execute();

    expect(stores[0].name, '수원약국');
    expect(stores[1].name, '안양약국');
    expect(stores[2].name, '평택약국');

  });
}

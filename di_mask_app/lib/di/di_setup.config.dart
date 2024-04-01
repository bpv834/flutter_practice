// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:di_mask_app/data/mock_datas.dart' as _i4;
import 'package:di_mask_app/data/permission/location_permission_handler_impl.dart'
    as _i5;
import 'package:di_mask_app/data/repository/location_repository_impl.dart'
    as _i7;
import 'package:di_mask_app/data/repository/store_repository_impl.dart' as _i9;
import 'package:di_mask_app/domain/permission/location_permission_handler.dart'
    as _i3;
import 'package:di_mask_app/domain/repository/location_repository.dart' as _i6;
import 'package:di_mask_app/domain/repository/store_repository.dart' as _i8;
import 'package:di_mask_app/domain/usecase/get_near_by_stores_use_case.dart'
    as _i10;
import 'package:di_mask_app/presentation/main_view_model.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.LocationPermissionHandler>(
      () => _i4.MockLocationPermissionHandler(),
      registerFor: {_dev},
    );
    gh.singleton<_i3.LocationPermissionHandler>(
        () => _i5.LocationPermissionHandlerImpl());
    gh.singleton<_i6.LocationRepository>(
      () => _i4.MockLocationRepositoryImpl(),
      registerFor: {_dev},
    );
    gh.singleton<_i6.LocationRepository>(
      () => _i7.LocationRepositoryImpl(),
      registerFor: {_prod},
    );
    gh.singleton<_i8.StoreRepository>(
      () => _i4.MockStoreRepositoryImpl(),
      registerFor: {_dev},
    );
    gh.singleton<_i8.StoreRepository>(
      () => _i9.StoreRepositoryImpl(),
      registerFor: {_prod},
    );
    gh.singleton<_i10.GetNearByStoresUseCase>(() => _i10.GetNearByStoresUseCase(
          gh<_i8.StoreRepository>(),
          gh<_i3.LocationPermissionHandler>(),
          gh<_i6.LocationRepository>(),
        ));
    gh.factory<_i11.MainViewModel>(
        () => _i11.MainViewModel(gh<_i10.GetNearByStoresUseCase>()));
    return this;
  }
}

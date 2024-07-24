// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:new_mask/data/permission/location_permission_handler_impl.dart'
    as _i958;
import 'package:new_mask/data/repository/location_repository_impl.dart'
    as _i859;
import 'package:new_mask/data/repository/mock_datas.dart' as _i341;
import 'package:new_mask/data/repository/store_repository_impl.dart' as _i173;
import 'package:new_mask/domain/permission/location_permission_handler.dart'
    as _i194;
import 'package:new_mask/domain/repository/location_repository.dart' as _i468;
import 'package:new_mask/domain/repository/store_repository.dart' as _i62;
import 'package:new_mask/domain/usecase/get_near_by_stores_use_case.dart'
    as _i714;
import 'package:new_mask/presentation/main_view_model.dart' as _i17;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i62.StoreRepository>(
      () => _i341.MockStoreRepositoryImpl(),
      registerFor: {_dev},
    );
    gh.singleton<_i468.LocationRepository>(
      () => _i341.MockLocationRepositoryImpl(),
      registerFor: {_dev},
    );
    gh.singleton<_i194.LocationPermissionHandler>(
      () => _i341.MockLocationPermissionHandler(),
      registerFor: {_dev},
    );
    gh.singleton<_i194.LocationPermissionHandler>(
      () => _i958.LocationPermissionHandlerImpl(),
      registerFor: {_prod},
    );
    gh.singleton<_i62.StoreRepository>(
      () => _i173.StoreRepositoryImpl(),
      registerFor: {_prod},
    );
    gh.singleton<_i468.LocationRepository>(
      () => _i859.LocationRepositoryImpl(),
      registerFor: {_prod},
    );
    gh.singleton<_i714.GetNearByStoresUseCase>(
        () => _i714.GetNearByStoresUseCase(
              storeRepository: gh<_i62.StoreRepository>(),
              locationRepository: gh<_i468.LocationRepository>(),
              locationPermissionHandler: gh<_i194.LocationPermissionHandler>(),
            ));
    gh.factory<_i17.MainViewModel>(
        () => _i17.MainViewModel(gh<_i714.GetNearByStoresUseCase>()));
    return this;
  }
}

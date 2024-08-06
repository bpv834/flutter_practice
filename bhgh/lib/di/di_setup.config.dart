// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bhgh/data/repository/tiles_repository_impl.dart' as _i719;
import 'package:bhgh/data/repository/user_repository_impl.dart' as _i284;
import 'package:bhgh/domain/repository/tiles_repository.dart' as _i1072;
import 'package:bhgh/domain/repository/user_repository.dart' as _i241;
import 'package:bhgh/domain/usecase/get_user_asc_use_case.dart' as _i467;
import 'package:bhgh/domain/usecase/get_user_tiles_asc_use_case.dart' as _i336;
import 'package:bhgh/presentation/home_page/home_view_model.dart' as _i209;
import 'package:bhgh/presentation/login_page/login_view_model.dart' as _i566;
import 'package:bhgh/presentation/sign_up_page/sign_up_view_model.dart'
    as _i157;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

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
    gh.factory<_i566.LoginViewModel>(() => _i566.LoginViewModel());
    gh.factory<_i157.SignUpViewModel>(() => _i157.SignUpViewModel());
    gh.singleton<_i1072.TilesRepository>(() => _i719.TilesRepositoryImpl());
    gh.singleton<_i241.UserRepository>(() => _i284.UserRepositoryImpl());
    gh.singleton<_i336.GetUserTilesAscUseCase>(
        () => _i336.GetUserTilesAscUseCase(gh<_i1072.TilesRepository>()));
    gh.singleton<_i467.GetUserAscUseCase>(
        () => _i467.GetUserAscUseCase(gh<_i241.UserRepository>()));
    gh.factory<_i209.HomeViewModel>(() => _i209.HomeViewModel(
          gh<_i467.GetUserAscUseCase>(),
          gh<_i336.GetUserTilesAscUseCase>(),
        ));
    return this;
  }
}

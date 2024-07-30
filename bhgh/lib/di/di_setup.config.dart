// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
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
    return this;
  }
}

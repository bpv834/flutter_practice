import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'di_setup.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init(environment: Environment.prod);
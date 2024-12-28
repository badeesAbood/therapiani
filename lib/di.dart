import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:therapiani/di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies(String env) => getIt.init(environment: env);

abstract class Environment {
  static const dev = 'dev';
  static const prod = 'prod';
  static const test = 'test';
}

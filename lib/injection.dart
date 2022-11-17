import 'package:chatapp/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjectable(String env) {
  $initGetIt(getIt, environment: env);
}

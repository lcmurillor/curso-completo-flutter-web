import 'package:bases_web/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocation() {
  locator.registerLazySingleton(() => NavigationService());
}

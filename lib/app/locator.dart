import 'package:get_it/get_it.dart';
import 'package:produtech/app/app.gr.dart';
import 'package:produtech/services/navigation.dart';

final locator = GetIt.instance;

// Registering all services here
void registerSetup() {
  locator.registerLazySingleton<AppRouter>(
    () => AppRouter(),
  );
  locator.registerLazySingleton<NavigationService>(
    () => NavigationService(),
  );
}

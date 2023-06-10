part of 'main_injector.dart';

Future<void> configureServiceInjector() async {
  di.registerLazySingleton(() => ApiService());
  di.registerLazySingleton(() => InternetConnectionChecker());
  di.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(dataConnectionChecker: di()),
  );
}

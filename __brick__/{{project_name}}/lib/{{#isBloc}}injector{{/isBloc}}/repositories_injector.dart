part of 'main_injector.dart';

Future<void> configureRepositoriesInjector() async {
  di.registerLazySingleton<ProductRepositories>(
    () => ProductRepositoriesImpl(
      remoteDataSource: di(),
      networkInfo: di(),
    ),
  );
}

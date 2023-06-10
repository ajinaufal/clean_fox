part of 'main_injector.dart';

Future<void> configureDataSourceInjector() async {
  di.registerLazySingleton<ProductRemoteDataSource>(
    () => ProductRemoteDataSourceImpl(apiService: di()),
  );
}

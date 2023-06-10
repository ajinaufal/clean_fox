part of 'main_injector.dart';


Future<void> configureRepositoriesInjector() async {
  final networkInfo = NetworkInfoImpl(
    dataConnectionChecker: InternetConnectionChecker(),
  );
  final productRemoteDataSource =
      Get.find<ProductRemoteDataSource>(tag: 'ProductRemoteDataSource');

  Get.create<ProductRepositories>(
    () => ProductRepositoriesImpl(
      networkInfo: networkInfo,
      remoteDataSource: productRemoteDataSource,
    ),
    tag: 'ProductRepositories',
  );
}

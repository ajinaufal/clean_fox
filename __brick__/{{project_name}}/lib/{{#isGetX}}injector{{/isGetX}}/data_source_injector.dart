part of 'main_injector.dart';

Future<void> configureDataSourceInjector() async {
  final apiService = Get.find<ApiService>(tag: 'ApiService');

  Get.create<ProductRemoteDataSource>(
    () => ProductRemoteDataSourceImpl(apiService: apiService),
    tag: 'ProductRemoteDataSource',
  );
}

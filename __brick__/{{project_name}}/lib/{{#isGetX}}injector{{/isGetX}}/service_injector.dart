part of 'main_injector.dart';

Future<void> configureServiceInjector() async {
  Get.create<ApiService>(() => ApiService(), tag: 'ApiService');
}

part of 'main_injector.dart';

Future<void> configureGetxInjector() async {
  Get.create(
    () => ListProductNotifier(),
    tag: 'ListProductNotifier',
  ); 
}

part of 'main_injector.dart';

Future<void> configureBlocInjector() async {
  di.registerFactory(() => ListProductBloc(repositories: di()));
}

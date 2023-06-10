import 'package:{{project_name}}/core/data/data.dart';
import 'package:{{project_name}}/core/domain/domain.dart';
import 'package:{{project_name}}/core/helpers/network_helper.dart';
import 'package:{{project_name}}/core/services/api_services.dart';
import 'package:{{project_name}}/feature/feature.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:get_it/get_it.dart';

part 'data_source_injector.dart';
part 'repositories_injector.dart';
part 'service_injector.dart';
part 'bloc_injector.dart';
part 'database_injector.dart';

final di = GetIt.instance;

class MainInjector {
  static Future<void> init() async {
    await configureBlocInjector();
    await configureDataSourceInjector();
    await configureRepositoriesInjector();
    await configureServiceInjector();
    await configureDataBaseInjector();
  }
}

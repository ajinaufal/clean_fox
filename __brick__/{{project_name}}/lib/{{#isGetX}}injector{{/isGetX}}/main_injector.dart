import 'package:{{project_name}}/core/data/data.dart';
import 'package:{{project_name}}/core/domain/domain.dart';
import 'package:{{project_name}}/core/helpers/network_helper.dart';
import 'package:{{project_name}}/core/services/api_services.dart';
import 'package:{{project_name}}/feature/feature.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'data_source_injector.dart';
part 'repositories_injector.dart';
part 'service_injector.dart';
part 'getx_injector.dart';
part 'database_injector.dart';

class MainInjector {
  static Future<void> init() async {
    await configureServiceInjector();
    await configureDataSourceInjector();
    await configureRepositoriesInjector();
    await configureGetxInjector();
    await configureDataBaseInjector();
  }
}

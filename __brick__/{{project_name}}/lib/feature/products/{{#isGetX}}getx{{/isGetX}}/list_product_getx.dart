import 'package:{{project_name}}/core/domain/domain.dart';
import 'package:{{project_name}}/core/state/app_state.dart';
import 'package:get/get.dart';

class ListProductNotifier extends GetxController {
  var state = const AppStates<ListProductEntity>.loading().obs;

  Future<void> getListProduct({String? search}) async {
    final repositories =
        Get.find<ProductRepositories>(tag: 'ProductRepositories');
    final response = await repositories.getProduct();
    state.value = response.fold(
      (failure) => AppStates<ListProductEntity>.error(failure),
      (products) => AppStates<ListProductEntity>.success(products),
    );
  }
}

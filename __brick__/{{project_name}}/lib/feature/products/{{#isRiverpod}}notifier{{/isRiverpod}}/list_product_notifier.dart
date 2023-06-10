import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{project_name}}/core/data/data.dart';
import 'package:{{project_name}}/core/domain/domain.dart';
import 'package:{{project_name}}/core/state/app_state.dart';

class ListProductNotifier extends StateNotifier<AppStates<ListProductEntity>> {
  ListProductNotifier({
    required this.repository,
  }) : super(const AppStates.loading());

  final ProductRepositories repository;

  Future<void> getListProduct({String? search}) async {
    final response = await repository.getProduct();
    final updateState = response.fold(
      (failure) => AppStates<ListProductEntity>.error(failure),
      (products) => AppStates<ListProductEntity>.success(products),
    );

    if (mounted) state = updateState;
  }
}

final listProductNotifierProvider =
    StateNotifierProvider<ListProductNotifier, AppStates<ListProductEntity>>(
  (Ref ref) {
    final listProductNotifier = ref.read(productRepositoryProvider);
    return ListProductNotifier(repository: listProductNotifier);
  },
);

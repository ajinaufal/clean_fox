import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{project_name}}/core/domain/domain.dart';
import 'package:{{project_name}}/core/state/app_state.dart';

part 'list_product_event.dart';

class ListProductBloc extends Bloc<ListProductEvent, AppStates> {
  ListProductBloc({
    required this.repositories,
  }) : super(const AppStates.initial()) {
    on<ListProductStarted>(_onListProductStarted);
  }

  final ProductRepositories repositories;

  Future<void> _onListProductStarted(ListProductStarted event, Emitter<AppStates> emit,) async {
    emit(const AppStates.loading());
    final response = await repositories.getProduct();
    final updateState = response.fold(
      (failure) => AppStates<ListProductEntity>.error(failure),
      (products) => AppStates<ListProductEntity>.success(products),
    );

    emit(updateState);
  }
}
part of 'list_product_bloc.dart';

abstract class ListProductEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ListProductStarted extends ListProductEvent {
  ListProductStarted();

  @override
  List<Object?> get props => [];
}

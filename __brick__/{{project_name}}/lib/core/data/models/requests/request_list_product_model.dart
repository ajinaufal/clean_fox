import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_list_product_model.freezed.dart';
part 'request_list_product_model.g.dart';

@freezed
class RequestListProductModel with _$RequestListProductModel {
  const factory RequestListProductModel({
    String? queri,
    int? limit,
    int? skip,
    String? select,
  }) = _RequestListProductModel;

  factory RequestListProductModel.fromJson(Map<String, dynamic> json) =>
      _$RequestListProductModelFromJson(json);
}

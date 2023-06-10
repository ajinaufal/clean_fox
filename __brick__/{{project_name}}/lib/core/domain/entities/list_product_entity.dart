import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_product_entity.freezed.dart';

@freezed
class ListProductEntity with _$ListProductEntity {
  const factory ListProductEntity({
    List<ProductEntity>? products,
    int? total,
    int? skip,
    int? limit,
  }) = _ListProductEntity;
}

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    int? id,
    String? title,
    String? description,
    int? price,
    double? discountPercentage,
    double? rating,
    int? stock,
    String? brand,
    String? category,
    String? thumbnail,
    List<String>? images,
  }) = _ProductEntity;
}

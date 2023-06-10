import 'package:{{project_name}}/core/domain/entities/list_product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_product_model.freezed.dart';
part 'list_product_model.g.dart';

@freezed
class ListProductModel with _$ListProductModel {
  const factory ListProductModel({
    List<ProductModel>? products,
    int? total,
    int? skip,
    int? limit,
  }) = _ListProductModel;

  factory ListProductModel.fromJson(Map<String, dynamic> json) =>
      _$ListProductModelFromJson(json);
}

extension ListProductModelX on ListProductModel {
  ListProductEntity toEntity() {
    return ListProductEntity(
      products: products?.map((product) => product.toEntity()).toList(),
      total: total,
      skip: skip,
      limit: limit,
    );
  }
}

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
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
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

extension ProductModelX on ProductModel {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      title: title,
      description: description,
      price: price,
      discountPercentage: discountPercentage,
      rating: rating,
      stock: stock,
      brand: brand,
      category: category,
      thumbnail: thumbnail,
      images: images,
    );
  }
}

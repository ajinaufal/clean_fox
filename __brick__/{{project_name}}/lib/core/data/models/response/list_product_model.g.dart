// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListProductModel _$$_ListProductModelFromJson(Map<String, dynamic> json) =>
    _$_ListProductModel(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      skip: json['skip'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$_ListProductModelToJson(_$_ListProductModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('products', instance.products);
  writeNotNull('total', instance.total);
  writeNotNull('skip', instance.skip);
  writeNotNull('limit', instance.limit);
  return val;
}

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int?,
      discountPercentage: (json['discount_percentage'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      stock: json['stock'] as int?,
      brand: json['brand'] as String?,
      category: json['category'] as String?,
      thumbnail: json['thumbnail'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('price', instance.price);
  writeNotNull('discount_percentage', instance.discountPercentage);
  writeNotNull('rating', instance.rating);
  writeNotNull('stock', instance.stock);
  writeNotNull('brand', instance.brand);
  writeNotNull('category', instance.category);
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('images', instance.images);
  return val;
}

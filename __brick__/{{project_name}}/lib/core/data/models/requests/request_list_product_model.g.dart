// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_list_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestListProductModel _$$_RequestListProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_RequestListProductModel(
      queri: json['queri'] as String?,
      limit: json['limit'] as int?,
      skip: json['skip'] as int?,
      select: json['select'] as String?,
    );

Map<String, dynamic> _$$_RequestListProductModelToJson(
    _$_RequestListProductModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('queri', instance.queri);
  writeNotNull('limit', instance.limit);
  writeNotNull('skip', instance.skip);
  writeNotNull('select', instance.select);
  return val;
}

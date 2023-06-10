// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_list_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestListProductModel _$RequestListProductModelFromJson(
    Map<String, dynamic> json) {
  return _RequestListProductModel.fromJson(json);
}

/// @nodoc
mixin _$RequestListProductModel {
  String? get queri => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  String? get select => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestListProductModelCopyWith<RequestListProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestListProductModelCopyWith<$Res> {
  factory $RequestListProductModelCopyWith(RequestListProductModel value,
          $Res Function(RequestListProductModel) then) =
      _$RequestListProductModelCopyWithImpl<$Res, RequestListProductModel>;
  @useResult
  $Res call({String? queri, int? limit, int? skip, String? select});
}

/// @nodoc
class _$RequestListProductModelCopyWithImpl<$Res,
        $Val extends RequestListProductModel>
    implements $RequestListProductModelCopyWith<$Res> {
  _$RequestListProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queri = freezed,
    Object? limit = freezed,
    Object? skip = freezed,
    Object? select = freezed,
  }) {
    return _then(_value.copyWith(
      queri: freezed == queri
          ? _value.queri
          : queri // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      select: freezed == select
          ? _value.select
          : select // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestListProductModelCopyWith<$Res>
    implements $RequestListProductModelCopyWith<$Res> {
  factory _$$_RequestListProductModelCopyWith(_$_RequestListProductModel value,
          $Res Function(_$_RequestListProductModel) then) =
      __$$_RequestListProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? queri, int? limit, int? skip, String? select});
}

/// @nodoc
class __$$_RequestListProductModelCopyWithImpl<$Res>
    extends _$RequestListProductModelCopyWithImpl<$Res,
        _$_RequestListProductModel>
    implements _$$_RequestListProductModelCopyWith<$Res> {
  __$$_RequestListProductModelCopyWithImpl(_$_RequestListProductModel _value,
      $Res Function(_$_RequestListProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queri = freezed,
    Object? limit = freezed,
    Object? skip = freezed,
    Object? select = freezed,
  }) {
    return _then(_$_RequestListProductModel(
      queri: freezed == queri
          ? _value.queri
          : queri // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      select: freezed == select
          ? _value.select
          : select // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestListProductModel implements _RequestListProductModel {
  const _$_RequestListProductModel(
      {this.queri, this.limit, this.skip, this.select});

  factory _$_RequestListProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestListProductModelFromJson(json);

  @override
  final String? queri;
  @override
  final int? limit;
  @override
  final int? skip;
  @override
  final String? select;

  @override
  String toString() {
    return 'RequestListProductModel(queri: $queri, limit: $limit, skip: $skip, select: $select)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestListProductModel &&
            (identical(other.queri, queri) || other.queri == queri) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.select, select) || other.select == select));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, queri, limit, skip, select);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestListProductModelCopyWith<_$_RequestListProductModel>
      get copyWith =>
          __$$_RequestListProductModelCopyWithImpl<_$_RequestListProductModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestListProductModelToJson(
      this,
    );
  }
}

abstract class _RequestListProductModel implements RequestListProductModel {
  const factory _RequestListProductModel(
      {final String? queri,
      final int? limit,
      final int? skip,
      final String? select}) = _$_RequestListProductModel;

  factory _RequestListProductModel.fromJson(Map<String, dynamic> json) =
      _$_RequestListProductModel.fromJson;

  @override
  String? get queri;
  @override
  int? get limit;
  @override
  int? get skip;
  @override
  String? get select;
  @override
  @JsonKey(ignore: true)
  _$$_RequestListProductModelCopyWith<_$_RequestListProductModel>
      get copyWith => throw _privateConstructorUsedError;
}

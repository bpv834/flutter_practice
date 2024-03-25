// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimpleStore _$SimpleStoreFromJson(Map<String, dynamic> json) {
  return _SimpleStore.fromJson(json);
}

/// @nodoc
mixin _$SimpleStore {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double get lng => throw _privateConstructorUsedError;
  double get dist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimpleStoreCopyWith<SimpleStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleStoreCopyWith<$Res> {
  factory $SimpleStoreCopyWith(
          SimpleStore value, $Res Function(SimpleStore) then) =
      _$SimpleStoreCopyWithImpl<$Res, SimpleStore>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? category,
      String? address,
      @JsonKey(name: 'image') String? imageUrl,
      @JsonKey(name: 'latitude') double lat,
      @JsonKey(name: 'longitude') double lng,
      double dist});
}

/// @nodoc
class _$SimpleStoreCopyWithImpl<$Res, $Val extends SimpleStore>
    implements $SimpleStoreCopyWith<$Res> {
  _$SimpleStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? address = freezed,
    Object? imageUrl = freezed,
    Object? lat = null,
    Object? lng = null,
    Object? dist = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      dist: null == dist
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleStoreImplCopyWith<$Res>
    implements $SimpleStoreCopyWith<$Res> {
  factory _$$SimpleStoreImplCopyWith(
          _$SimpleStoreImpl value, $Res Function(_$SimpleStoreImpl) then) =
      __$$SimpleStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? category,
      String? address,
      @JsonKey(name: 'image') String? imageUrl,
      @JsonKey(name: 'latitude') double lat,
      @JsonKey(name: 'longitude') double lng,
      double dist});
}

/// @nodoc
class __$$SimpleStoreImplCopyWithImpl<$Res>
    extends _$SimpleStoreCopyWithImpl<$Res, _$SimpleStoreImpl>
    implements _$$SimpleStoreImplCopyWith<$Res> {
  __$$SimpleStoreImplCopyWithImpl(
      _$SimpleStoreImpl _value, $Res Function(_$SimpleStoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? address = freezed,
    Object? imageUrl = freezed,
    Object? lat = null,
    Object? lng = null,
    Object? dist = null,
  }) {
    return _then(_$SimpleStoreImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      dist: null == dist
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleStoreImpl with DiagnosticableTreeMixin implements _SimpleStore {
  const _$SimpleStoreImpl(
      {required this.id,
      required this.name ,
      required this.category ,
      required this.address ,
      @JsonKey(name: 'image') required this.imageUrl,
      @JsonKey(name: 'latitude') this.lat = 0.0,
      @JsonKey(name: 'longitude') this.lng = 0.0,
      this.dist = 0.0});

  factory _$SimpleStoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleStoreImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? category;
  @override
  @JsonKey()
  final String? address;
  @override
  @JsonKey(name: 'image')
  final String? imageUrl;
  @override
  @JsonKey(name: 'latitude')
  final double lat;
  @override
  @JsonKey(name: 'longitude')
  final double lng;
  @override
  @JsonKey()
  final double dist;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SimpleStore(id: $id, name: $name, category: $category, address: $address, imageUrl: $imageUrl, lat: $lat, lng: $lng, dist: $dist)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SimpleStore'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng))
      ..add(DiagnosticsProperty('dist', dist));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleStoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.dist, dist) || other.dist == dist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, category, address, imageUrl, lat, lng, dist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleStoreImplCopyWith<_$SimpleStoreImpl> get copyWith =>
      __$$SimpleStoreImplCopyWithImpl<_$SimpleStoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleStoreImplToJson(
      this,
    );
  }
}

abstract class _SimpleStore implements SimpleStore {
  const factory _SimpleStore(
      {required final int? id,
      required final String? name,
      required final String? category,
      required final String? address,
      @JsonKey(name: 'image') required final String? imageUrl,
      @JsonKey(name: 'latitude') final double lat,
      @JsonKey(name: 'longitude') final double lng,
      final double dist}) = _$SimpleStoreImpl;

  factory _SimpleStore.fromJson(Map<String, dynamic> json) =
      _$SimpleStoreImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get category;
  @override
  String? get address;
  @override
  @JsonKey(name: 'image')
  String? get imageUrl;
  @override
  @JsonKey(name: 'latitude')
  double get lat;
  @override
  @JsonKey(name: 'longitude')
  double get lng;
  @override
  double get dist;
  @override
  @JsonKey(ignore: true)
  _$$SimpleStoreImplCopyWith<_$SimpleStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

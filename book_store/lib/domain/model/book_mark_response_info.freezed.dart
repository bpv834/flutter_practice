// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_mark_response_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookMarkResponseInfo _$BookMarkResponseInfoFromJson(Map<String, dynamic> json) {
  return _BookMarkResponseInfo.fromJson(json);
}

/// @nodoc
mixin _$BookMarkResponseInfo {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookMarkResponseInfoCopyWith<BookMarkResponseInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookMarkResponseInfoCopyWith<$Res> {
  factory $BookMarkResponseInfoCopyWith(BookMarkResponseInfo value,
          $Res Function(BookMarkResponseInfo) then) =
      _$BookMarkResponseInfoCopyWithImpl<$Res, BookMarkResponseInfo>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? category,
      String? address,
      String? image});
}

/// @nodoc
class _$BookMarkResponseInfoCopyWithImpl<$Res,
        $Val extends BookMarkResponseInfo>
    implements $BookMarkResponseInfoCopyWith<$Res> {
  _$BookMarkResponseInfoCopyWithImpl(this._value, this._then);

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
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookMarkResponseInfoImplCopyWith<$Res>
    implements $BookMarkResponseInfoCopyWith<$Res> {
  factory _$$BookMarkResponseInfoImplCopyWith(_$BookMarkResponseInfoImpl value,
          $Res Function(_$BookMarkResponseInfoImpl) then) =
      __$$BookMarkResponseInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? category,
      String? address,
      String? image});
}

/// @nodoc
class __$$BookMarkResponseInfoImplCopyWithImpl<$Res>
    extends _$BookMarkResponseInfoCopyWithImpl<$Res, _$BookMarkResponseInfoImpl>
    implements _$$BookMarkResponseInfoImplCopyWith<$Res> {
  __$$BookMarkResponseInfoImplCopyWithImpl(_$BookMarkResponseInfoImpl _value,
      $Res Function(_$BookMarkResponseInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? address = freezed,
    Object? image = freezed,
  }) {
    return _then(_$BookMarkResponseInfoImpl(
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookMarkResponseInfoImpl
    with DiagnosticableTreeMixin
    implements _BookMarkResponseInfo {
  const _$BookMarkResponseInfoImpl(
      {required this.id,
      required this.name,
      required this.category,
      required this.address,
      required this.image});

  factory _$BookMarkResponseInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookMarkResponseInfoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? category;
  @override
  final String? address;
  @override
  final String? image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookMarkResponseInfo(id: $id, name: $name, category: $category, address: $address, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookMarkResponseInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookMarkResponseInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, category, address, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookMarkResponseInfoImplCopyWith<_$BookMarkResponseInfoImpl>
      get copyWith =>
          __$$BookMarkResponseInfoImplCopyWithImpl<_$BookMarkResponseInfoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookMarkResponseInfoImplToJson(
      this,
    );
  }
}

abstract class _BookMarkResponseInfo implements BookMarkResponseInfo {
  const factory _BookMarkResponseInfo(
      {required final int? id,
      required final String? name,
      required final String? category,
      required final String? address,
      required final String? image}) = _$BookMarkResponseInfoImpl;

  factory _BookMarkResponseInfo.fromJson(Map<String, dynamic> json) =
      _$BookMarkResponseInfoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get category;
  @override
  String? get address;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$BookMarkResponseInfoImplCopyWith<_$BookMarkResponseInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

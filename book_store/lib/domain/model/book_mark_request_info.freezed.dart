// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_mark_request_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookMarkRequestInfo _$BookMarkRequestInfoFromJson(Map<String, dynamic> json) {
  return _BookMarkRequestInfo.fromJson(json);
}

/// @nodoc
mixin _$BookMarkRequestInfo {
  int? get userId => throw _privateConstructorUsedError;
  int? get bookStoreId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookMarkRequestInfoCopyWith<BookMarkRequestInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookMarkRequestInfoCopyWith<$Res> {
  factory $BookMarkRequestInfoCopyWith(
          BookMarkRequestInfo value, $Res Function(BookMarkRequestInfo) then) =
      _$BookMarkRequestInfoCopyWithImpl<$Res, BookMarkRequestInfo>;
  @useResult
  $Res call({int? userId, int? bookStoreId});
}

/// @nodoc
class _$BookMarkRequestInfoCopyWithImpl<$Res, $Val extends BookMarkRequestInfo>
    implements $BookMarkRequestInfoCopyWith<$Res> {
  _$BookMarkRequestInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? bookStoreId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      bookStoreId: freezed == bookStoreId
          ? _value.bookStoreId
          : bookStoreId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookMarkRequestInfoImplCopyWith<$Res>
    implements $BookMarkRequestInfoCopyWith<$Res> {
  factory _$$BookMarkRequestInfoImplCopyWith(_$BookMarkRequestInfoImpl value,
          $Res Function(_$BookMarkRequestInfoImpl) then) =
      __$$BookMarkRequestInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? userId, int? bookStoreId});
}

/// @nodoc
class __$$BookMarkRequestInfoImplCopyWithImpl<$Res>
    extends _$BookMarkRequestInfoCopyWithImpl<$Res, _$BookMarkRequestInfoImpl>
    implements _$$BookMarkRequestInfoImplCopyWith<$Res> {
  __$$BookMarkRequestInfoImplCopyWithImpl(_$BookMarkRequestInfoImpl _value,
      $Res Function(_$BookMarkRequestInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? bookStoreId = freezed,
  }) {
    return _then(_$BookMarkRequestInfoImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      bookStoreId: freezed == bookStoreId
          ? _value.bookStoreId
          : bookStoreId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookMarkRequestInfoImpl
    with DiagnosticableTreeMixin
    implements _BookMarkRequestInfo {
  const _$BookMarkRequestInfoImpl(
      {required this.userId, required this.bookStoreId});

  factory _$BookMarkRequestInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookMarkRequestInfoImplFromJson(json);

  @override
  final int? userId;
  @override
  final int? bookStoreId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookMarkRequestInfo(userId: $userId, bookStoreId: $bookStoreId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookMarkRequestInfo'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('bookStoreId', bookStoreId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookMarkRequestInfoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookStoreId, bookStoreId) ||
                other.bookStoreId == bookStoreId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, bookStoreId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookMarkRequestInfoImplCopyWith<_$BookMarkRequestInfoImpl> get copyWith =>
      __$$BookMarkRequestInfoImplCopyWithImpl<_$BookMarkRequestInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookMarkRequestInfoImplToJson(
      this,
    );
  }
}

abstract class _BookMarkRequestInfo implements BookMarkRequestInfo {
  const factory _BookMarkRequestInfo(
      {required final int? userId,
      required final int? bookStoreId}) = _$BookMarkRequestInfoImpl;

  factory _BookMarkRequestInfo.fromJson(Map<String, dynamic> json) =
      _$BookMarkRequestInfoImpl.fromJson;

  @override
  int? get userId;
  @override
  int? get bookStoreId;
  @override
  @JsonKey(ignore: true)
  _$$BookMarkRequestInfoImplCopyWith<_$BookMarkRequestInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

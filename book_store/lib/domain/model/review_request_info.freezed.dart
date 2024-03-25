// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_request_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewRequestInfo _$ReviewRequestInfoFromJson(Map<String, dynamic> json) {
  return _ReviewRequestInfo.fromJson(json);
}

/// @nodoc
mixin _$ReviewRequestInfo {
  String? get content => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get bookStoreId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewRequestInfoCopyWith<ReviewRequestInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewRequestInfoCopyWith<$Res> {
  factory $ReviewRequestInfoCopyWith(
          ReviewRequestInfo value, $Res Function(ReviewRequestInfo) then) =
      _$ReviewRequestInfoCopyWithImpl<$Res, ReviewRequestInfo>;
  @useResult
  $Res call({String? content, String? image, int? userId, int? bookStoreId});
}

/// @nodoc
class _$ReviewRequestInfoCopyWithImpl<$Res, $Val extends ReviewRequestInfo>
    implements $ReviewRequestInfoCopyWith<$Res> {
  _$ReviewRequestInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? image = freezed,
    Object? userId = freezed,
    Object? bookStoreId = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ReviewRequestInfoImplCopyWith<$Res>
    implements $ReviewRequestInfoCopyWith<$Res> {
  factory _$$ReviewRequestInfoImplCopyWith(_$ReviewRequestInfoImpl value,
          $Res Function(_$ReviewRequestInfoImpl) then) =
      __$$ReviewRequestInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? content, String? image, int? userId, int? bookStoreId});
}

/// @nodoc
class __$$ReviewRequestInfoImplCopyWithImpl<$Res>
    extends _$ReviewRequestInfoCopyWithImpl<$Res, _$ReviewRequestInfoImpl>
    implements _$$ReviewRequestInfoImplCopyWith<$Res> {
  __$$ReviewRequestInfoImplCopyWithImpl(_$ReviewRequestInfoImpl _value,
      $Res Function(_$ReviewRequestInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? image = freezed,
    Object? userId = freezed,
    Object? bookStoreId = freezed,
  }) {
    return _then(_$ReviewRequestInfoImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ReviewRequestInfoImpl
    with DiagnosticableTreeMixin
    implements _ReviewRequestInfo {
  const _$ReviewRequestInfoImpl(
      {required this.content,
      required this.image,
      required this.userId,
      required this.bookStoreId});

  factory _$ReviewRequestInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewRequestInfoImplFromJson(json);

  @override
  final String? content;
  @override
  final String? image;
  @override
  final int? userId;
  @override
  final int? bookStoreId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewRequestInfo(content: $content, image: $image, userId: $userId, bookStoreId: $bookStoreId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewRequestInfo'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('bookStoreId', bookStoreId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewRequestInfoImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookStoreId, bookStoreId) ||
                other.bookStoreId == bookStoreId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, content, image, userId, bookStoreId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewRequestInfoImplCopyWith<_$ReviewRequestInfoImpl> get copyWith =>
      __$$ReviewRequestInfoImplCopyWithImpl<_$ReviewRequestInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewRequestInfoImplToJson(
      this,
    );
  }
}

abstract class _ReviewRequestInfo implements ReviewRequestInfo {
  const factory _ReviewRequestInfo(
      {required final String? content,
      required final String? image,
      required final int? userId,
      required final int? bookStoreId}) = _$ReviewRequestInfoImpl;

  factory _ReviewRequestInfo.fromJson(Map<String, dynamic> json) =
      _$ReviewRequestInfoImpl.fromJson;

  @override
  String? get content;
  @override
  String? get image;
  @override
  int? get userId;
  @override
  int? get bookStoreId;
  @override
  @JsonKey(ignore: true)
  _$$ReviewRequestInfoImplCopyWith<_$ReviewRequestInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

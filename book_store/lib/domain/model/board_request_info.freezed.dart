// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_request_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoardRequestInfo _$BoardRequestInfoFromJson(Map<String, dynamic> json) {
  return _BoardRequestInfo.fromJson(json);
}

/// @nodoc
mixin _$BoardRequestInfo {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get replyCount => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardRequestInfoCopyWith<BoardRequestInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardRequestInfoCopyWith<$Res> {
  factory $BoardRequestInfoCopyWith(
          BoardRequestInfo value, $Res Function(BoardRequestInfo) then) =
      _$BoardRequestInfoCopyWithImpl<$Res, BoardRequestInfo>;
  @useResult
  $Res call(
      {String title,
      String content,
      String? image,
      int likeCount,
      int replyCount,
      int userId});
}

/// @nodoc
class _$BoardRequestInfoCopyWithImpl<$Res, $Val extends BoardRequestInfo>
    implements $BoardRequestInfoCopyWith<$Res> {
  _$BoardRequestInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? image = freezed,
    Object? likeCount = null,
    Object? replyCount = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardRequestInfoImplCopyWith<$Res>
    implements $BoardRequestInfoCopyWith<$Res> {
  factory _$$BoardRequestInfoImplCopyWith(_$BoardRequestInfoImpl value,
          $Res Function(_$BoardRequestInfoImpl) then) =
      __$$BoardRequestInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      String? image,
      int likeCount,
      int replyCount,
      int userId});
}

/// @nodoc
class __$$BoardRequestInfoImplCopyWithImpl<$Res>
    extends _$BoardRequestInfoCopyWithImpl<$Res, _$BoardRequestInfoImpl>
    implements _$$BoardRequestInfoImplCopyWith<$Res> {
  __$$BoardRequestInfoImplCopyWithImpl(_$BoardRequestInfoImpl _value,
      $Res Function(_$BoardRequestInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? image = freezed,
    Object? likeCount = null,
    Object? replyCount = null,
    Object? userId = null,
  }) {
    return _then(_$BoardRequestInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardRequestInfoImpl
    with DiagnosticableTreeMixin
    implements _BoardRequestInfo {
  const _$BoardRequestInfoImpl(
      {required this.title,
      required this.content,
      required this.image,
      required this.likeCount,
      required this.replyCount,
      required this.userId});

  factory _$BoardRequestInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardRequestInfoImplFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final String? image;
  @override
  final int likeCount;
  @override
  final int replyCount;
  @override
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardRequestInfo(title: $title, content: $content, image: $image, likeCount: $likeCount, replyCount: $replyCount, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardRequestInfo'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('likeCount', likeCount))
      ..add(DiagnosticsProperty('replyCount', replyCount))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardRequestInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, content, image, likeCount, replyCount, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardRequestInfoImplCopyWith<_$BoardRequestInfoImpl> get copyWith =>
      __$$BoardRequestInfoImplCopyWithImpl<_$BoardRequestInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardRequestInfoImplToJson(
      this,
    );
  }
}

abstract class _BoardRequestInfo implements BoardRequestInfo {
  const factory _BoardRequestInfo(
      {required final String title,
      required final String content,
      required final String? image,
      required final int likeCount,
      required final int replyCount,
      required final int userId}) = _$BoardRequestInfoImpl;

  factory _BoardRequestInfo.fromJson(Map<String, dynamic> json) =
      _$BoardRequestInfoImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  String? get image;
  @override
  int get likeCount;
  @override
  int get replyCount;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$BoardRequestInfoImplCopyWith<_$BoardRequestInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

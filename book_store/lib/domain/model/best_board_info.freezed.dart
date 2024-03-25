// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'best_board_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BestBoardInfo _$BestBoardInfoFromJson(Map<String, dynamic> json) {
  return _BestBoardInfo.fromJson(json);
}

/// @nodoc
mixin _$BestBoardInfo {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get replyCount => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestBoardInfoCopyWith<BestBoardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestBoardInfoCopyWith<$Res> {
  factory $BestBoardInfoCopyWith(
          BestBoardInfo value, $Res Function(BestBoardInfo) then) =
      _$BestBoardInfoCopyWithImpl<$Res, BestBoardInfo>;
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      int likeCount,
      int replyCount,
      String nickname});
}

/// @nodoc
class _$BestBoardInfoCopyWithImpl<$Res, $Val extends BestBoardInfo>
    implements $BestBoardInfoCopyWith<$Res> {
  _$BestBoardInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? likeCount = null,
    Object? replyCount = null,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestBoardInfoImplCopyWith<$Res>
    implements $BestBoardInfoCopyWith<$Res> {
  factory _$$BestBoardInfoImplCopyWith(
          _$BestBoardInfoImpl value, $Res Function(_$BestBoardInfoImpl) then) =
      __$$BestBoardInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      int likeCount,
      int replyCount,
      String nickname});
}

/// @nodoc
class __$$BestBoardInfoImplCopyWithImpl<$Res>
    extends _$BestBoardInfoCopyWithImpl<$Res, _$BestBoardInfoImpl>
    implements _$$BestBoardInfoImplCopyWith<$Res> {
  __$$BestBoardInfoImplCopyWithImpl(
      _$BestBoardInfoImpl _value, $Res Function(_$BestBoardInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? likeCount = null,
    Object? replyCount = null,
    Object? nickname = null,
  }) {
    return _then(_$BestBoardInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BestBoardInfoImpl
    with DiagnosticableTreeMixin
    implements _BestBoardInfo {
  const _$BestBoardInfoImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.likeCount,
      required this.replyCount,
      required this.nickname});

  factory _$BestBoardInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestBoardInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final int likeCount;
  @override
  final int replyCount;
  @override
  final String nickname;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BestBoardInfo(id: $id, title: $title, content: $content, likeCount: $likeCount, replyCount: $replyCount, nickname: $nickname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BestBoardInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('likeCount', likeCount))
      ..add(DiagnosticsProperty('replyCount', replyCount))
      ..add(DiagnosticsProperty('nickname', nickname));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestBoardInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, content, likeCount, replyCount, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestBoardInfoImplCopyWith<_$BestBoardInfoImpl> get copyWith =>
      __$$BestBoardInfoImplCopyWithImpl<_$BestBoardInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestBoardInfoImplToJson(
      this,
    );
  }
}

abstract class _BestBoardInfo implements BestBoardInfo {
  const factory _BestBoardInfo(
      {required final int id,
      required final String title,
      required final String content,
      required final int likeCount,
      required final int replyCount,
      required final String nickname}) = _$BestBoardInfoImpl;

  factory _BestBoardInfo.fromJson(Map<String, dynamic> json) =
      _$BestBoardInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  int get likeCount;
  @override
  int get replyCount;
  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$BestBoardInfoImplCopyWith<_$BestBoardInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

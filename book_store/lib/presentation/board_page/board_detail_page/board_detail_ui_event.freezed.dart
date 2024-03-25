// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_detail_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoardDetailUiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HeartInfo heartInfo) likeTap,
    required TResult Function(
            ReplyInfo replyInfo, int boardId, int userId, String content)
        writeReply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartInfo heartInfo)? likeTap,
    TResult? Function(
            ReplyInfo replyInfo, int boardId, int userId, String content)?
        writeReply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartInfo heartInfo)? likeTap,
    TResult Function(
            ReplyInfo replyInfo, int boardId, int userId, String content)?
        writeReply,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeTap value) likeTap,
    required TResult Function(WriteReply value) writeReply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeTap value)? likeTap,
    TResult? Function(WriteReply value)? writeReply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeTap value)? likeTap,
    TResult Function(WriteReply value)? writeReply,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardDetailUiEventCopyWith<$Res> {
  factory $BoardDetailUiEventCopyWith(
          BoardDetailUiEvent value, $Res Function(BoardDetailUiEvent) then) =
      _$BoardDetailUiEventCopyWithImpl<$Res, BoardDetailUiEvent>;
}

/// @nodoc
class _$BoardDetailUiEventCopyWithImpl<$Res, $Val extends BoardDetailUiEvent>
    implements $BoardDetailUiEventCopyWith<$Res> {
  _$BoardDetailUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LikeTapImplCopyWith<$Res> {
  factory _$$LikeTapImplCopyWith(
          _$LikeTapImpl value, $Res Function(_$LikeTapImpl) then) =
      __$$LikeTapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HeartInfo heartInfo});

  $HeartInfoCopyWith<$Res> get heartInfo;
}

/// @nodoc
class __$$LikeTapImplCopyWithImpl<$Res>
    extends _$BoardDetailUiEventCopyWithImpl<$Res, _$LikeTapImpl>
    implements _$$LikeTapImplCopyWith<$Res> {
  __$$LikeTapImplCopyWithImpl(
      _$LikeTapImpl _value, $Res Function(_$LikeTapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heartInfo = null,
  }) {
    return _then(_$LikeTapImpl(
      heartInfo: null == heartInfo
          ? _value.heartInfo
          : heartInfo // ignore: cast_nullable_to_non_nullable
              as HeartInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HeartInfoCopyWith<$Res> get heartInfo {
    return $HeartInfoCopyWith<$Res>(_value.heartInfo, (value) {
      return _then(_value.copyWith(heartInfo: value));
    });
  }
}

/// @nodoc

class _$LikeTapImpl with DiagnosticableTreeMixin implements LikeTap {
  const _$LikeTapImpl({required this.heartInfo});

  @override
  final HeartInfo heartInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardDetailUiEvent.likeTap(heartInfo: $heartInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardDetailUiEvent.likeTap'))
      ..add(DiagnosticsProperty('heartInfo', heartInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeTapImpl &&
            (identical(other.heartInfo, heartInfo) ||
                other.heartInfo == heartInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, heartInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeTapImplCopyWith<_$LikeTapImpl> get copyWith =>
      __$$LikeTapImplCopyWithImpl<_$LikeTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HeartInfo heartInfo) likeTap,
    required TResult Function(
            ReplyInfo replyInfo, int boardId, int userId, String content)
        writeReply,
  }) {
    return likeTap(heartInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartInfo heartInfo)? likeTap,
    TResult? Function(
            ReplyInfo replyInfo, int boardId, int userId, String content)?
        writeReply,
  }) {
    return likeTap?.call(heartInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartInfo heartInfo)? likeTap,
    TResult Function(
            ReplyInfo replyInfo, int boardId, int userId, String content)?
        writeReply,
    required TResult orElse(),
  }) {
    if (likeTap != null) {
      return likeTap(heartInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeTap value) likeTap,
    required TResult Function(WriteReply value) writeReply,
  }) {
    return likeTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeTap value)? likeTap,
    TResult? Function(WriteReply value)? writeReply,
  }) {
    return likeTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeTap value)? likeTap,
    TResult Function(WriteReply value)? writeReply,
    required TResult orElse(),
  }) {
    if (likeTap != null) {
      return likeTap(this);
    }
    return orElse();
  }
}

abstract class LikeTap implements BoardDetailUiEvent {
  const factory LikeTap({required final HeartInfo heartInfo}) = _$LikeTapImpl;

  HeartInfo get heartInfo;
  @JsonKey(ignore: true)
  _$$LikeTapImplCopyWith<_$LikeTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WriteReplyImplCopyWith<$Res> {
  factory _$$WriteReplyImplCopyWith(
          _$WriteReplyImpl value, $Res Function(_$WriteReplyImpl) then) =
      __$$WriteReplyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReplyInfo replyInfo, int boardId, int userId, String content});

  $ReplyInfoCopyWith<$Res> get replyInfo;
}

/// @nodoc
class __$$WriteReplyImplCopyWithImpl<$Res>
    extends _$BoardDetailUiEventCopyWithImpl<$Res, _$WriteReplyImpl>
    implements _$$WriteReplyImplCopyWith<$Res> {
  __$$WriteReplyImplCopyWithImpl(
      _$WriteReplyImpl _value, $Res Function(_$WriteReplyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyInfo = null,
    Object? boardId = null,
    Object? userId = null,
    Object? content = null,
  }) {
    return _then(_$WriteReplyImpl(
      replyInfo: null == replyInfo
          ? _value.replyInfo
          : replyInfo // ignore: cast_nullable_to_non_nullable
              as ReplyInfo,
      boardId: null == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ReplyInfoCopyWith<$Res> get replyInfo {
    return $ReplyInfoCopyWith<$Res>(_value.replyInfo, (value) {
      return _then(_value.copyWith(replyInfo: value));
    });
  }
}

/// @nodoc

class _$WriteReplyImpl with DiagnosticableTreeMixin implements WriteReply {
  const _$WriteReplyImpl(
      {required this.replyInfo,
      required this.boardId,
      required this.userId,
      required this.content});

  @override
  final ReplyInfo replyInfo;
  @override
  final int boardId;
  @override
  final int userId;
  @override
  final String content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardDetailUiEvent.writeReply(replyInfo: $replyInfo, boardId: $boardId, userId: $userId, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardDetailUiEvent.writeReply'))
      ..add(DiagnosticsProperty('replyInfo', replyInfo))
      ..add(DiagnosticsProperty('boardId', boardId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteReplyImpl &&
            (identical(other.replyInfo, replyInfo) ||
                other.replyInfo == replyInfo) &&
            (identical(other.boardId, boardId) || other.boardId == boardId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, replyInfo, boardId, userId, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteReplyImplCopyWith<_$WriteReplyImpl> get copyWith =>
      __$$WriteReplyImplCopyWithImpl<_$WriteReplyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HeartInfo heartInfo) likeTap,
    required TResult Function(
            ReplyInfo replyInfo, int boardId, int userId, String content)
        writeReply,
  }) {
    return writeReply(replyInfo, boardId, userId, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartInfo heartInfo)? likeTap,
    TResult? Function(
            ReplyInfo replyInfo, int boardId, int userId, String content)?
        writeReply,
  }) {
    return writeReply?.call(replyInfo, boardId, userId, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartInfo heartInfo)? likeTap,
    TResult Function(
            ReplyInfo replyInfo, int boardId, int userId, String content)?
        writeReply,
    required TResult orElse(),
  }) {
    if (writeReply != null) {
      return writeReply(replyInfo, boardId, userId, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeTap value) likeTap,
    required TResult Function(WriteReply value) writeReply,
  }) {
    return writeReply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeTap value)? likeTap,
    TResult? Function(WriteReply value)? writeReply,
  }) {
    return writeReply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeTap value)? likeTap,
    TResult Function(WriteReply value)? writeReply,
    required TResult orElse(),
  }) {
    if (writeReply != null) {
      return writeReply(this);
    }
    return orElse();
  }
}

abstract class WriteReply implements BoardDetailUiEvent {
  const factory WriteReply(
      {required final ReplyInfo replyInfo,
      required final int boardId,
      required final int userId,
      required final String content}) = _$WriteReplyImpl;

  ReplyInfo get replyInfo;
  int get boardId;
  int get userId;
  String get content;
  @JsonKey(ignore: true)
  _$$WriteReplyImplCopyWith<_$WriteReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

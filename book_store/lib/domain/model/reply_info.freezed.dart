// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyInfo _$ReplyInfoFromJson(Map<String, dynamic> json) {
  return _ReplyInfo.fromJson(json);
}

/// @nodoc
mixin _$ReplyInfo {
  @JsonKey(name: 'id')
  int? get replyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get replyContent => throw _privateConstructorUsedError;
  String? get createdDate => throw _privateConstructorUsedError;
  String? get modifiedDate => throw _privateConstructorUsedError;
  int get boardId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyInfoCopyWith<ReplyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyInfoCopyWith<$Res> {
  factory $ReplyInfoCopyWith(ReplyInfo value, $Res Function(ReplyInfo) then) =
      _$ReplyInfoCopyWithImpl<$Res, ReplyInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? replyId,
      @JsonKey(name: 'content') String replyContent,
      String? createdDate,
      String? modifiedDate,
      int boardId,
      int userId});
}

/// @nodoc
class _$ReplyInfoCopyWithImpl<$Res, $Val extends ReplyInfo>
    implements $ReplyInfoCopyWith<$Res> {
  _$ReplyInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = freezed,
    Object? replyContent = null,
    Object? createdDate = freezed,
    Object? modifiedDate = freezed,
    Object? boardId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyContent: null == replyContent
          ? _value.replyContent
          : replyContent // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedDate: freezed == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      boardId: null == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyInfoImplCopyWith<$Res>
    implements $ReplyInfoCopyWith<$Res> {
  factory _$$ReplyInfoImplCopyWith(
          _$ReplyInfoImpl value, $Res Function(_$ReplyInfoImpl) then) =
      __$$ReplyInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? replyId,
      @JsonKey(name: 'content') String replyContent,
      String? createdDate,
      String? modifiedDate,
      int boardId,
      int userId});
}

/// @nodoc
class __$$ReplyInfoImplCopyWithImpl<$Res>
    extends _$ReplyInfoCopyWithImpl<$Res, _$ReplyInfoImpl>
    implements _$$ReplyInfoImplCopyWith<$Res> {
  __$$ReplyInfoImplCopyWithImpl(
      _$ReplyInfoImpl _value, $Res Function(_$ReplyInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = freezed,
    Object? replyContent = null,
    Object? createdDate = freezed,
    Object? modifiedDate = freezed,
    Object? boardId = null,
    Object? userId = null,
  }) {
    return _then(_$ReplyInfoImpl(
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyContent: null == replyContent
          ? _value.replyContent
          : replyContent // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedDate: freezed == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      boardId: null == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
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
class _$ReplyInfoImpl with DiagnosticableTreeMixin implements _ReplyInfo {
  const _$ReplyInfoImpl(
      {@JsonKey(name: 'id') this.replyId,
      @JsonKey(name: 'content') required this.replyContent,
      this.createdDate,
      this.modifiedDate,
      required this.boardId,
      required this.userId});

  factory _$ReplyInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyInfoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? replyId;
  @override
  @JsonKey(name: 'content')
  final String replyContent;
  @override
  final String? createdDate;
  @override
  final String? modifiedDate;
  @override
  final int boardId;
  @override
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReplyInfo(replyId: $replyId, replyContent: $replyContent, createdDate: $createdDate, modifiedDate: $modifiedDate, boardId: $boardId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReplyInfo'))
      ..add(DiagnosticsProperty('replyId', replyId))
      ..add(DiagnosticsProperty('replyContent', replyContent))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('modifiedDate', modifiedDate))
      ..add(DiagnosticsProperty('boardId', boardId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyInfoImpl &&
            (identical(other.replyId, replyId) || other.replyId == replyId) &&
            (identical(other.replyContent, replyContent) ||
                other.replyContent == replyContent) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.modifiedDate, modifiedDate) ||
                other.modifiedDate == modifiedDate) &&
            (identical(other.boardId, boardId) || other.boardId == boardId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, replyId, replyContent,
      createdDate, modifiedDate, boardId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyInfoImplCopyWith<_$ReplyInfoImpl> get copyWith =>
      __$$ReplyInfoImplCopyWithImpl<_$ReplyInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyInfoImplToJson(
      this,
    );
  }
}

abstract class _ReplyInfo implements ReplyInfo {
  const factory _ReplyInfo(
      {@JsonKey(name: 'id') final int? replyId,
      @JsonKey(name: 'content') required final String replyContent,
      final String? createdDate,
      final String? modifiedDate,
      required final int boardId,
      required final int userId}) = _$ReplyInfoImpl;

  factory _ReplyInfo.fromJson(Map<String, dynamic> json) =
      _$ReplyInfoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get replyId;
  @override
  @JsonKey(name: 'content')
  String get replyContent;
  @override
  String? get createdDate;
  @override
  String? get modifiedDate;
  @override
  int get boardId;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$ReplyInfoImplCopyWith<_$ReplyInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

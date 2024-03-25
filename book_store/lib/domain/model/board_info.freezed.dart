// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoardInfo _$BoardInfoFromJson(Map<String, dynamic> json) {
  return _BoardInfo.fromJson(json);
}

/// @nodoc
mixin _$BoardInfo {
  @JsonKey(name: 'id')
  int? get boardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get boardTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get boardContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get boardImage => throw _privateConstructorUsedError;
  int? get likeCount => throw _privateConstructorUsedError;
  String? get createdDate => throw _privateConstructorUsedError;
  String? get modifiedDate => throw _privateConstructorUsedError;
  int? get replyCount => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickname')
  String? get writer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardInfoCopyWith<BoardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardInfoCopyWith<$Res> {
  factory $BoardInfoCopyWith(BoardInfo value, $Res Function(BoardInfo) then) =
      _$BoardInfoCopyWithImpl<$Res, BoardInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? boardId,
      @JsonKey(name: 'title') String? boardTitle,
      @JsonKey(name: 'content') String? boardContent,
      @JsonKey(name: 'image') String? boardImage,
      int? likeCount,
      String? createdDate,
      String? modifiedDate,
      int? replyCount,
      int? userId,
      @JsonKey(name: 'nickname') String? writer});
}

/// @nodoc
class _$BoardInfoCopyWithImpl<$Res, $Val extends BoardInfo>
    implements $BoardInfoCopyWith<$Res> {
  _$BoardInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boardId = freezed,
    Object? boardTitle = freezed,
    Object? boardContent = freezed,
    Object? boardImage = freezed,
    Object? likeCount = freezed,
    Object? createdDate = freezed,
    Object? modifiedDate = freezed,
    Object? replyCount = freezed,
    Object? userId = freezed,
    Object? writer = freezed,
  }) {
    return _then(_value.copyWith(
      boardId: freezed == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as int?,
      boardTitle: freezed == boardTitle
          ? _value.boardTitle
          : boardTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      boardContent: freezed == boardContent
          ? _value.boardContent
          : boardContent // ignore: cast_nullable_to_non_nullable
              as String?,
      boardImage: freezed == boardImage
          ? _value.boardImage
          : boardImage // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedDate: freezed == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      replyCount: freezed == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardInfoImplCopyWith<$Res>
    implements $BoardInfoCopyWith<$Res> {
  factory _$$BoardInfoImplCopyWith(
          _$BoardInfoImpl value, $Res Function(_$BoardInfoImpl) then) =
      __$$BoardInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? boardId,
      @JsonKey(name: 'title') String? boardTitle,
      @JsonKey(name: 'content') String? boardContent,
      @JsonKey(name: 'image') String? boardImage,
      int? likeCount,
      String? createdDate,
      String? modifiedDate,
      int? replyCount,
      int? userId,
      @JsonKey(name: 'nickname') String? writer});
}

/// @nodoc
class __$$BoardInfoImplCopyWithImpl<$Res>
    extends _$BoardInfoCopyWithImpl<$Res, _$BoardInfoImpl>
    implements _$$BoardInfoImplCopyWith<$Res> {
  __$$BoardInfoImplCopyWithImpl(
      _$BoardInfoImpl _value, $Res Function(_$BoardInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boardId = freezed,
    Object? boardTitle = freezed,
    Object? boardContent = freezed,
    Object? boardImage = freezed,
    Object? likeCount = freezed,
    Object? createdDate = freezed,
    Object? modifiedDate = freezed,
    Object? replyCount = freezed,
    Object? userId = freezed,
    Object? writer = freezed,
  }) {
    return _then(_$BoardInfoImpl(
      boardId: freezed == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as int?,
      boardTitle: freezed == boardTitle
          ? _value.boardTitle
          : boardTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      boardContent: freezed == boardContent
          ? _value.boardContent
          : boardContent // ignore: cast_nullable_to_non_nullable
              as String?,
      boardImage: freezed == boardImage
          ? _value.boardImage
          : boardImage // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedDate: freezed == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      replyCount: freezed == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardInfoImpl with DiagnosticableTreeMixin implements _BoardInfo {
  const _$BoardInfoImpl(
      {@JsonKey(name: 'id') required this.boardId,
      @JsonKey(name: 'title') required this.boardTitle,
      @JsonKey(name: 'content') required this.boardContent,
      @JsonKey(name: 'image') this.boardImage,
      required this.likeCount,
      required this.createdDate,
      required this.modifiedDate,
      required this.replyCount,
      required this.userId,
      @JsonKey(name: 'nickname') required this.writer});

  factory _$BoardInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardInfoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? boardId;
  @override
  @JsonKey(name: 'title')
  final String? boardTitle;
  @override
  @JsonKey(name: 'content')
  final String? boardContent;
  @override
  @JsonKey(name: 'image')
  final String? boardImage;
  @override
  final int? likeCount;
  @override
  final String? createdDate;
  @override
  final String? modifiedDate;
  @override
  final int? replyCount;
  @override
  final int? userId;
  @override
  @JsonKey(name: 'nickname')
  final String? writer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardInfo(boardId: $boardId, boardTitle: $boardTitle, boardContent: $boardContent, boardImage: $boardImage, likeCount: $likeCount, createdDate: $createdDate, modifiedDate: $modifiedDate, replyCount: $replyCount, userId: $userId, writer: $writer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardInfo'))
      ..add(DiagnosticsProperty('boardId', boardId))
      ..add(DiagnosticsProperty('boardTitle', boardTitle))
      ..add(DiagnosticsProperty('boardContent', boardContent))
      ..add(DiagnosticsProperty('boardImage', boardImage))
      ..add(DiagnosticsProperty('likeCount', likeCount))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('modifiedDate', modifiedDate))
      ..add(DiagnosticsProperty('replyCount', replyCount))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('writer', writer));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardInfoImpl &&
            (identical(other.boardId, boardId) || other.boardId == boardId) &&
            (identical(other.boardTitle, boardTitle) ||
                other.boardTitle == boardTitle) &&
            (identical(other.boardContent, boardContent) ||
                other.boardContent == boardContent) &&
            (identical(other.boardImage, boardImage) ||
                other.boardImage == boardImage) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.modifiedDate, modifiedDate) ||
                other.modifiedDate == modifiedDate) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.writer, writer) || other.writer == writer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      boardId,
      boardTitle,
      boardContent,
      boardImage,
      likeCount,
      createdDate,
      modifiedDate,
      replyCount,
      userId,
      writer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardInfoImplCopyWith<_$BoardInfoImpl> get copyWith =>
      __$$BoardInfoImplCopyWithImpl<_$BoardInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardInfoImplToJson(
      this,
    );
  }
}

abstract class _BoardInfo implements BoardInfo {
  const factory _BoardInfo(
          {@JsonKey(name: 'id') required final int? boardId,
          @JsonKey(name: 'title') required final String? boardTitle,
          @JsonKey(name: 'content') required final String? boardContent,
          @JsonKey(name: 'image') final String? boardImage,
          required final int? likeCount,
          required final String? createdDate,
          required final String? modifiedDate,
          required final int? replyCount,
          required final int? userId,
          @JsonKey(name: 'nickname') required final String? writer}) =
      _$BoardInfoImpl;

  factory _BoardInfo.fromJson(Map<String, dynamic> json) =
      _$BoardInfoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get boardId;
  @override
  @JsonKey(name: 'title')
  String? get boardTitle;
  @override
  @JsonKey(name: 'content')
  String? get boardContent;
  @override
  @JsonKey(name: 'image')
  String? get boardImage;
  @override
  int? get likeCount;
  @override
  String? get createdDate;
  @override
  String? get modifiedDate;
  @override
  int? get replyCount;
  @override
  int? get userId;
  @override
  @JsonKey(name: 'nickname')
  String? get writer;
  @override
  @JsonKey(ignore: true)
  _$$BoardInfoImplCopyWith<_$BoardInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

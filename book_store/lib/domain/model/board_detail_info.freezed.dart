// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_detail_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoardDetailInfo _$BoardDetailInfoFromJson(Map<String, dynamic> json) {
  return _BoardDetailInfo.fromJson(json);
}

/// @nodoc
mixin _$BoardDetailInfo {
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
  bool get isLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get writerProfileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardDetailInfoCopyWith<BoardDetailInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardDetailInfoCopyWith<$Res> {
  factory $BoardDetailInfoCopyWith(
          BoardDetailInfo value, $Res Function(BoardDetailInfo) then) =
      _$BoardDetailInfoCopyWithImpl<$Res, BoardDetailInfo>;
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
      @JsonKey(name: 'nickname') String? writer,
      bool isLike,
      @JsonKey(name: 'profile_image') String? writerProfileImage});
}

/// @nodoc
class _$BoardDetailInfoCopyWithImpl<$Res, $Val extends BoardDetailInfo>
    implements $BoardDetailInfoCopyWith<$Res> {
  _$BoardDetailInfoCopyWithImpl(this._value, this._then);

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
    Object? isLike = null,
    Object? writerProfileImage = freezed,
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
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      writerProfileImage: freezed == writerProfileImage
          ? _value.writerProfileImage
          : writerProfileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardDetailInfoImplCopyWith<$Res>
    implements $BoardDetailInfoCopyWith<$Res> {
  factory _$$BoardDetailInfoImplCopyWith(_$BoardDetailInfoImpl value,
          $Res Function(_$BoardDetailInfoImpl) then) =
      __$$BoardDetailInfoImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'nickname') String? writer,
      bool isLike,
      @JsonKey(name: 'profile_image') String? writerProfileImage});
}

/// @nodoc
class __$$BoardDetailInfoImplCopyWithImpl<$Res>
    extends _$BoardDetailInfoCopyWithImpl<$Res, _$BoardDetailInfoImpl>
    implements _$$BoardDetailInfoImplCopyWith<$Res> {
  __$$BoardDetailInfoImplCopyWithImpl(
      _$BoardDetailInfoImpl _value, $Res Function(_$BoardDetailInfoImpl) _then)
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
    Object? isLike = null,
    Object? writerProfileImage = freezed,
  }) {
    return _then(_$BoardDetailInfoImpl(
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
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      writerProfileImage: freezed == writerProfileImage
          ? _value.writerProfileImage
          : writerProfileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardDetailInfoImpl
    with DiagnosticableTreeMixin
    implements _BoardDetailInfo {
  const _$BoardDetailInfoImpl(
      {@JsonKey(name: 'id') required this.boardId,
      @JsonKey(name: 'title') required this.boardTitle,
      @JsonKey(name: 'content') required this.boardContent,
      @JsonKey(name: 'image') this.boardImage,
      required this.likeCount,
      required this.createdDate,
      required this.modifiedDate,
      required this.replyCount,
      required this.userId,
      @JsonKey(name: 'nickname') required this.writer,
      required this.isLike ,
      @JsonKey(name: 'profile_image') required this.writerProfileImage});

  factory _$BoardDetailInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardDetailInfoImplFromJson(json);

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
  @JsonKey()
  final bool isLike;
  @override
  @JsonKey(name: 'profile_image')
  final String? writerProfileImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardDetailInfo(boardId: $boardId, boardTitle: $boardTitle, boardContent: $boardContent, boardImage: $boardImage, likeCount: $likeCount, createdDate: $createdDate, modifiedDate: $modifiedDate, replyCount: $replyCount, userId: $userId, writer: $writer, isLike: $isLike, writerProfileImage: $writerProfileImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardDetailInfo'))
      ..add(DiagnosticsProperty('boardId', boardId))
      ..add(DiagnosticsProperty('boardTitle', boardTitle))
      ..add(DiagnosticsProperty('boardContent', boardContent))
      ..add(DiagnosticsProperty('boardImage', boardImage))
      ..add(DiagnosticsProperty('likeCount', likeCount))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('modifiedDate', modifiedDate))
      ..add(DiagnosticsProperty('replyCount', replyCount))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('writer', writer))
      ..add(DiagnosticsProperty('isLike', isLike))
      ..add(DiagnosticsProperty('writerProfileImage', writerProfileImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardDetailInfoImpl &&
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
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.writerProfileImage, writerProfileImage) ||
                other.writerProfileImage == writerProfileImage));
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
      writer,
      isLike,
      writerProfileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardDetailInfoImplCopyWith<_$BoardDetailInfoImpl> get copyWith =>
      __$$BoardDetailInfoImplCopyWithImpl<_$BoardDetailInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardDetailInfoImplToJson(
      this,
    );
  }
}

abstract class _BoardDetailInfo implements BoardDetailInfo {
  const factory _BoardDetailInfo(
      {@JsonKey(name: 'id') required final int? boardId,
      @JsonKey(name: 'title') required final String? boardTitle,
      @JsonKey(name: 'content') required final String? boardContent,
      @JsonKey(name: 'image') final String? boardImage,
      required final int? likeCount,
      required final String? createdDate,
      required final String? modifiedDate,
      required final int? replyCount,
      required final int? userId,
      @JsonKey(name: 'nickname') required final String? writer,
      required final bool isLike,
      @JsonKey(name: 'profile_image')
      required final String? writerProfileImage}) = _$BoardDetailInfoImpl;

  factory _BoardDetailInfo.fromJson(Map<String, dynamic> json) =
      _$BoardDetailInfoImpl.fromJson;

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
  bool get isLike;
  @override
  @JsonKey(name: 'profile_image')
  String? get writerProfileImage;
  @override
  @JsonKey(ignore: true)
  _$$BoardDetailInfoImplCopyWith<_$BoardDetailInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

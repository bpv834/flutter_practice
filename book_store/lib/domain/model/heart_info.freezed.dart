// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeartInfo _$HeartInfoFromJson(Map<String, dynamic> json) {
  return _HeartInfo.fromJson(json);
}

/// @nodoc
mixin _$HeartInfo {
  int? get userId => throw _privateConstructorUsedError;
  int? get boardId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeartInfoCopyWith<HeartInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartInfoCopyWith<$Res> {
  factory $HeartInfoCopyWith(HeartInfo value, $Res Function(HeartInfo) then) =
      _$HeartInfoCopyWithImpl<$Res, HeartInfo>;
  @useResult
  $Res call({int? userId, int? boardId});
}

/// @nodoc
class _$HeartInfoCopyWithImpl<$Res, $Val extends HeartInfo>
    implements $HeartInfoCopyWith<$Res> {
  _$HeartInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? boardId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      boardId: freezed == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeartInfoImplCopyWith<$Res>
    implements $HeartInfoCopyWith<$Res> {
  factory _$$HeartInfoImplCopyWith(
          _$HeartInfoImpl value, $Res Function(_$HeartInfoImpl) then) =
      __$$HeartInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? userId, int? boardId});
}

/// @nodoc
class __$$HeartInfoImplCopyWithImpl<$Res>
    extends _$HeartInfoCopyWithImpl<$Res, _$HeartInfoImpl>
    implements _$$HeartInfoImplCopyWith<$Res> {
  __$$HeartInfoImplCopyWithImpl(
      _$HeartInfoImpl _value, $Res Function(_$HeartInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? boardId = freezed,
  }) {
    return _then(_$HeartInfoImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      boardId: freezed == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartInfoImpl with DiagnosticableTreeMixin implements _HeartInfo {
  const _$HeartInfoImpl({this.userId, this.boardId});

  factory _$HeartInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartInfoImplFromJson(json);

  @override
  final int? userId;
  @override
  final int? boardId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HeartInfo(userId: $userId, boardId: $boardId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HeartInfo'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('boardId', boardId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartInfoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.boardId, boardId) || other.boardId == boardId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, boardId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartInfoImplCopyWith<_$HeartInfoImpl> get copyWith =>
      __$$HeartInfoImplCopyWithImpl<_$HeartInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartInfoImplToJson(
      this,
    );
  }
}

abstract class _HeartInfo implements HeartInfo {
  const factory _HeartInfo({final int? userId, final int? boardId}) =
      _$HeartInfoImpl;

  factory _HeartInfo.fromJson(Map<String, dynamic> json) =
      _$HeartInfoImpl.fromJson;

  @override
  int? get userId;
  @override
  int? get boardId;
  @override
  @JsonKey(ignore: true)
  _$$HeartInfoImplCopyWith<_$HeartInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

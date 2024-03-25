// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoardState _$BoardStateFromJson(Map<String, dynamic> json) {
  return _BoardState.fromJson(json);
}

/// @nodoc
mixin _$BoardState {
  List<BoardInfo> get boardList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardStateCopyWith<BoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardStateCopyWith<$Res> {
  factory $BoardStateCopyWith(
          BoardState value, $Res Function(BoardState) then) =
      _$BoardStateCopyWithImpl<$Res, BoardState>;
  @useResult
  $Res call({List<BoardInfo> boardList, bool isLoading});
}

/// @nodoc
class _$BoardStateCopyWithImpl<$Res, $Val extends BoardState>
    implements $BoardStateCopyWith<$Res> {
  _$BoardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boardList = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      boardList: null == boardList
          ? _value.boardList
          : boardList // ignore: cast_nullable_to_non_nullable
              as List<BoardInfo>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardStateImplCopyWith<$Res>
    implements $BoardStateCopyWith<$Res> {
  factory _$$BoardStateImplCopyWith(
          _$BoardStateImpl value, $Res Function(_$BoardStateImpl) then) =
      __$$BoardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BoardInfo> boardList, bool isLoading});
}

/// @nodoc
class __$$BoardStateImplCopyWithImpl<$Res>
    extends _$BoardStateCopyWithImpl<$Res, _$BoardStateImpl>
    implements _$$BoardStateImplCopyWith<$Res> {
  __$$BoardStateImplCopyWithImpl(
      _$BoardStateImpl _value, $Res Function(_$BoardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boardList = null,
    Object? isLoading = null,
  }) {
    return _then(_$BoardStateImpl(
      boardList: null == boardList
          ? _value._boardList
          : boardList // ignore: cast_nullable_to_non_nullable
              as List<BoardInfo>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardStateImpl with DiagnosticableTreeMixin implements _BoardState {
  const _$BoardStateImpl(
      {final List<BoardInfo> boardList = const [], this.isLoading = false})
      : _boardList = boardList;

  factory _$BoardStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardStateImplFromJson(json);

  final List<BoardInfo> _boardList;
  @override
  @JsonKey()
  List<BoardInfo> get boardList {
    if (_boardList is EqualUnmodifiableListView) return _boardList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boardList);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardState(boardList: $boardList, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardState'))
      ..add(DiagnosticsProperty('boardList', boardList))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardStateImpl &&
            const DeepCollectionEquality()
                .equals(other._boardList, _boardList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_boardList), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardStateImplCopyWith<_$BoardStateImpl> get copyWith =>
      __$$BoardStateImplCopyWithImpl<_$BoardStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardStateImplToJson(
      this,
    );
  }
}

abstract class _BoardState implements BoardState {
  const factory _BoardState(
      {final List<BoardInfo> boardList,
      final bool isLoading}) = _$BoardStateImpl;

  factory _BoardState.fromJson(Map<String, dynamic> json) =
      _$BoardStateImpl.fromJson;

  @override
  List<BoardInfo> get boardList;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$BoardStateImplCopyWith<_$BoardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

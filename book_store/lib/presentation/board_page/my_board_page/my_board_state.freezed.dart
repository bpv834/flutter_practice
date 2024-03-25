// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_board_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyBoardState _$MyBoardStateFromJson(Map<String, dynamic> json) {
  return _MyBoardState.fromJson(json);
}

/// @nodoc
mixin _$MyBoardState {
  String get barName => throw _privateConstructorUsedError;
  List<BoardInfo> get boardList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyBoardStateCopyWith<MyBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyBoardStateCopyWith<$Res> {
  factory $MyBoardStateCopyWith(
          MyBoardState value, $Res Function(MyBoardState) then) =
      _$MyBoardStateCopyWithImpl<$Res, MyBoardState>;
  @useResult
  $Res call({String barName, List<BoardInfo> boardList, bool isLoading});
}

/// @nodoc
class _$MyBoardStateCopyWithImpl<$Res, $Val extends MyBoardState>
    implements $MyBoardStateCopyWith<$Res> {
  _$MyBoardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barName = null,
    Object? boardList = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      barName: null == barName
          ? _value.barName
          : barName // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$MyBoardStateImplCopyWith<$Res>
    implements $MyBoardStateCopyWith<$Res> {
  factory _$$MyBoardStateImplCopyWith(
          _$MyBoardStateImpl value, $Res Function(_$MyBoardStateImpl) then) =
      __$$MyBoardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String barName, List<BoardInfo> boardList, bool isLoading});
}

/// @nodoc
class __$$MyBoardStateImplCopyWithImpl<$Res>
    extends _$MyBoardStateCopyWithImpl<$Res, _$MyBoardStateImpl>
    implements _$$MyBoardStateImplCopyWith<$Res> {
  __$$MyBoardStateImplCopyWithImpl(
      _$MyBoardStateImpl _value, $Res Function(_$MyBoardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barName = null,
    Object? boardList = null,
    Object? isLoading = null,
  }) {
    return _then(_$MyBoardStateImpl(
      barName: null == barName
          ? _value.barName
          : barName // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$MyBoardStateImpl with DiagnosticableTreeMixin implements _MyBoardState {
  const _$MyBoardStateImpl(
      {this.barName = '내가 쓴 게시글',
      final List<BoardInfo> boardList = const [],
      this.isLoading = false})
      : _boardList = boardList;

  factory _$MyBoardStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyBoardStateImplFromJson(json);

  @override
  @JsonKey()
  final String barName;
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
    return 'MyBoardState(barName: $barName, boardList: $boardList, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyBoardState'))
      ..add(DiagnosticsProperty('barName', barName))
      ..add(DiagnosticsProperty('boardList', boardList))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyBoardStateImpl &&
            (identical(other.barName, barName) || other.barName == barName) &&
            const DeepCollectionEquality()
                .equals(other._boardList, _boardList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, barName,
      const DeepCollectionEquality().hash(_boardList), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyBoardStateImplCopyWith<_$MyBoardStateImpl> get copyWith =>
      __$$MyBoardStateImplCopyWithImpl<_$MyBoardStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyBoardStateImplToJson(
      this,
    );
  }
}

abstract class _MyBoardState implements MyBoardState {
  const factory _MyBoardState(
      {final String barName,
      final List<BoardInfo> boardList,
      final bool isLoading}) = _$MyBoardStateImpl;

  factory _MyBoardState.fromJson(Map<String, dynamic> json) =
      _$MyBoardStateImpl.fromJson;

  @override
  String get barName;
  @override
  List<BoardInfo> get boardList;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$MyBoardStateImplCopyWith<_$MyBoardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

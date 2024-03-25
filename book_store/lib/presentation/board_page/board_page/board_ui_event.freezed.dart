// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoardUiEvent<T> {
  int get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, int userId) searchBoard,
    required TResult Function(int boardId, int userId) clickTile,
    required TResult Function(int boardId, int userId) deleteBoardById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, int userId)? searchBoard,
    TResult? Function(int boardId, int userId)? clickTile,
    TResult? Function(int boardId, int userId)? deleteBoardById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, int userId)? searchBoard,
    TResult Function(int boardId, int userId)? clickTile,
    TResult Function(int boardId, int userId)? deleteBoardById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBoard<T> value) searchBoard,
    required TResult Function(ClickTile<T> value) clickTile,
    required TResult Function(DeleteBoardById<T> value) deleteBoardById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBoard<T> value)? searchBoard,
    TResult? Function(ClickTile<T> value)? clickTile,
    TResult? Function(DeleteBoardById<T> value)? deleteBoardById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBoard<T> value)? searchBoard,
    TResult Function(ClickTile<T> value)? clickTile,
    TResult Function(DeleteBoardById<T> value)? deleteBoardById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardUiEventCopyWith<T, BoardUiEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardUiEventCopyWith<T, $Res> {
  factory $BoardUiEventCopyWith(
          BoardUiEvent<T> value, $Res Function(BoardUiEvent<T>) then) =
      _$BoardUiEventCopyWithImpl<T, $Res, BoardUiEvent<T>>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class _$BoardUiEventCopyWithImpl<T, $Res, $Val extends BoardUiEvent<T>>
    implements $BoardUiEventCopyWith<T, $Res> {
  _$BoardUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchBoardImplCopyWith<T, $Res>
    implements $BoardUiEventCopyWith<T, $Res> {
  factory _$$SearchBoardImplCopyWith(_$SearchBoardImpl<T> value,
          $Res Function(_$SearchBoardImpl<T>) then) =
      __$$SearchBoardImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String query, int userId});
}

/// @nodoc
class __$$SearchBoardImplCopyWithImpl<T, $Res>
    extends _$BoardUiEventCopyWithImpl<T, $Res, _$SearchBoardImpl<T>>
    implements _$$SearchBoardImplCopyWith<T, $Res> {
  __$$SearchBoardImplCopyWithImpl(
      _$SearchBoardImpl<T> _value, $Res Function(_$SearchBoardImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? userId = null,
  }) {
    return _then(_$SearchBoardImpl<T>(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchBoardImpl<T>
    with DiagnosticableTreeMixin
    implements SearchBoard<T> {
  const _$SearchBoardImpl(this.query, this.userId);

  @override
  final String query;
  @override
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardUiEvent<$T>.searchBoard(query: $query, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardUiEvent<$T>.searchBoard'))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBoardImpl<T> &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBoardImplCopyWith<T, _$SearchBoardImpl<T>> get copyWith =>
      __$$SearchBoardImplCopyWithImpl<T, _$SearchBoardImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, int userId) searchBoard,
    required TResult Function(int boardId, int userId) clickTile,
    required TResult Function(int boardId, int userId) deleteBoardById,
  }) {
    return searchBoard(query, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, int userId)? searchBoard,
    TResult? Function(int boardId, int userId)? clickTile,
    TResult? Function(int boardId, int userId)? deleteBoardById,
  }) {
    return searchBoard?.call(query, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, int userId)? searchBoard,
    TResult Function(int boardId, int userId)? clickTile,
    TResult Function(int boardId, int userId)? deleteBoardById,
    required TResult orElse(),
  }) {
    if (searchBoard != null) {
      return searchBoard(query, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBoard<T> value) searchBoard,
    required TResult Function(ClickTile<T> value) clickTile,
    required TResult Function(DeleteBoardById<T> value) deleteBoardById,
  }) {
    return searchBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBoard<T> value)? searchBoard,
    TResult? Function(ClickTile<T> value)? clickTile,
    TResult? Function(DeleteBoardById<T> value)? deleteBoardById,
  }) {
    return searchBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBoard<T> value)? searchBoard,
    TResult Function(ClickTile<T> value)? clickTile,
    TResult Function(DeleteBoardById<T> value)? deleteBoardById,
    required TResult orElse(),
  }) {
    if (searchBoard != null) {
      return searchBoard(this);
    }
    return orElse();
  }
}

abstract class SearchBoard<T> implements BoardUiEvent<T> {
  const factory SearchBoard(final String query, final int userId) =
      _$SearchBoardImpl<T>;

  String get query;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$SearchBoardImplCopyWith<T, _$SearchBoardImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClickTileImplCopyWith<T, $Res>
    implements $BoardUiEventCopyWith<T, $Res> {
  factory _$$ClickTileImplCopyWith(
          _$ClickTileImpl<T> value, $Res Function(_$ClickTileImpl<T>) then) =
      __$$ClickTileImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int boardId, int userId});
}

/// @nodoc
class __$$ClickTileImplCopyWithImpl<T, $Res>
    extends _$BoardUiEventCopyWithImpl<T, $Res, _$ClickTileImpl<T>>
    implements _$$ClickTileImplCopyWith<T, $Res> {
  __$$ClickTileImplCopyWithImpl(
      _$ClickTileImpl<T> _value, $Res Function(_$ClickTileImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boardId = null,
    Object? userId = null,
  }) {
    return _then(_$ClickTileImpl<T>(
      null == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as int,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ClickTileImpl<T> with DiagnosticableTreeMixin implements ClickTile<T> {
  const _$ClickTileImpl(this.boardId, this.userId);

  @override
  final int boardId;
  @override
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardUiEvent<$T>.clickTile(boardId: $boardId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardUiEvent<$T>.clickTile'))
      ..add(DiagnosticsProperty('boardId', boardId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickTileImpl<T> &&
            (identical(other.boardId, boardId) || other.boardId == boardId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boardId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickTileImplCopyWith<T, _$ClickTileImpl<T>> get copyWith =>
      __$$ClickTileImplCopyWithImpl<T, _$ClickTileImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, int userId) searchBoard,
    required TResult Function(int boardId, int userId) clickTile,
    required TResult Function(int boardId, int userId) deleteBoardById,
  }) {
    return clickTile(boardId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, int userId)? searchBoard,
    TResult? Function(int boardId, int userId)? clickTile,
    TResult? Function(int boardId, int userId)? deleteBoardById,
  }) {
    return clickTile?.call(boardId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, int userId)? searchBoard,
    TResult Function(int boardId, int userId)? clickTile,
    TResult Function(int boardId, int userId)? deleteBoardById,
    required TResult orElse(),
  }) {
    if (clickTile != null) {
      return clickTile(boardId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBoard<T> value) searchBoard,
    required TResult Function(ClickTile<T> value) clickTile,
    required TResult Function(DeleteBoardById<T> value) deleteBoardById,
  }) {
    return clickTile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBoard<T> value)? searchBoard,
    TResult? Function(ClickTile<T> value)? clickTile,
    TResult? Function(DeleteBoardById<T> value)? deleteBoardById,
  }) {
    return clickTile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBoard<T> value)? searchBoard,
    TResult Function(ClickTile<T> value)? clickTile,
    TResult Function(DeleteBoardById<T> value)? deleteBoardById,
    required TResult orElse(),
  }) {
    if (clickTile != null) {
      return clickTile(this);
    }
    return orElse();
  }
}

abstract class ClickTile<T> implements BoardUiEvent<T> {
  const factory ClickTile(final int boardId, final int userId) =
      _$ClickTileImpl<T>;

  int get boardId;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$ClickTileImplCopyWith<T, _$ClickTileImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBoardByIdImplCopyWith<T, $Res>
    implements $BoardUiEventCopyWith<T, $Res> {
  factory _$$DeleteBoardByIdImplCopyWith(_$DeleteBoardByIdImpl<T> value,
          $Res Function(_$DeleteBoardByIdImpl<T>) then) =
      __$$DeleteBoardByIdImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int boardId, int userId});
}

/// @nodoc
class __$$DeleteBoardByIdImplCopyWithImpl<T, $Res>
    extends _$BoardUiEventCopyWithImpl<T, $Res, _$DeleteBoardByIdImpl<T>>
    implements _$$DeleteBoardByIdImplCopyWith<T, $Res> {
  __$$DeleteBoardByIdImplCopyWithImpl(_$DeleteBoardByIdImpl<T> _value,
      $Res Function(_$DeleteBoardByIdImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boardId = null,
    Object? userId = null,
  }) {
    return _then(_$DeleteBoardByIdImpl<T>(
      null == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as int,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteBoardByIdImpl<T>
    with DiagnosticableTreeMixin
    implements DeleteBoardById<T> {
  const _$DeleteBoardByIdImpl(this.boardId, this.userId);

  @override
  final int boardId;
  @override
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardUiEvent<$T>.deleteBoardById(boardId: $boardId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardUiEvent<$T>.deleteBoardById'))
      ..add(DiagnosticsProperty('boardId', boardId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBoardByIdImpl<T> &&
            (identical(other.boardId, boardId) || other.boardId == boardId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boardId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBoardByIdImplCopyWith<T, _$DeleteBoardByIdImpl<T>> get copyWith =>
      __$$DeleteBoardByIdImplCopyWithImpl<T, _$DeleteBoardByIdImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, int userId) searchBoard,
    required TResult Function(int boardId, int userId) clickTile,
    required TResult Function(int boardId, int userId) deleteBoardById,
  }) {
    return deleteBoardById(boardId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, int userId)? searchBoard,
    TResult? Function(int boardId, int userId)? clickTile,
    TResult? Function(int boardId, int userId)? deleteBoardById,
  }) {
    return deleteBoardById?.call(boardId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, int userId)? searchBoard,
    TResult Function(int boardId, int userId)? clickTile,
    TResult Function(int boardId, int userId)? deleteBoardById,
    required TResult orElse(),
  }) {
    if (deleteBoardById != null) {
      return deleteBoardById(boardId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBoard<T> value) searchBoard,
    required TResult Function(ClickTile<T> value) clickTile,
    required TResult Function(DeleteBoardById<T> value) deleteBoardById,
  }) {
    return deleteBoardById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBoard<T> value)? searchBoard,
    TResult? Function(ClickTile<T> value)? clickTile,
    TResult? Function(DeleteBoardById<T> value)? deleteBoardById,
  }) {
    return deleteBoardById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBoard<T> value)? searchBoard,
    TResult Function(ClickTile<T> value)? clickTile,
    TResult Function(DeleteBoardById<T> value)? deleteBoardById,
    required TResult orElse(),
  }) {
    if (deleteBoardById != null) {
      return deleteBoardById(this);
    }
    return orElse();
  }
}

abstract class DeleteBoardById<T> implements BoardUiEvent<T> {
  const factory DeleteBoardById(final int boardId, final int userId) =
      _$DeleteBoardByIdImpl<T>;

  int get boardId;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteBoardByIdImplCopyWith<T, _$DeleteBoardByIdImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoardDetailUiEvent {
  bool get isLiked => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLiked) likeTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLiked)? likeTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLiked)? likeTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeTap value) likeTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeTap value)? likeTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeTap value)? likeTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardDetailUiEventCopyWith<BoardDetailUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardDetailUiEventCopyWith<$Res> {
  factory $BoardDetailUiEventCopyWith(
          BoardDetailUiEvent value, $Res Function(BoardDetailUiEvent) then) =
      _$BoardDetailUiEventCopyWithImpl<$Res, BoardDetailUiEvent>;
  @useResult
  $Res call({bool isLiked});
}

/// @nodoc
class _$BoardDetailUiEventCopyWithImpl<$Res, $Val extends BoardDetailUiEvent>
    implements $BoardDetailUiEventCopyWith<$Res> {
  _$BoardDetailUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLiked = null,
  }) {
    return _then(_value.copyWith(
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikeTapImplCopyWith<$Res>
    implements $BoardDetailUiEventCopyWith<$Res> {
  factory _$$LikeTapImplCopyWith(
          _$LikeTapImpl value, $Res Function(_$LikeTapImpl) then) =
      __$$LikeTapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLiked});
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
    Object? isLiked = null,
  }) {
    return _then(_$LikeTapImpl(
      null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LikeTapImpl with DiagnosticableTreeMixin implements LikeTap {
  const _$LikeTapImpl(this.isLiked);

  @override
  final bool isLiked;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardDetailUiEvent.likeTap(isLiked: $isLiked)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardDetailUiEvent.likeTap'))
      ..add(DiagnosticsProperty('isLiked', isLiked));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeTapImpl &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLiked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeTapImplCopyWith<_$LikeTapImpl> get copyWith =>
      __$$LikeTapImplCopyWithImpl<_$LikeTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLiked) likeTap,
  }) {
    return likeTap(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLiked)? likeTap,
  }) {
    return likeTap?.call(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLiked)? likeTap,
    required TResult orElse(),
  }) {
    if (likeTap != null) {
      return likeTap(isLiked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeTap value) likeTap,
  }) {
    return likeTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeTap value)? likeTap,
  }) {
    return likeTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeTap value)? likeTap,
    required TResult orElse(),
  }) {
    if (likeTap != null) {
      return likeTap(this);
    }
    return orElse();
  }
}

abstract class LikeTap implements BoardDetailUiEvent {
  const factory LikeTap(final bool isLiked) = _$LikeTapImpl;

  @override
  bool get isLiked;
  @override
  @JsonKey(ignore: true)
  _$$LikeTapImplCopyWith<_$LikeTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

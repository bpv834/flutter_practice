// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_listings_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompanyListingsAction<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String e) onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String e)? onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String e)? onSearchQueryChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh<T> value) refresh,
    required TResult Function(OnSearchQueryChange<T> value) onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh<T> value)? refresh,
    TResult? Function(OnSearchQueryChange<T> value)? onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh<T> value)? refresh,
    TResult Function(OnSearchQueryChange<T> value)? onSearchQueryChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyListingsActionCopyWith<T, $Res> {
  factory $CompanyListingsActionCopyWith(CompanyListingsAction<T> value,
          $Res Function(CompanyListingsAction<T>) then) =
      _$CompanyListingsActionCopyWithImpl<T, $Res, CompanyListingsAction<T>>;
}

/// @nodoc
class _$CompanyListingsActionCopyWithImpl<T, $Res,
        $Val extends CompanyListingsAction<T>>
    implements $CompanyListingsActionCopyWith<T, $Res> {
  _$CompanyListingsActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<T, $Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl<T> value, $Res Function(_$RefreshImpl<T>) then) =
      __$$RefreshImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<T, $Res>
    extends _$CompanyListingsActionCopyWithImpl<T, $Res, _$RefreshImpl<T>>
    implements _$$RefreshImplCopyWith<T, $Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl<T> _value, $Res Function(_$RefreshImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshImpl<T> with DiagnosticableTreeMixin implements Refresh<T> {
  const _$RefreshImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyListingsAction<$T>.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CompanyListingsAction<$T>.refresh'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String e) onSearchQueryChange,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String e)? onSearchQueryChange,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String e)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh<T> value) refresh,
    required TResult Function(OnSearchQueryChange<T> value) onSearchQueryChange,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh<T> value)? refresh,
    TResult? Function(OnSearchQueryChange<T> value)? onSearchQueryChange,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh<T> value)? refresh,
    TResult Function(OnSearchQueryChange<T> value)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh<T> implements CompanyListingsAction<T> {
  const factory Refresh() = _$RefreshImpl<T>;
}

/// @nodoc
abstract class _$$OnSearchQueryChangeImplCopyWith<T, $Res> {
  factory _$$OnSearchQueryChangeImplCopyWith(_$OnSearchQueryChangeImpl<T> value,
          $Res Function(_$OnSearchQueryChangeImpl<T>) then) =
      __$$OnSearchQueryChangeImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String e});
}

/// @nodoc
class __$$OnSearchQueryChangeImplCopyWithImpl<T, $Res>
    extends _$CompanyListingsActionCopyWithImpl<T, $Res,
        _$OnSearchQueryChangeImpl<T>>
    implements _$$OnSearchQueryChangeImplCopyWith<T, $Res> {
  __$$OnSearchQueryChangeImplCopyWithImpl(_$OnSearchQueryChangeImpl<T> _value,
      $Res Function(_$OnSearchQueryChangeImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$OnSearchQueryChangeImpl<T>(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSearchQueryChangeImpl<T>
    with DiagnosticableTreeMixin
    implements OnSearchQueryChange<T> {
  const _$OnSearchQueryChangeImpl(this.e);

  @override
  final String e;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyListingsAction<$T>.onSearchQueryChange(e: $e)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CompanyListingsAction<$T>.onSearchQueryChange'))
      ..add(DiagnosticsProperty('e', e));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSearchQueryChangeImpl<T> &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSearchQueryChangeImplCopyWith<T, _$OnSearchQueryChangeImpl<T>>
      get copyWith => __$$OnSearchQueryChangeImplCopyWithImpl<T,
          _$OnSearchQueryChangeImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String e) onSearchQueryChange,
  }) {
    return onSearchQueryChange(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String e)? onSearchQueryChange,
  }) {
    return onSearchQueryChange?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String e)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (onSearchQueryChange != null) {
      return onSearchQueryChange(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh<T> value) refresh,
    required TResult Function(OnSearchQueryChange<T> value) onSearchQueryChange,
  }) {
    return onSearchQueryChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh<T> value)? refresh,
    TResult? Function(OnSearchQueryChange<T> value)? onSearchQueryChange,
  }) {
    return onSearchQueryChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh<T> value)? refresh,
    TResult Function(OnSearchQueryChange<T> value)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (onSearchQueryChange != null) {
      return onSearchQueryChange(this);
    }
    return orElse();
  }
}

abstract class OnSearchQueryChange<T> implements CompanyListingsAction<T> {
  const factory OnSearchQueryChange(final String e) =
      _$OnSearchQueryChangeImpl<T>;

  String get e;
  @JsonKey(ignore: true)
  _$$OnSearchQueryChangeImplCopyWith<T, _$OnSearchQueryChangeImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

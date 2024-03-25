// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int storeId) touchTile,
    required TResult Function(String query, SplashViewModel? splashViewModel,
            CustomerInfoViewModel? customerInfoViewModel)
        searchStore,
    required TResult Function(String? query) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int storeId)? touchTile,
    TResult? Function(String query, SplashViewModel? splashViewModel,
            CustomerInfoViewModel? customerInfoViewModel)?
        searchStore,
    TResult? Function(String? query)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int storeId)? touchTile,
    TResult Function(String query, SplashViewModel? splashViewModel,
            CustomerInfoViewModel? customerInfoViewModel)?
        searchStore,
    TResult Function(String? query)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TouchTile value) touchTile,
    required TResult Function(SearchStore value) searchStore,
    required TResult Function(Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TouchTile value)? touchTile,
    TResult? Function(SearchStore value)? searchStore,
    TResult? Function(Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TouchTile value)? touchTile,
    TResult Function(SearchStore value)? searchStore,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreEventCopyWith<$Res> {
  factory $StoreEventCopyWith(
          StoreEvent value, $Res Function(StoreEvent) then) =
      _$StoreEventCopyWithImpl<$Res, StoreEvent>;
}

/// @nodoc
class _$StoreEventCopyWithImpl<$Res, $Val extends StoreEvent>
    implements $StoreEventCopyWith<$Res> {
  _$StoreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TouchTileImplCopyWith<$Res> {
  factory _$$TouchTileImplCopyWith(
          _$TouchTileImpl value, $Res Function(_$TouchTileImpl) then) =
      __$$TouchTileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int storeId});
}

/// @nodoc
class __$$TouchTileImplCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res, _$TouchTileImpl>
    implements _$$TouchTileImplCopyWith<$Res> {
  __$$TouchTileImplCopyWithImpl(
      _$TouchTileImpl _value, $Res Function(_$TouchTileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = null,
  }) {
    return _then(_$TouchTileImpl(
      null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TouchTileImpl with DiagnosticableTreeMixin implements TouchTile {
  const _$TouchTileImpl(this.storeId);

  @override
  final int storeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoreEvent.touchTile(storeId: $storeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoreEvent.touchTile'))
      ..add(DiagnosticsProperty('storeId', storeId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TouchTileImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TouchTileImplCopyWith<_$TouchTileImpl> get copyWith =>
      __$$TouchTileImplCopyWithImpl<_$TouchTileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int storeId) touchTile,
    required TResult Function(String query, SplashViewModel? splashViewModel,
            CustomerInfoViewModel? customerInfoViewModel)
        searchStore,
    required TResult Function(String? query) refresh,
  }) {
    return touchTile(storeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int storeId)? touchTile,
    TResult? Function(String query, SplashViewModel? splashViewModel,
            CustomerInfoViewModel? customerInfoViewModel)?
        searchStore,
    TResult? Function(String? query)? refresh,
  }) {
    return touchTile?.call(storeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int storeId)? touchTile,
    TResult Function(String query, SplashViewModel? splashViewModel,
            CustomerInfoViewModel? customerInfoViewModel)?
        searchStore,
    TResult Function(String? query)? refresh,
    required TResult orElse(),
  }) {
    if (touchTile != null) {
      return touchTile(storeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TouchTile value) touchTile,
    required TResult Function(SearchStore value) searchStore,
    required TResult Function(Refresh value) refresh,
  }) {
    return touchTile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TouchTile value)? touchTile,
    TResult? Function(SearchStore value)? searchStore,
    TResult? Function(Refresh value)? refresh,
  }) {
    return touchTile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TouchTile value)? touchTile,
    TResult Function(SearchStore value)? searchStore,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (touchTile != null) {
      return touchTile(this);
    }
    return orElse();
  }
}

abstract class TouchTile implements StoreEvent {
  const factory TouchTile(final int storeId) = _$TouchTileImpl;

  int get storeId;
  @JsonKey(ignore: true)
  _$$TouchTileImplCopyWith<_$TouchTileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchStoreImplCopyWith<$Res> {
  factory _$$SearchStoreImplCopyWith(
          _$SearchStoreImpl value, $Res Function(_$SearchStoreImpl) then) =
      __$$SearchStoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String query,
      SplashViewModel? splashViewModel,
      CustomerInfoViewModel? customerInfoViewModel});
}

/// @nodoc
class __$$SearchStoreImplCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res, _$SearchStoreImpl>
    implements _$$SearchStoreImplCopyWith<$Res> {
  __$$SearchStoreImplCopyWithImpl(
      _$SearchStoreImpl _value, $Res Function(_$SearchStoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? splashViewModel = freezed,
    Object? customerInfoViewModel = freezed,
  }) {
    return _then(_$SearchStoreImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == splashViewModel
          ? _value.splashViewModel
          : splashViewModel // ignore: cast_nullable_to_non_nullable
              as SplashViewModel?,
      freezed == customerInfoViewModel
          ? _value.customerInfoViewModel
          : customerInfoViewModel // ignore: cast_nullable_to_non_nullable
              as CustomerInfoViewModel?,
    ));
  }
}

/// @nodoc

class _$SearchStoreImpl with DiagnosticableTreeMixin implements SearchStore {
  const _$SearchStoreImpl(
      this.query, this.splashViewModel, this.customerInfoViewModel);

  @override
  final String query;
  @override
  final SplashViewModel? splashViewModel;
  @override
  final CustomerInfoViewModel? customerInfoViewModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoreEvent.searchStore(query: $query, splashViewModel: $splashViewModel, customerInfoViewModel: $customerInfoViewModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoreEvent.searchStore'))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('splashViewModel', splashViewModel))
      ..add(
          DiagnosticsProperty('customerInfoViewModel', customerInfoViewModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStoreImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.splashViewModel, splashViewModel) ||
                other.splashViewModel == splashViewModel) &&
            (identical(other.customerInfoViewModel, customerInfoViewModel) ||
                other.customerInfoViewModel == customerInfoViewModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, query, splashViewModel, customerInfoViewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStoreImplCopyWith<_$SearchStoreImpl> get copyWith =>
      __$$SearchStoreImplCopyWithImpl<_$SearchStoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int storeId) touchTile,
    required TResult Function(String query, SplashViewModel? splashViewModel,
            CustomerInfoViewModel? customerInfoViewModel)
        searchStore,
    required TResult Function(String? query) refresh,
  }) {
    return searchStore(query, splashViewModel, customerInfoViewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int storeId)? touchTile,
    TResult? Function(String query, SplashViewModel? splashViewModel,
            CustomerInfoViewModel? customerInfoViewModel)?
        searchStore,
    TResult? Function(String? query)? refresh,
  }) {
    return searchStore?.call(query, splashViewModel, customerInfoViewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int storeId)? touchTile,
    TResult Function(String query, SplashViewModel? splashViewModel,
            CustomerInfoViewModel? customerInfoViewModel)?
        searchStore,
    TResult Function(String? query)? refresh,
    required TResult orElse(),
  }) {
    if (searchStore != null) {
      return searchStore(query, splashViewModel, customerInfoViewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TouchTile value) touchTile,
    required TResult Function(SearchStore value) searchStore,
    required TResult Function(Refresh value) refresh,
  }) {
    return searchStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TouchTile value)? touchTile,
    TResult? Function(SearchStore value)? searchStore,
    TResult? Function(Refresh value)? refresh,
  }) {
    return searchStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TouchTile value)? touchTile,
    TResult Function(SearchStore value)? searchStore,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (searchStore != null) {
      return searchStore(this);
    }
    return orElse();
  }
}

abstract class SearchStore implements StoreEvent {
  const factory SearchStore(
      final String query,
      final SplashViewModel? splashViewModel,
      final CustomerInfoViewModel? customerInfoViewModel) = _$SearchStoreImpl;

  String get query;
  SplashViewModel? get splashViewModel;
  CustomerInfoViewModel? get customerInfoViewModel;
  @JsonKey(ignore: true)
  _$$SearchStoreImplCopyWith<_$SearchStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$RefreshImpl(
      freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RefreshImpl with DiagnosticableTreeMixin implements Refresh {
  const _$RefreshImpl(this.query);

  @override
  final String? query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoreEvent.refresh(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoreEvent.refresh'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      __$$RefreshImplCopyWithImpl<_$RefreshImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int storeId) touchTile,
    required TResult Function(String query, SplashViewModel? splashViewModel,
            CustomerInfoViewModel? customerInfoViewModel)
        searchStore,
    required TResult Function(String? query) refresh,
  }) {
    return refresh(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int storeId)? touchTile,
    TResult? Function(String query, SplashViewModel? splashViewModel,
            CustomerInfoViewModel? customerInfoViewModel)?
        searchStore,
    TResult? Function(String? query)? refresh,
  }) {
    return refresh?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int storeId)? touchTile,
    TResult Function(String query, SplashViewModel? splashViewModel,
            CustomerInfoViewModel? customerInfoViewModel)?
        searchStore,
    TResult Function(String? query)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TouchTile value) touchTile,
    required TResult Function(SearchStore value) searchStore,
    required TResult Function(Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TouchTile value)? touchTile,
    TResult? Function(SearchStore value)? searchStore,
    TResult? Function(Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TouchTile value)? touchTile,
    TResult Function(SearchStore value)? searchStore,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements StoreEvent {
  const factory Refresh(final String? query) = _$RefreshImpl;

  String? get query;
  @JsonKey(ignore: true)
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegionSection regionSection) byRegion,
    required TResult Function(List<SimpleStore> nearStore, BuildContext context)
        nearbyStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegionSection regionSection)? byRegion,
    TResult? Function(List<SimpleStore> nearStore, BuildContext context)?
        nearbyStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegionSection regionSection)? byRegion,
    TResult Function(List<SimpleStore> nearStore, BuildContext context)?
        nearbyStore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Byregion value) byRegion,
    required TResult Function(NearbyStore value) nearbyStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Byregion value)? byRegion,
    TResult? Function(NearbyStore value)? nearbyStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Byregion value)? byRegion,
    TResult Function(NearbyStore value)? nearbyStore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ByregionImplCopyWith<$Res> {
  factory _$$ByregionImplCopyWith(
          _$ByregionImpl value, $Res Function(_$ByregionImpl) then) =
      __$$ByregionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegionSection regionSection});

  $RegionSectionCopyWith<$Res> get regionSection;
}

/// @nodoc
class __$$ByregionImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ByregionImpl>
    implements _$$ByregionImplCopyWith<$Res> {
  __$$ByregionImplCopyWithImpl(
      _$ByregionImpl _value, $Res Function(_$ByregionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regionSection = null,
  }) {
    return _then(_$ByregionImpl(
      null == regionSection
          ? _value.regionSection
          : regionSection // ignore: cast_nullable_to_non_nullable
              as RegionSection,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionSectionCopyWith<$Res> get regionSection {
    return $RegionSectionCopyWith<$Res>(_value.regionSection, (value) {
      return _then(_value.copyWith(regionSection: value));
    });
  }
}

/// @nodoc

class _$ByregionImpl implements Byregion {
  const _$ByregionImpl(this.regionSection);

  @override
  final RegionSection regionSection;

  @override
  String toString() {
    return 'HomeEvent.byRegion(regionSection: $regionSection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ByregionImpl &&
            (identical(other.regionSection, regionSection) ||
                other.regionSection == regionSection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, regionSection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ByregionImplCopyWith<_$ByregionImpl> get copyWith =>
      __$$ByregionImplCopyWithImpl<_$ByregionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegionSection regionSection) byRegion,
    required TResult Function(List<SimpleStore> nearStore, BuildContext context)
        nearbyStore,
  }) {
    return byRegion(regionSection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegionSection regionSection)? byRegion,
    TResult? Function(List<SimpleStore> nearStore, BuildContext context)?
        nearbyStore,
  }) {
    return byRegion?.call(regionSection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegionSection regionSection)? byRegion,
    TResult Function(List<SimpleStore> nearStore, BuildContext context)?
        nearbyStore,
    required TResult orElse(),
  }) {
    if (byRegion != null) {
      return byRegion(regionSection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Byregion value) byRegion,
    required TResult Function(NearbyStore value) nearbyStore,
  }) {
    return byRegion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Byregion value)? byRegion,
    TResult? Function(NearbyStore value)? nearbyStore,
  }) {
    return byRegion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Byregion value)? byRegion,
    TResult Function(NearbyStore value)? nearbyStore,
    required TResult orElse(),
  }) {
    if (byRegion != null) {
      return byRegion(this);
    }
    return orElse();
  }
}

abstract class Byregion implements HomeEvent {
  const factory Byregion(final RegionSection regionSection) = _$ByregionImpl;

  RegionSection get regionSection;
  @JsonKey(ignore: true)
  _$$ByregionImplCopyWith<_$ByregionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NearbyStoreImplCopyWith<$Res> {
  factory _$$NearbyStoreImplCopyWith(
          _$NearbyStoreImpl value, $Res Function(_$NearbyStoreImpl) then) =
      __$$NearbyStoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SimpleStore> nearStore, BuildContext context});
}

/// @nodoc
class __$$NearbyStoreImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$NearbyStoreImpl>
    implements _$$NearbyStoreImplCopyWith<$Res> {
  __$$NearbyStoreImplCopyWithImpl(
      _$NearbyStoreImpl _value, $Res Function(_$NearbyStoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nearStore = null,
    Object? context = null,
  }) {
    return _then(_$NearbyStoreImpl(
      null == nearStore
          ? _value._nearStore
          : nearStore // ignore: cast_nullable_to_non_nullable
              as List<SimpleStore>,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$NearbyStoreImpl implements NearbyStore {
  const _$NearbyStoreImpl(final List<SimpleStore> nearStore, this.context)
      : _nearStore = nearStore;

  final List<SimpleStore> _nearStore;
  @override
  List<SimpleStore> get nearStore {
    if (_nearStore is EqualUnmodifiableListView) return _nearStore;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nearStore);
  }

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'HomeEvent.nearbyStore(nearStore: $nearStore, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NearbyStoreImpl &&
            const DeepCollectionEquality()
                .equals(other._nearStore, _nearStore) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nearStore), context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NearbyStoreImplCopyWith<_$NearbyStoreImpl> get copyWith =>
      __$$NearbyStoreImplCopyWithImpl<_$NearbyStoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegionSection regionSection) byRegion,
    required TResult Function(List<SimpleStore> nearStore, BuildContext context)
        nearbyStore,
  }) {
    return nearbyStore(nearStore, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegionSection regionSection)? byRegion,
    TResult? Function(List<SimpleStore> nearStore, BuildContext context)?
        nearbyStore,
  }) {
    return nearbyStore?.call(nearStore, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegionSection regionSection)? byRegion,
    TResult Function(List<SimpleStore> nearStore, BuildContext context)?
        nearbyStore,
    required TResult orElse(),
  }) {
    if (nearbyStore != null) {
      return nearbyStore(nearStore, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Byregion value) byRegion,
    required TResult Function(NearbyStore value) nearbyStore,
  }) {
    return nearbyStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Byregion value)? byRegion,
    TResult? Function(NearbyStore value)? nearbyStore,
  }) {
    return nearbyStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Byregion value)? byRegion,
    TResult Function(NearbyStore value)? nearbyStore,
    required TResult orElse(),
  }) {
    if (nearbyStore != null) {
      return nearbyStore(this);
    }
    return orElse();
  }
}

abstract class NearbyStore implements HomeEvent {
  const factory NearbyStore(
          final List<SimpleStore> nearStore, final BuildContext context) =
      _$NearbyStoreImpl;

  List<SimpleStore> get nearStore;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$NearbyStoreImplCopyWith<_$NearbyStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapUiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleStore simpleStore) clickMaka,
    required TResult Function(int id) clickContainer,
    required TResult Function(int radius) switchRadius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleStore simpleStore)? clickMaka,
    TResult? Function(int id)? clickContainer,
    TResult? Function(int radius)? switchRadius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleStore simpleStore)? clickMaka,
    TResult Function(int id)? clickContainer,
    TResult Function(int radius)? switchRadius,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClickMaka value) clickMaka,
    required TResult Function(ClickContainer value) clickContainer,
    required TResult Function(SwitchRadius value) switchRadius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClickMaka value)? clickMaka,
    TResult? Function(ClickContainer value)? clickContainer,
    TResult? Function(SwitchRadius value)? switchRadius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClickMaka value)? clickMaka,
    TResult Function(ClickContainer value)? clickContainer,
    TResult Function(SwitchRadius value)? switchRadius,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapUiEventCopyWith<$Res> {
  factory $MapUiEventCopyWith(
          MapUiEvent value, $Res Function(MapUiEvent) then) =
      _$MapUiEventCopyWithImpl<$Res, MapUiEvent>;
}

/// @nodoc
class _$MapUiEventCopyWithImpl<$Res, $Val extends MapUiEvent>
    implements $MapUiEventCopyWith<$Res> {
  _$MapUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClickMakaImplCopyWith<$Res> {
  factory _$$ClickMakaImplCopyWith(
          _$ClickMakaImpl value, $Res Function(_$ClickMakaImpl) then) =
      __$$ClickMakaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleStore simpleStore});

  $SimpleStoreCopyWith<$Res> get simpleStore;
}

/// @nodoc
class __$$ClickMakaImplCopyWithImpl<$Res>
    extends _$MapUiEventCopyWithImpl<$Res, _$ClickMakaImpl>
    implements _$$ClickMakaImplCopyWith<$Res> {
  __$$ClickMakaImplCopyWithImpl(
      _$ClickMakaImpl _value, $Res Function(_$ClickMakaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? simpleStore = null,
  }) {
    return _then(_$ClickMakaImpl(
      null == simpleStore
          ? _value.simpleStore
          : simpleStore // ignore: cast_nullable_to_non_nullable
              as SimpleStore,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleStoreCopyWith<$Res> get simpleStore {
    return $SimpleStoreCopyWith<$Res>(_value.simpleStore, (value) {
      return _then(_value.copyWith(simpleStore: value));
    });
  }
}

/// @nodoc

class _$ClickMakaImpl with DiagnosticableTreeMixin implements ClickMaka {
  const _$ClickMakaImpl(this.simpleStore);

  @override
  final SimpleStore simpleStore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapUiEvent.clickMaka(simpleStore: $simpleStore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapUiEvent.clickMaka'))
      ..add(DiagnosticsProperty('simpleStore', simpleStore));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickMakaImpl &&
            (identical(other.simpleStore, simpleStore) ||
                other.simpleStore == simpleStore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, simpleStore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickMakaImplCopyWith<_$ClickMakaImpl> get copyWith =>
      __$$ClickMakaImplCopyWithImpl<_$ClickMakaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleStore simpleStore) clickMaka,
    required TResult Function(int id) clickContainer,
    required TResult Function(int radius) switchRadius,
  }) {
    return clickMaka(simpleStore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleStore simpleStore)? clickMaka,
    TResult? Function(int id)? clickContainer,
    TResult? Function(int radius)? switchRadius,
  }) {
    return clickMaka?.call(simpleStore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleStore simpleStore)? clickMaka,
    TResult Function(int id)? clickContainer,
    TResult Function(int radius)? switchRadius,
    required TResult orElse(),
  }) {
    if (clickMaka != null) {
      return clickMaka(simpleStore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClickMaka value) clickMaka,
    required TResult Function(ClickContainer value) clickContainer,
    required TResult Function(SwitchRadius value) switchRadius,
  }) {
    return clickMaka(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClickMaka value)? clickMaka,
    TResult? Function(ClickContainer value)? clickContainer,
    TResult? Function(SwitchRadius value)? switchRadius,
  }) {
    return clickMaka?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClickMaka value)? clickMaka,
    TResult Function(ClickContainer value)? clickContainer,
    TResult Function(SwitchRadius value)? switchRadius,
    required TResult orElse(),
  }) {
    if (clickMaka != null) {
      return clickMaka(this);
    }
    return orElse();
  }
}

abstract class ClickMaka implements MapUiEvent {
  const factory ClickMaka(final SimpleStore simpleStore) = _$ClickMakaImpl;

  SimpleStore get simpleStore;
  @JsonKey(ignore: true)
  _$$ClickMakaImplCopyWith<_$ClickMakaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClickContainerImplCopyWith<$Res> {
  factory _$$ClickContainerImplCopyWith(_$ClickContainerImpl value,
          $Res Function(_$ClickContainerImpl) then) =
      __$$ClickContainerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ClickContainerImplCopyWithImpl<$Res>
    extends _$MapUiEventCopyWithImpl<$Res, _$ClickContainerImpl>
    implements _$$ClickContainerImplCopyWith<$Res> {
  __$$ClickContainerImplCopyWithImpl(
      _$ClickContainerImpl _value, $Res Function(_$ClickContainerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ClickContainerImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ClickContainerImpl
    with DiagnosticableTreeMixin
    implements ClickContainer {
  const _$ClickContainerImpl(this.id);

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapUiEvent.clickContainer(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapUiEvent.clickContainer'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickContainerImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickContainerImplCopyWith<_$ClickContainerImpl> get copyWith =>
      __$$ClickContainerImplCopyWithImpl<_$ClickContainerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleStore simpleStore) clickMaka,
    required TResult Function(int id) clickContainer,
    required TResult Function(int radius) switchRadius,
  }) {
    return clickContainer(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleStore simpleStore)? clickMaka,
    TResult? Function(int id)? clickContainer,
    TResult? Function(int radius)? switchRadius,
  }) {
    return clickContainer?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleStore simpleStore)? clickMaka,
    TResult Function(int id)? clickContainer,
    TResult Function(int radius)? switchRadius,
    required TResult orElse(),
  }) {
    if (clickContainer != null) {
      return clickContainer(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClickMaka value) clickMaka,
    required TResult Function(ClickContainer value) clickContainer,
    required TResult Function(SwitchRadius value) switchRadius,
  }) {
    return clickContainer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClickMaka value)? clickMaka,
    TResult? Function(ClickContainer value)? clickContainer,
    TResult? Function(SwitchRadius value)? switchRadius,
  }) {
    return clickContainer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClickMaka value)? clickMaka,
    TResult Function(ClickContainer value)? clickContainer,
    TResult Function(SwitchRadius value)? switchRadius,
    required TResult orElse(),
  }) {
    if (clickContainer != null) {
      return clickContainer(this);
    }
    return orElse();
  }
}

abstract class ClickContainer implements MapUiEvent {
  const factory ClickContainer(final int id) = _$ClickContainerImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$ClickContainerImplCopyWith<_$ClickContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchRadiusImplCopyWith<$Res> {
  factory _$$SwitchRadiusImplCopyWith(
          _$SwitchRadiusImpl value, $Res Function(_$SwitchRadiusImpl) then) =
      __$$SwitchRadiusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int radius});
}

/// @nodoc
class __$$SwitchRadiusImplCopyWithImpl<$Res>
    extends _$MapUiEventCopyWithImpl<$Res, _$SwitchRadiusImpl>
    implements _$$SwitchRadiusImplCopyWith<$Res> {
  __$$SwitchRadiusImplCopyWithImpl(
      _$SwitchRadiusImpl _value, $Res Function(_$SwitchRadiusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radius = null,
  }) {
    return _then(_$SwitchRadiusImpl(
      null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SwitchRadiusImpl with DiagnosticableTreeMixin implements SwitchRadius {
  const _$SwitchRadiusImpl(this.radius);

  @override
  final int radius;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapUiEvent.switchRadius(radius: $radius)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapUiEvent.switchRadius'))
      ..add(DiagnosticsProperty('radius', radius));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchRadiusImpl &&
            (identical(other.radius, radius) || other.radius == radius));
  }

  @override
  int get hashCode => Object.hash(runtimeType, radius);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchRadiusImplCopyWith<_$SwitchRadiusImpl> get copyWith =>
      __$$SwitchRadiusImplCopyWithImpl<_$SwitchRadiusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleStore simpleStore) clickMaka,
    required TResult Function(int id) clickContainer,
    required TResult Function(int radius) switchRadius,
  }) {
    return switchRadius(radius);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleStore simpleStore)? clickMaka,
    TResult? Function(int id)? clickContainer,
    TResult? Function(int radius)? switchRadius,
  }) {
    return switchRadius?.call(radius);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleStore simpleStore)? clickMaka,
    TResult Function(int id)? clickContainer,
    TResult Function(int radius)? switchRadius,
    required TResult orElse(),
  }) {
    if (switchRadius != null) {
      return switchRadius(radius);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClickMaka value) clickMaka,
    required TResult Function(ClickContainer value) clickContainer,
    required TResult Function(SwitchRadius value) switchRadius,
  }) {
    return switchRadius(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClickMaka value)? clickMaka,
    TResult? Function(ClickContainer value)? clickContainer,
    TResult? Function(SwitchRadius value)? switchRadius,
  }) {
    return switchRadius?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClickMaka value)? clickMaka,
    TResult Function(ClickContainer value)? clickContainer,
    TResult Function(SwitchRadius value)? switchRadius,
    required TResult orElse(),
  }) {
    if (switchRadius != null) {
      return switchRadius(this);
    }
    return orElse();
  }
}

abstract class SwitchRadius implements MapUiEvent {
  const factory SwitchRadius(final int radius) = _$SwitchRadiusImpl;

  int get radius;
  @JsonKey(ignore: true)
  _$$SwitchRadiusImplCopyWith<_$SwitchRadiusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

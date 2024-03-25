// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegionSection {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() all,
    required TResult Function(String areaName) lookByRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? all,
    TResult? Function(String areaName)? lookByRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? all,
    TResult Function(String areaName)? lookByRegion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(All value) all,
    required TResult Function(LookByRegion value) lookByRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(All value)? all,
    TResult? Function(LookByRegion value)? lookByRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(All value)? all,
    TResult Function(LookByRegion value)? lookByRegion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionSectionCopyWith<$Res> {
  factory $RegionSectionCopyWith(
          RegionSection value, $Res Function(RegionSection) then) =
      _$RegionSectionCopyWithImpl<$Res, RegionSection>;
}

/// @nodoc
class _$RegionSectionCopyWithImpl<$Res, $Val extends RegionSection>
    implements $RegionSectionCopyWith<$Res> {
  _$RegionSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AllImplCopyWith<$Res> {
  factory _$$AllImplCopyWith(_$AllImpl value, $Res Function(_$AllImpl) then) =
      __$$AllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllImplCopyWithImpl<$Res>
    extends _$RegionSectionCopyWithImpl<$Res, _$AllImpl>
    implements _$$AllImplCopyWith<$Res> {
  __$$AllImplCopyWithImpl(_$AllImpl _value, $Res Function(_$AllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AllImpl with DiagnosticableTreeMixin implements All {
  const _$AllImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegionSection.all()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RegionSection.all'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() all,
    required TResult Function(String areaName) lookByRegion,
  }) {
    return all();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? all,
    TResult? Function(String areaName)? lookByRegion,
  }) {
    return all?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? all,
    TResult Function(String areaName)? lookByRegion,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(All value) all,
    required TResult Function(LookByRegion value) lookByRegion,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(All value)? all,
    TResult? Function(LookByRegion value)? lookByRegion,
  }) {
    return all?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(All value)? all,
    TResult Function(LookByRegion value)? lookByRegion,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(this);
    }
    return orElse();
  }
}

abstract class All implements RegionSection {
  const factory All() = _$AllImpl;
}

/// @nodoc
abstract class _$$LookByRegionImplCopyWith<$Res> {
  factory _$$LookByRegionImplCopyWith(
          _$LookByRegionImpl value, $Res Function(_$LookByRegionImpl) then) =
      __$$LookByRegionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String areaName});
}

/// @nodoc
class __$$LookByRegionImplCopyWithImpl<$Res>
    extends _$RegionSectionCopyWithImpl<$Res, _$LookByRegionImpl>
    implements _$$LookByRegionImplCopyWith<$Res> {
  __$$LookByRegionImplCopyWithImpl(
      _$LookByRegionImpl _value, $Res Function(_$LookByRegionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaName = null,
  }) {
    return _then(_$LookByRegionImpl(
      null == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LookByRegionImpl with DiagnosticableTreeMixin implements LookByRegion {
  const _$LookByRegionImpl(this.areaName);

  @override
  final String areaName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegionSection.lookByRegion(areaName: $areaName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegionSection.lookByRegion'))
      ..add(DiagnosticsProperty('areaName', areaName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LookByRegionImpl &&
            (identical(other.areaName, areaName) ||
                other.areaName == areaName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, areaName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LookByRegionImplCopyWith<_$LookByRegionImpl> get copyWith =>
      __$$LookByRegionImplCopyWithImpl<_$LookByRegionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() all,
    required TResult Function(String areaName) lookByRegion,
  }) {
    return lookByRegion(areaName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? all,
    TResult? Function(String areaName)? lookByRegion,
  }) {
    return lookByRegion?.call(areaName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? all,
    TResult Function(String areaName)? lookByRegion,
    required TResult orElse(),
  }) {
    if (lookByRegion != null) {
      return lookByRegion(areaName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(All value) all,
    required TResult Function(LookByRegion value) lookByRegion,
  }) {
    return lookByRegion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(All value)? all,
    TResult? Function(LookByRegion value)? lookByRegion,
  }) {
    return lookByRegion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(All value)? all,
    TResult Function(LookByRegion value)? lookByRegion,
    required TResult orElse(),
  }) {
    if (lookByRegion != null) {
      return lookByRegion(this);
    }
    return orElse();
  }
}

abstract class LookByRegion implements RegionSection {
  const factory LookByRegion(final String areaName) = _$LookByRegionImpl;

  String get areaName;
  @JsonKey(ignore: true)
  _$$LookByRegionImplCopyWith<_$LookByRegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

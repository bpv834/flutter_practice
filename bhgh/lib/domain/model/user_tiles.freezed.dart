// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tiles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTiles _$UserTilesFromJson(Map<String, dynamic> json) {
  return _UserTiles.fromJson(json);
}

/// @nodoc
mixin _$UserTiles {
  String get tileId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get mainHabit => throw _privateConstructorUsedError;
  List<String> get habits => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;

  /// Serializes this UserTiles to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserTiles
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserTilesCopyWith<UserTiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTilesCopyWith<$Res> {
  factory $UserTilesCopyWith(UserTiles value, $Res Function(UserTiles) then) =
      _$UserTilesCopyWithImpl<$Res, UserTiles>;
  @useResult
  $Res call(
      {String tileId,
      String name,
      int age,
      String gender,
      String mainHabit,
      List<String> habits,
      int likeCount});
}

/// @nodoc
class _$UserTilesCopyWithImpl<$Res, $Val extends UserTiles>
    implements $UserTilesCopyWith<$Res> {
  _$UserTilesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserTiles
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileId = null,
    Object? name = null,
    Object? age = null,
    Object? gender = null,
    Object? mainHabit = null,
    Object? habits = null,
    Object? likeCount = null,
  }) {
    return _then(_value.copyWith(
      tileId: null == tileId
          ? _value.tileId
          : tileId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      mainHabit: null == mainHabit
          ? _value.mainHabit
          : mainHabit // ignore: cast_nullable_to_non_nullable
              as String,
      habits: null == habits
          ? _value.habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserTilesImplCopyWith<$Res>
    implements $UserTilesCopyWith<$Res> {
  factory _$$UserTilesImplCopyWith(
          _$UserTilesImpl value, $Res Function(_$UserTilesImpl) then) =
      __$$UserTilesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tileId,
      String name,
      int age,
      String gender,
      String mainHabit,
      List<String> habits,
      int likeCount});
}

/// @nodoc
class __$$UserTilesImplCopyWithImpl<$Res>
    extends _$UserTilesCopyWithImpl<$Res, _$UserTilesImpl>
    implements _$$UserTilesImplCopyWith<$Res> {
  __$$UserTilesImplCopyWithImpl(
      _$UserTilesImpl _value, $Res Function(_$UserTilesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserTiles
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileId = null,
    Object? name = null,
    Object? age = null,
    Object? gender = null,
    Object? mainHabit = null,
    Object? habits = null,
    Object? likeCount = null,
  }) {
    return _then(_$UserTilesImpl(
      tileId: null == tileId
          ? _value.tileId
          : tileId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      mainHabit: null == mainHabit
          ? _value.mainHabit
          : mainHabit // ignore: cast_nullable_to_non_nullable
              as String,
      habits: null == habits
          ? _value._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTilesImpl with DiagnosticableTreeMixin implements _UserTiles {
  const _$UserTilesImpl(
      {this.tileId = 'tileId',
      this.name = 'name',
      this.age = 0,
      this.gender = 'gender',
      this.mainHabit = '악습관없음',
      final List<String> habits = const [],
      this.likeCount = 0})
      : _habits = habits;

  factory _$UserTilesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTilesImplFromJson(json);

  @override
  @JsonKey()
  final String tileId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int age;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey()
  final String mainHabit;
  final List<String> _habits;
  @override
  @JsonKey()
  List<String> get habits {
    if (_habits is EqualUnmodifiableListView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  @override
  @JsonKey()
  final int likeCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserTiles(tileId: $tileId, name: $name, age: $age, gender: $gender, mainHabit: $mainHabit, habits: $habits, likeCount: $likeCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserTiles'))
      ..add(DiagnosticsProperty('tileId', tileId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('mainHabit', mainHabit))
      ..add(DiagnosticsProperty('habits', habits))
      ..add(DiagnosticsProperty('likeCount', likeCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTilesImpl &&
            (identical(other.tileId, tileId) || other.tileId == tileId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.mainHabit, mainHabit) ||
                other.mainHabit == mainHabit) &&
            const DeepCollectionEquality().equals(other._habits, _habits) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tileId, name, age, gender,
      mainHabit, const DeepCollectionEquality().hash(_habits), likeCount);

  /// Create a copy of UserTiles
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTilesImplCopyWith<_$UserTilesImpl> get copyWith =>
      __$$UserTilesImplCopyWithImpl<_$UserTilesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTilesImplToJson(
      this,
    );
  }
}

abstract class _UserTiles implements UserTiles {
  const factory _UserTiles(
      {final String tileId,
      final String name,
      final int age,
      final String gender,
      final String mainHabit,
      final List<String> habits,
      final int likeCount}) = _$UserTilesImpl;

  factory _UserTiles.fromJson(Map<String, dynamic> json) =
      _$UserTilesImpl.fromJson;

  @override
  String get tileId;
  @override
  String get name;
  @override
  int get age;
  @override
  String get gender;
  @override
  String get mainHabit;
  @override
  List<String> get habits;
  @override
  int get likeCount;

  /// Create a copy of UserTiles
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserTilesImplCopyWith<_$UserTilesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

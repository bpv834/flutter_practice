// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get rrn => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get mainHabit => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  List<String> get habits => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String email,
      String name,
      String rrn,
      String gender,
      String mainHabit,
      int age,
      List<String> habits});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? rrn = null,
    Object? gender = null,
    Object? mainHabit = null,
    Object? age = null,
    Object? habits = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rrn: null == rrn
          ? _value.rrn
          : rrn // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      mainHabit: null == mainHabit
          ? _value.mainHabit
          : mainHabit // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      habits: null == habits
          ? _value.habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String name,
      String rrn,
      String gender,
      String mainHabit,
      int age,
      List<String> habits});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? rrn = null,
    Object? gender = null,
    Object? mainHabit = null,
    Object? age = null,
    Object? habits = null,
  }) {
    return _then(_$UserImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rrn: null == rrn
          ? _value.rrn
          : rrn // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      mainHabit: null == mainHabit
          ? _value.mainHabit
          : mainHabit // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      habits: null == habits
          ? _value._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl with DiagnosticableTreeMixin implements _User {
  const _$UserImpl(
      {this.email = 'email',
      this.name = 'name',
      this.rrn = 'rrn',
      this.gender = 'gender',
      this.mainHabit = 'mainHabit',
      this.age = 0,
      final List<String> habits = const []})
      : _habits = habits;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String rrn;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey()
  final String mainHabit;
  @override
  @JsonKey()
  final int age;
  final List<String> _habits;
  @override
  @JsonKey()
  List<String> get habits {
    if (_habits is EqualUnmodifiableListView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(email: $email, name: $name, rrn: $rrn, gender: $gender, mainHabit: $mainHabit, age: $age, habits: $habits)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('rrn', rrn))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('mainHabit', mainHabit))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('habits', habits));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rrn, rrn) || other.rrn == rrn) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.mainHabit, mainHabit) ||
                other.mainHabit == mainHabit) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality().equals(other._habits, _habits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, name, rrn, gender,
      mainHabit, age, const DeepCollectionEquality().hash(_habits));

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String email,
      final String name,
      final String rrn,
      final String gender,
      final String mainHabit,
      final int age,
      final List<String> habits}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get email;
  @override
  String get name;
  @override
  String get rrn;
  @override
  String get gender;
  @override
  String get mainHabit;
  @override
  int get age;
  @override
  List<String> get habits;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

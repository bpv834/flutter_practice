// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_inform_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputInformState _$InputInformStateFromJson(Map<String, dynamic> json) {
  return _InputInformState.fromJson(json);
}

/// @nodoc
mixin _$InputInformState {
  int? get id => throw _privateConstructorUsedError;
  String? get nickName => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputInformStateCopyWith<InputInformState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputInformStateCopyWith<$Res> {
  factory $InputInformStateCopyWith(
          InputInformState value, $Res Function(InputInformState) then) =
      _$InputInformStateCopyWithImpl<$Res, InputInformState>;
  @useResult
  $Res call({int? id, String? nickName, int? age, String? category});
}

/// @nodoc
class _$InputInformStateCopyWithImpl<$Res, $Val extends InputInformState>
    implements $InputInformStateCopyWith<$Res> {
  _$InputInformStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nickName = freezed,
    Object? age = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputInformStateImplCopyWith<$Res>
    implements $InputInformStateCopyWith<$Res> {
  factory _$$InputInformStateImplCopyWith(_$InputInformStateImpl value,
          $Res Function(_$InputInformStateImpl) then) =
      __$$InputInformStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? nickName, int? age, String? category});
}

/// @nodoc
class __$$InputInformStateImplCopyWithImpl<$Res>
    extends _$InputInformStateCopyWithImpl<$Res, _$InputInformStateImpl>
    implements _$$InputInformStateImplCopyWith<$Res> {
  __$$InputInformStateImplCopyWithImpl(_$InputInformStateImpl _value,
      $Res Function(_$InputInformStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nickName = freezed,
    Object? age = freezed,
    Object? category = freezed,
  }) {
    return _then(_$InputInformStateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputInformStateImpl
    with DiagnosticableTreeMixin
    implements _InputInformState {
  _$InputInformStateImpl(
      {required this.id,
      required this.nickName,
      required this.age,
      required this.category});

  factory _$InputInformStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputInformStateImplFromJson(json);

  @override
  final int? id;
  @override
  final String? nickName;
  @override
  final int? age;
  @override
  final String? category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputInformState(id: $id, nickName: $nickName, age: $age, category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InputInformState'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nickName', nickName))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputInformStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nickName, age, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputInformStateImplCopyWith<_$InputInformStateImpl> get copyWith =>
      __$$InputInformStateImplCopyWithImpl<_$InputInformStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputInformStateImplToJson(
      this,
    );
  }
}

abstract class _InputInformState implements InputInformState {
  factory _InputInformState(
      {required final int? id,
      required final String? nickName,
      required final int? age,
      required final String? category}) = _$InputInformStateImpl;

  factory _InputInformState.fromJson(Map<String, dynamic> json) =
      _$InputInformStateImpl.fromJson;

  @override
  int? get id;
  @override
  String? get nickName;
  @override
  int? get age;
  @override
  String? get category;
  @override
  @JsonKey(ignore: true)
  _$$InputInformStateImplCopyWith<_$InputInformStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

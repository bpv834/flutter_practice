// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intra_day_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntraDayInfo _$IntraDayInfoFromJson(Map<String, dynamic> json) {
  return _IntraDayInfo.fromJson(json);
}

/// @nodoc
mixin _$IntraDayInfo {
  DateTime get data => throw _privateConstructorUsedError;
  double get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntraDayInfoCopyWith<IntraDayInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntraDayInfoCopyWith<$Res> {
  factory $IntraDayInfoCopyWith(
          IntraDayInfo value, $Res Function(IntraDayInfo) then) =
      _$IntraDayInfoCopyWithImpl<$Res, IntraDayInfo>;
  @useResult
  $Res call({DateTime data, double close});
}

/// @nodoc
class _$IntraDayInfoCopyWithImpl<$Res, $Val extends IntraDayInfo>
    implements $IntraDayInfoCopyWith<$Res> {
  _$IntraDayInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? close = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntraDayInfoImplCopyWith<$Res>
    implements $IntraDayInfoCopyWith<$Res> {
  factory _$$IntraDayInfoImplCopyWith(
          _$IntraDayInfoImpl value, $Res Function(_$IntraDayInfoImpl) then) =
      __$$IntraDayInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime data, double close});
}

/// @nodoc
class __$$IntraDayInfoImplCopyWithImpl<$Res>
    extends _$IntraDayInfoCopyWithImpl<$Res, _$IntraDayInfoImpl>
    implements _$$IntraDayInfoImplCopyWith<$Res> {
  __$$IntraDayInfoImplCopyWithImpl(
      _$IntraDayInfoImpl _value, $Res Function(_$IntraDayInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? close = null,
  }) {
    return _then(_$IntraDayInfoImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntraDayInfoImpl with DiagnosticableTreeMixin implements _IntraDayInfo {
  const _$IntraDayInfoImpl({required this.data, required this.close});

  factory _$IntraDayInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntraDayInfoImplFromJson(json);

  @override
  final DateTime data;
  @override
  final double close;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IntraDayInfo(data: $data, close: $close)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IntraDayInfo'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('close', close));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntraDayInfoImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, close);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntraDayInfoImplCopyWith<_$IntraDayInfoImpl> get copyWith =>
      __$$IntraDayInfoImplCopyWithImpl<_$IntraDayInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntraDayInfoImplToJson(
      this,
    );
  }
}

abstract class _IntraDayInfo implements IntraDayInfo {
  const factory _IntraDayInfo(
      {required final DateTime data,
      required final double close}) = _$IntraDayInfoImpl;

  factory _IntraDayInfo.fromJson(Map<String, dynamic> json) =
      _$IntraDayInfoImpl.fromJson;

  @override
  DateTime get data;
  @override
  double get close;
  @override
  @JsonKey(ignore: true)
  _$$IntraDayInfoImplCopyWith<_$IntraDayInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

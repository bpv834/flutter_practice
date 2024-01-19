// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intra_day_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntraDayInfoDto _$IntraDayInfoDtoFromJson(Map<String, dynamic> json) {
  return _IntraDayInfoDto.fromJson(json);
}

/// @nodoc
mixin _$IntraDayInfoDto {
  String get timeStamp => throw _privateConstructorUsedError;
  double get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntraDayInfoDtoCopyWith<IntraDayInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntraDayInfoDtoCopyWith<$Res> {
  factory $IntraDayInfoDtoCopyWith(
          IntraDayInfoDto value, $Res Function(IntraDayInfoDto) then) =
      _$IntraDayInfoDtoCopyWithImpl<$Res, IntraDayInfoDto>;
  @useResult
  $Res call({String timeStamp, double close});
}

/// @nodoc
class _$IntraDayInfoDtoCopyWithImpl<$Res, $Val extends IntraDayInfoDto>
    implements $IntraDayInfoDtoCopyWith<$Res> {
  _$IntraDayInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeStamp = null,
    Object? close = null,
  }) {
    return _then(_value.copyWith(
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntraDayInfoDtoImplCopyWith<$Res>
    implements $IntraDayInfoDtoCopyWith<$Res> {
  factory _$$IntraDayInfoDtoImplCopyWith(_$IntraDayInfoDtoImpl value,
          $Res Function(_$IntraDayInfoDtoImpl) then) =
      __$$IntraDayInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String timeStamp, double close});
}

/// @nodoc
class __$$IntraDayInfoDtoImplCopyWithImpl<$Res>
    extends _$IntraDayInfoDtoCopyWithImpl<$Res, _$IntraDayInfoDtoImpl>
    implements _$$IntraDayInfoDtoImplCopyWith<$Res> {
  __$$IntraDayInfoDtoImplCopyWithImpl(
      _$IntraDayInfoDtoImpl _value, $Res Function(_$IntraDayInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeStamp = null,
    Object? close = null,
  }) {
    return _then(_$IntraDayInfoDtoImpl(
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntraDayInfoDtoImpl
    with DiagnosticableTreeMixin
    implements _IntraDayInfoDto {
  const _$IntraDayInfoDtoImpl({required this.timeStamp, required this.close});

  factory _$IntraDayInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntraDayInfoDtoImplFromJson(json);

  @override
  final String timeStamp;
  @override
  final double close;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IntraDayInfoDto(timeStamp: $timeStamp, close: $close)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IntraDayInfoDto'))
      ..add(DiagnosticsProperty('timeStamp', timeStamp))
      ..add(DiagnosticsProperty('close', close));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntraDayInfoDtoImpl &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timeStamp, close);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntraDayInfoDtoImplCopyWith<_$IntraDayInfoDtoImpl> get copyWith =>
      __$$IntraDayInfoDtoImplCopyWithImpl<_$IntraDayInfoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntraDayInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _IntraDayInfoDto implements IntraDayInfoDto {
  const factory _IntraDayInfoDto(
      {required final String timeStamp,
      required final double close}) = _$IntraDayInfoDtoImpl;

  factory _IntraDayInfoDto.fromJson(Map<String, dynamic> json) =
      _$IntraDayInfoDtoImpl.fromJson;

  @override
  String get timeStamp;
  @override
  double get close;
  @override
  @JsonKey(ignore: true)
  _$$IntraDayInfoDtoImplCopyWith<_$IntraDayInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

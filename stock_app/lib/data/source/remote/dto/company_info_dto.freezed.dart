// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyInfoDto _$CompanyInfoDtoFromJson(Map<String, dynamic> json) {
  return _CompanyInfoDto.fromJson(json);
}

/// @nodoc
mixin _$CompanyInfoDto {
  @JsonKey(name: 'Symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'Industry')
  String? get industry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyInfoDtoCopyWith<CompanyInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInfoDtoCopyWith<$Res> {
  factory $CompanyInfoDtoCopyWith(
          CompanyInfoDto value, $Res Function(CompanyInfoDto) then) =
      _$CompanyInfoDtoCopyWithImpl<$Res, CompanyInfoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Industry') String? industry});
}

/// @nodoc
class _$CompanyInfoDtoCopyWithImpl<$Res, $Val extends CompanyInfoDto>
    implements $CompanyInfoDtoCopyWith<$Res> {
  _$CompanyInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? industry = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyInfoDtoImplCopyWith<$Res>
    implements $CompanyInfoDtoCopyWith<$Res> {
  factory _$$CompanyInfoDtoImplCopyWith(_$CompanyInfoDtoImpl value,
          $Res Function(_$CompanyInfoDtoImpl) then) =
      __$$CompanyInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Industry') String? industry});
}

/// @nodoc
class __$$CompanyInfoDtoImplCopyWithImpl<$Res>
    extends _$CompanyInfoDtoCopyWithImpl<$Res, _$CompanyInfoDtoImpl>
    implements _$$CompanyInfoDtoImplCopyWith<$Res> {
  __$$CompanyInfoDtoImplCopyWithImpl(
      _$CompanyInfoDtoImpl _value, $Res Function(_$CompanyInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? industry = freezed,
  }) {
    return _then(_$CompanyInfoDtoImpl(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyInfoDtoImpl
    with DiagnosticableTreeMixin
    implements _CompanyInfoDto {
  const _$CompanyInfoDtoImpl(
      {@JsonKey(name: 'Symbol') this.symbol,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Country') this.country,
      @JsonKey(name: 'Industry') this.industry});

  factory _$CompanyInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyInfoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'Symbol')
  final String? symbol;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Country')
  final String? country;
  @override
  @JsonKey(name: 'Industry')
  final String? industry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyInfoDto(symbol: $symbol, description: $description, name: $name, country: $country, industry: $industry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyInfoDto'))
      ..add(DiagnosticsProperty('symbol', symbol))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('industry', industry));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyInfoDtoImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.industry, industry) ||
                other.industry == industry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, description, name, country, industry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyInfoDtoImplCopyWith<_$CompanyInfoDtoImpl> get copyWith =>
      __$$CompanyInfoDtoImplCopyWithImpl<_$CompanyInfoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _CompanyInfoDto implements CompanyInfoDto {
  const factory _CompanyInfoDto(
          {@JsonKey(name: 'Symbol') final String? symbol,
          @JsonKey(name: 'Description') final String? description,
          @JsonKey(name: 'Name') final String? name,
          @JsonKey(name: 'Country') final String? country,
          @JsonKey(name: 'Industry') final String? industry}) =
      _$CompanyInfoDtoImpl;

  factory _CompanyInfoDto.fromJson(Map<String, dynamic> json) =
      _$CompanyInfoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'Symbol')
  String? get symbol;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Country')
  String? get country;
  @override
  @JsonKey(name: 'Industry')
  String? get industry;
  @override
  @JsonKey(ignore: true)
  _$$CompanyInfoDtoImplCopyWith<_$CompanyInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

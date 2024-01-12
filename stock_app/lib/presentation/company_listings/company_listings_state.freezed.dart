// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_listings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyListingsState _$CompanyListingsStateFromJson(Map<String, dynamic> json) {
  return _CompanyListingsState.fromJson(json);
}

/// @nodoc
mixin _$CompanyListingsState {
  List<CompanyListing> get companies => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyListingsStateCopyWith<CompanyListingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyListingsStateCopyWith<$Res> {
  factory $CompanyListingsStateCopyWith(CompanyListingsState value,
          $Res Function(CompanyListingsState) then) =
      _$CompanyListingsStateCopyWithImpl<$Res, CompanyListingsState>;
  @useResult
  $Res call(
      {List<CompanyListing> companies,
      bool isLoading,
      bool isRefreshing,
      String searchQuery});
}

/// @nodoc
class _$CompanyListingsStateCopyWithImpl<$Res,
        $Val extends CompanyListingsState>
    implements $CompanyListingsStateCopyWith<$Res> {
  _$CompanyListingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companies = null,
    Object? isLoading = null,
    Object? isRefreshing = null,
    Object? searchQuery = null,
  }) {
    return _then(_value.copyWith(
      companies: null == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<CompanyListing>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyListingsStateImplCopyWith<$Res>
    implements $CompanyListingsStateCopyWith<$Res> {
  factory _$$CompanyListingsStateImplCopyWith(_$CompanyListingsStateImpl value,
          $Res Function(_$CompanyListingsStateImpl) then) =
      __$$CompanyListingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CompanyListing> companies,
      bool isLoading,
      bool isRefreshing,
      String searchQuery});
}

/// @nodoc
class __$$CompanyListingsStateImplCopyWithImpl<$Res>
    extends _$CompanyListingsStateCopyWithImpl<$Res, _$CompanyListingsStateImpl>
    implements _$$CompanyListingsStateImplCopyWith<$Res> {
  __$$CompanyListingsStateImplCopyWithImpl(_$CompanyListingsStateImpl _value,
      $Res Function(_$CompanyListingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companies = null,
    Object? isLoading = null,
    Object? isRefreshing = null,
    Object? searchQuery = null,
  }) {
    return _then(_$CompanyListingsStateImpl(
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<CompanyListing>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyListingsStateImpl
    with DiagnosticableTreeMixin
    implements _CompanyListingsState {
  const _$CompanyListingsStateImpl(
      {final List<CompanyListing> companies = const [],
      this.isLoading = false,
      this.isRefreshing = false,
      this.searchQuery = ''})
      : _companies = companies;

  factory _$CompanyListingsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyListingsStateImplFromJson(json);

  final List<CompanyListing> _companies;
  @override
  @JsonKey()
  List<CompanyListing> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isRefreshing;
  @override
  @JsonKey()
  final String searchQuery;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyListingsState(companies: $companies, isLoading: $isLoading, isRefreshing: $isRefreshing, searchQuery: $searchQuery)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyListingsState'))
      ..add(DiagnosticsProperty('companies', companies))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isRefreshing', isRefreshing))
      ..add(DiagnosticsProperty('searchQuery', searchQuery));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyListingsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_companies),
      isLoading,
      isRefreshing,
      searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyListingsStateImplCopyWith<_$CompanyListingsStateImpl>
      get copyWith =>
          __$$CompanyListingsStateImplCopyWithImpl<_$CompanyListingsStateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyListingsStateImplToJson(
      this,
    );
  }
}

abstract class _CompanyListingsState implements CompanyListingsState {
  const factory _CompanyListingsState(
      {final List<CompanyListing> companies,
      final bool isLoading,
      final bool isRefreshing,
      final String searchQuery}) = _$CompanyListingsStateImpl;

  factory _CompanyListingsState.fromJson(Map<String, dynamic> json) =
      _$CompanyListingsStateImpl.fromJson;

  @override
  List<CompanyListing> get companies;
  @override
  bool get isLoading;
  @override
  bool get isRefreshing;
  @override
  String get searchQuery;
  @override
  @JsonKey(ignore: true)
  _$$CompanyListingsStateImplCopyWith<_$CompanyListingsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

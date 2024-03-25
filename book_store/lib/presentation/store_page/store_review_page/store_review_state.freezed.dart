// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_review_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreReviewState _$StoreReviewStateFromJson(Map<String, dynamic> json) {
  return _StoreReviewState.fromJson(json);
}

/// @nodoc
mixin _$StoreReviewState {
  List<ReviewResponseInfo> get reviewList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreReviewStateCopyWith<StoreReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreReviewStateCopyWith<$Res> {
  factory $StoreReviewStateCopyWith(
          StoreReviewState value, $Res Function(StoreReviewState) then) =
      _$StoreReviewStateCopyWithImpl<$Res, StoreReviewState>;
  @useResult
  $Res call({List<ReviewResponseInfo> reviewList, bool isLoading});
}

/// @nodoc
class _$StoreReviewStateCopyWithImpl<$Res, $Val extends StoreReviewState>
    implements $StoreReviewStateCopyWith<$Res> {
  _$StoreReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewList = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      reviewList: null == reviewList
          ? _value.reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<ReviewResponseInfo>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreReviewStateImplCopyWith<$Res>
    implements $StoreReviewStateCopyWith<$Res> {
  factory _$$StoreReviewStateImplCopyWith(_$StoreReviewStateImpl value,
          $Res Function(_$StoreReviewStateImpl) then) =
      __$$StoreReviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReviewResponseInfo> reviewList, bool isLoading});
}

/// @nodoc
class __$$StoreReviewStateImplCopyWithImpl<$Res>
    extends _$StoreReviewStateCopyWithImpl<$Res, _$StoreReviewStateImpl>
    implements _$$StoreReviewStateImplCopyWith<$Res> {
  __$$StoreReviewStateImplCopyWithImpl(_$StoreReviewStateImpl _value,
      $Res Function(_$StoreReviewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewList = null,
    Object? isLoading = null,
  }) {
    return _then(_$StoreReviewStateImpl(
      reviewList: null == reviewList
          ? _value._reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<ReviewResponseInfo>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreReviewStateImpl
    with DiagnosticableTreeMixin
    implements _StoreReviewState {
  const _$StoreReviewStateImpl(
      {final List<ReviewResponseInfo> reviewList = const [],
      this.isLoading = true})
      : _reviewList = reviewList;

  factory _$StoreReviewStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreReviewStateImplFromJson(json);

  final List<ReviewResponseInfo> _reviewList;
  @override
  @JsonKey()
  List<ReviewResponseInfo> get reviewList {
    if (_reviewList is EqualUnmodifiableListView) return _reviewList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewList);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoreReviewState(reviewList: $reviewList, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoreReviewState'))
      ..add(DiagnosticsProperty('reviewList', reviewList))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreReviewStateImpl &&
            const DeepCollectionEquality()
                .equals(other._reviewList, _reviewList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reviewList), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreReviewStateImplCopyWith<_$StoreReviewStateImpl> get copyWith =>
      __$$StoreReviewStateImplCopyWithImpl<_$StoreReviewStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreReviewStateImplToJson(
      this,
    );
  }
}

abstract class _StoreReviewState implements StoreReviewState {
  const factory _StoreReviewState(
      {final List<ReviewResponseInfo> reviewList,
      final bool isLoading}) = _$StoreReviewStateImpl;

  factory _StoreReviewState.fromJson(Map<String, dynamic> json) =
      _$StoreReviewStateImpl.fromJson;

  @override
  List<ReviewResponseInfo> get reviewList;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$StoreReviewStateImplCopyWith<_$StoreReviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

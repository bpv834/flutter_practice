// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_response_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewResponseInfo _$ReviewResponseInfoFromJson(Map<String, dynamic> json) {
  return _ReviewResponseInfo.fromJson(json);
}

/// @nodoc
mixin _$ReviewResponseInfo {
  @JsonKey(name: 'id')
  int? get reviewId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get reviewContent => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createDate => throw _privateConstructorUsedError;
  String? get modifiedDate => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickname')
  String? get nickName => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewResponseInfoCopyWith<ReviewResponseInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewResponseInfoCopyWith<$Res> {
  factory $ReviewResponseInfoCopyWith(
          ReviewResponseInfo value, $Res Function(ReviewResponseInfo) then) =
      _$ReviewResponseInfoCopyWithImpl<$Res, ReviewResponseInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? reviewId,
      @JsonKey(name: 'content') String reviewContent,
      String? image,
      String? createDate,
      String? modifiedDate,
      int? userId,
      @JsonKey(name: 'nickname') String? nickName,
      @JsonKey(name: 'profile_image') String? profileImage});
}

/// @nodoc
class _$ReviewResponseInfoCopyWithImpl<$Res, $Val extends ReviewResponseInfo>
    implements $ReviewResponseInfoCopyWith<$Res> {
  _$ReviewResponseInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = freezed,
    Object? reviewContent = null,
    Object? image = freezed,
    Object? createDate = freezed,
    Object? modifiedDate = freezed,
    Object? userId = freezed,
    Object? nickName = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewContent: null == reviewContent
          ? _value.reviewContent
          : reviewContent // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedDate: freezed == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewResponseInfoImplCopyWith<$Res>
    implements $ReviewResponseInfoCopyWith<$Res> {
  factory _$$ReviewResponseInfoImplCopyWith(_$ReviewResponseInfoImpl value,
          $Res Function(_$ReviewResponseInfoImpl) then) =
      __$$ReviewResponseInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? reviewId,
      @JsonKey(name: 'content') String reviewContent,
      String? image,
      String? createDate,
      String? modifiedDate,
      int? userId,
      @JsonKey(name: 'nickname') String? nickName,
      @JsonKey(name: 'profile_image') String? profileImage});
}

/// @nodoc
class __$$ReviewResponseInfoImplCopyWithImpl<$Res>
    extends _$ReviewResponseInfoCopyWithImpl<$Res, _$ReviewResponseInfoImpl>
    implements _$$ReviewResponseInfoImplCopyWith<$Res> {
  __$$ReviewResponseInfoImplCopyWithImpl(_$ReviewResponseInfoImpl _value,
      $Res Function(_$ReviewResponseInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = freezed,
    Object? reviewContent = null,
    Object? image = freezed,
    Object? createDate = freezed,
    Object? modifiedDate = freezed,
    Object? userId = freezed,
    Object? nickName = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$ReviewResponseInfoImpl(
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewContent: null == reviewContent
          ? _value.reviewContent
          : reviewContent // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedDate: freezed == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewResponseInfoImpl
    with DiagnosticableTreeMixin
    implements _ReviewResponseInfo {
  const _$ReviewResponseInfoImpl(
      {@JsonKey(name: 'id') this.reviewId,
      @JsonKey(name: 'content') required this.reviewContent,
      this.image,
      this.createDate,
      this.modifiedDate,
      this.userId,
      @JsonKey(name: 'nickname') this.nickName,
      @JsonKey(name: 'profile_image') this.profileImage});

  factory _$ReviewResponseInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewResponseInfoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? reviewId;
  @override
  @JsonKey(name: 'content')
  final String reviewContent;
  @override
  final String? image;
  @override
  final String? createDate;
  @override
  final String? modifiedDate;
  @override
  final int? userId;
  @override
  @JsonKey(name: 'nickname')
  final String? nickName;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewResponseInfo(reviewId: $reviewId, reviewContent: $reviewContent, image: $image, createDate: $createDate, modifiedDate: $modifiedDate, userId: $userId, nickName: $nickName, profileImage: $profileImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewResponseInfo'))
      ..add(DiagnosticsProperty('reviewId', reviewId))
      ..add(DiagnosticsProperty('reviewContent', reviewContent))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('createDate', createDate))
      ..add(DiagnosticsProperty('modifiedDate', modifiedDate))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('nickName', nickName))
      ..add(DiagnosticsProperty('profileImage', profileImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewResponseInfoImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.reviewContent, reviewContent) ||
                other.reviewContent == reviewContent) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.modifiedDate, modifiedDate) ||
                other.modifiedDate == modifiedDate) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reviewId, reviewContent, image,
      createDate, modifiedDate, userId, nickName, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewResponseInfoImplCopyWith<_$ReviewResponseInfoImpl> get copyWith =>
      __$$ReviewResponseInfoImplCopyWithImpl<_$ReviewResponseInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewResponseInfoImplToJson(
      this,
    );
  }
}

abstract class _ReviewResponseInfo implements ReviewResponseInfo {
  const factory _ReviewResponseInfo(
          {@JsonKey(name: 'id') final int? reviewId,
          @JsonKey(name: 'content') required final String reviewContent,
          final String? image,
          final String? createDate,
          final String? modifiedDate,
          final int? userId,
          @JsonKey(name: 'nickname') final String? nickName,
          @JsonKey(name: 'profile_image') final String? profileImage}) =
      _$ReviewResponseInfoImpl;

  factory _ReviewResponseInfo.fromJson(Map<String, dynamic> json) =
      _$ReviewResponseInfoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get reviewId;
  @override
  @JsonKey(name: 'content')
  String get reviewContent;
  @override
  String? get image;
  @override
  String? get createDate;
  @override
  String? get modifiedDate;
  @override
  int? get userId;
  @override
  @JsonKey(name: 'nickname')
  String? get nickName;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$ReviewResponseInfoImplCopyWith<_$ReviewResponseInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

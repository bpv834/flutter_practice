// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogInfo _$BlogInfoFromJson(Map<String, dynamic> json) {
  return _BlogInfo.fromJson(json);
}

/// @nodoc
mixin _$BlogInfo {
  int? get blogId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get blogTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get blogContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get blogLink => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get blogName => throw _privateConstructorUsedError;
  String? get blogDate => throw _privateConstructorUsedError;
  int? get storeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogInfoCopyWith<BlogInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogInfoCopyWith<$Res> {
  factory $BlogInfoCopyWith(BlogInfo value, $Res Function(BlogInfo) then) =
      _$BlogInfoCopyWithImpl<$Res, BlogInfo>;
  @useResult
  $Res call(
      {int? blogId,
      @JsonKey(name: 'title') String? blogTitle,
      @JsonKey(name: 'content') String? blogContent,
      @JsonKey(name: 'link') String? blogLink,
      String? author,
      @JsonKey(name: 'name') String? blogName,
      String? blogDate,
      int? storeId});
}

/// @nodoc
class _$BlogInfoCopyWithImpl<$Res, $Val extends BlogInfo>
    implements $BlogInfoCopyWith<$Res> {
  _$BlogInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogId = freezed,
    Object? blogTitle = freezed,
    Object? blogContent = freezed,
    Object? blogLink = freezed,
    Object? author = freezed,
    Object? blogName = freezed,
    Object? blogDate = freezed,
    Object? storeId = freezed,
  }) {
    return _then(_value.copyWith(
      blogId: freezed == blogId
          ? _value.blogId
          : blogId // ignore: cast_nullable_to_non_nullable
              as int?,
      blogTitle: freezed == blogTitle
          ? _value.blogTitle
          : blogTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      blogContent: freezed == blogContent
          ? _value.blogContent
          : blogContent // ignore: cast_nullable_to_non_nullable
              as String?,
      blogLink: freezed == blogLink
          ? _value.blogLink
          : blogLink // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      blogName: freezed == blogName
          ? _value.blogName
          : blogName // ignore: cast_nullable_to_non_nullable
              as String?,
      blogDate: freezed == blogDate
          ? _value.blogDate
          : blogDate // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogInfoImplCopyWith<$Res>
    implements $BlogInfoCopyWith<$Res> {
  factory _$$BlogInfoImplCopyWith(
          _$BlogInfoImpl value, $Res Function(_$BlogInfoImpl) then) =
      __$$BlogInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? blogId,
      @JsonKey(name: 'title') String? blogTitle,
      @JsonKey(name: 'content') String? blogContent,
      @JsonKey(name: 'link') String? blogLink,
      String? author,
      @JsonKey(name: 'name') String? blogName,
      String? blogDate,
      int? storeId});
}

/// @nodoc
class __$$BlogInfoImplCopyWithImpl<$Res>
    extends _$BlogInfoCopyWithImpl<$Res, _$BlogInfoImpl>
    implements _$$BlogInfoImplCopyWith<$Res> {
  __$$BlogInfoImplCopyWithImpl(
      _$BlogInfoImpl _value, $Res Function(_$BlogInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogId = freezed,
    Object? blogTitle = freezed,
    Object? blogContent = freezed,
    Object? blogLink = freezed,
    Object? author = freezed,
    Object? blogName = freezed,
    Object? blogDate = freezed,
    Object? storeId = freezed,
  }) {
    return _then(_$BlogInfoImpl(
      blogId: freezed == blogId
          ? _value.blogId
          : blogId // ignore: cast_nullable_to_non_nullable
              as int?,
      blogTitle: freezed == blogTitle
          ? _value.blogTitle
          : blogTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      blogContent: freezed == blogContent
          ? _value.blogContent
          : blogContent // ignore: cast_nullable_to_non_nullable
              as String?,
      blogLink: freezed == blogLink
          ? _value.blogLink
          : blogLink // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      blogName: freezed == blogName
          ? _value.blogName
          : blogName // ignore: cast_nullable_to_non_nullable
              as String?,
      blogDate: freezed == blogDate
          ? _value.blogDate
          : blogDate // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogInfoImpl with DiagnosticableTreeMixin implements _BlogInfo {
  const _$BlogInfoImpl(
      {this.blogId,
      @JsonKey(name: 'title') required this.blogTitle,
      @JsonKey(name: 'content') required this.blogContent,
      @JsonKey(name: 'link') required this.blogLink,
      required this.author,
      @JsonKey(name: 'name') required this.blogName,
      required this.blogDate,
      this.storeId});

  factory _$BlogInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogInfoImplFromJson(json);

  @override
  final int? blogId;
  @override
  @JsonKey(name: 'title')
  final String? blogTitle;
  @override
  @JsonKey(name: 'content')
  final String? blogContent;
  @override
  @JsonKey(name: 'link')
  final String? blogLink;
  @override
  final String? author;
  @override
  @JsonKey(name: 'name')
  final String? blogName;
  @override
  final String? blogDate;
  @override
  final int? storeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlogInfo(blogId: $blogId, blogTitle: $blogTitle, blogContent: $blogContent, blogLink: $blogLink, author: $author, blogName: $blogName, blogDate: $blogDate, storeId: $storeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlogInfo'))
      ..add(DiagnosticsProperty('blogId', blogId))
      ..add(DiagnosticsProperty('blogTitle', blogTitle))
      ..add(DiagnosticsProperty('blogContent', blogContent))
      ..add(DiagnosticsProperty('blogLink', blogLink))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('blogName', blogName))
      ..add(DiagnosticsProperty('blogDate', blogDate))
      ..add(DiagnosticsProperty('storeId', storeId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogInfoImpl &&
            (identical(other.blogId, blogId) || other.blogId == blogId) &&
            (identical(other.blogTitle, blogTitle) ||
                other.blogTitle == blogTitle) &&
            (identical(other.blogContent, blogContent) ||
                other.blogContent == blogContent) &&
            (identical(other.blogLink, blogLink) ||
                other.blogLink == blogLink) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.blogName, blogName) ||
                other.blogName == blogName) &&
            (identical(other.blogDate, blogDate) ||
                other.blogDate == blogDate) &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, blogId, blogTitle, blogContent,
      blogLink, author, blogName, blogDate, storeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogInfoImplCopyWith<_$BlogInfoImpl> get copyWith =>
      __$$BlogInfoImplCopyWithImpl<_$BlogInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogInfoImplToJson(
      this,
    );
  }
}

abstract class _BlogInfo implements BlogInfo {
  const factory _BlogInfo(
      {final int? blogId,
      @JsonKey(name: 'title') required final String? blogTitle,
      @JsonKey(name: 'content') required final String? blogContent,
      @JsonKey(name: 'link') required final String? blogLink,
      required final String? author,
      @JsonKey(name: 'name') required final String? blogName,
      required final String? blogDate,
      final int? storeId}) = _$BlogInfoImpl;

  factory _BlogInfo.fromJson(Map<String, dynamic> json) =
      _$BlogInfoImpl.fromJson;

  @override
  int? get blogId;
  @override
  @JsonKey(name: 'title')
  String? get blogTitle;
  @override
  @JsonKey(name: 'content')
  String? get blogContent;
  @override
  @JsonKey(name: 'link')
  String? get blogLink;
  @override
  String? get author;
  @override
  @JsonKey(name: 'name')
  String? get blogName;
  @override
  String? get blogDate;
  @override
  int? get storeId;
  @override
  @JsonKey(ignore: true)
  _$$BlogInfoImplCopyWith<_$BlogInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

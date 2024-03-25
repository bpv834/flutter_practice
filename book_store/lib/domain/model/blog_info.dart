import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'blog_info.freezed.dart';

part 'blog_info.g.dart';

@freezed
class BlogInfo with _$BlogInfo {
  const factory BlogInfo({
    int? blogId,
    @JsonKey(name :'title') required String? blogTitle,
    @JsonKey(name :'content')required String? blogContent,
    @JsonKey(name :'link') required String? blogLink,
    required String? author,
    @JsonKey(name :'name')required String? blogName,
    required String? blogDate,
    int? storeId,

  }) = _BlogInfo;

  factory BlogInfo.fromJson(Map<String, Object?> json) => _$BlogInfoFromJson(json);
}
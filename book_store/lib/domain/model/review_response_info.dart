import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'review_response_info.freezed.dart';

part 'review_response_info.g.dart';

@freezed
class ReviewResponseInfo with _$ReviewResponseInfo {
  const factory ReviewResponseInfo({
    @JsonKey(name: 'id') int? reviewId,
    @JsonKey(name: 'content')required String reviewContent,
    String? image,
    String? createDate,
    String? modifiedDate,
    int? userId,
    @JsonKey(name: 'nickname')String? nickName,
    @JsonKey(name: 'profile_image')String? profileImage
  }) = _ReviewResponseInfo;

  factory ReviewResponseInfo.fromJson(Map<String, Object?> json) => _$ReviewResponseInfoFromJson(json);
}
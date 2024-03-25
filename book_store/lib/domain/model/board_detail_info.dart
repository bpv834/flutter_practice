import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'board_detail_info.freezed.dart';

part 'board_detail_info.g.dart';

@freezed
class BoardDetailInfo with _$BoardDetailInfo {
  const factory BoardDetailInfo({
    @JsonKey(name: 'id') required int? boardId,
    @JsonKey(name: 'title') required String? boardTitle,
    @JsonKey(name: 'content') required String? boardContent,
    @JsonKey(name: 'image') String? boardImage,
    required int? likeCount,
    required String? createdDate,
    required String? modifiedDate,
    required int? replyCount,
    required int? userId,
    @JsonKey(name: 'nickname')required String? writer,
    @Default(false)required bool isLike,
    @JsonKey(name: 'profile_image') required String? writerProfileImage
  }) = _BoardDetailInfo;

  factory BoardDetailInfo.fromJson(Map<String, Object?> json) => _$BoardDetailInfoFromJson(json);
}
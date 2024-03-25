import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'board_info.freezed.dart';

part 'board_info.g.dart';

@freezed
class BoardInfo with _$BoardInfo {
  const factory BoardInfo({
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
  }) = _BoardInfo;

  factory BoardInfo.fromJson(Map<String, Object?> json) => _$BoardInfoFromJson(json);
}
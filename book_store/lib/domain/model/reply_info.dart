import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'reply_info.freezed.dart';

part 'reply_info.g.dart';

@freezed
class ReplyInfo with _$ReplyInfo {
  const factory ReplyInfo({
    @JsonKey(name: 'id') int? replyId,
    @JsonKey(name: 'content') required String replyContent,
    String? createdDate,
    String? modifiedDate,
    required int boardId,
    required int userId,
  }) = _ReplyInfo;

  factory ReplyInfo.fromJson(Map<String, Object?> json) =>
      _$ReplyInfoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'board_request_info.freezed.dart';

part 'board_request_info.g.dart';

@freezed
class BoardRequestInfo with _$BoardRequestInfo {
  const factory BoardRequestInfo({
     required String title,
     required String content,
     required String? image,
     required int likeCount,
     required int replyCount,
     required int userId,
  }) = _BoardRequestInfo;
  
  factory BoardRequestInfo.fromJson(Map<String, Object?> json) => _$BoardRequestInfoFromJson(json); 
}
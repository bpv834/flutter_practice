import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'best_board_info.freezed.dart';

part 'best_board_info.g.dart';

@freezed
class BestBoardInfo with _$BestBoardInfo {
  const factory BestBoardInfo({
    required int id,
    required String title,
    required String content,
    required int likeCount,
    required int replyCount,
    required String nickname,
  }) = _BestBoardInfo;
  
  factory BestBoardInfo.fromJson(Map<String, Object?> json) => _$BestBoardInfoFromJson(json); 
}
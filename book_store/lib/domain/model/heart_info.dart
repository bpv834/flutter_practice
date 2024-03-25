import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'heart_info.freezed.dart';

part 'heart_info.g.dart';

@freezed
class HeartInfo with _$HeartInfo {
  const factory HeartInfo({
    int? userId,
    int? boardId,
  }) = _HeartInfo;

  factory HeartInfo.fromJson(Map<String, Object?> json) => _$HeartInfoFromJson(json);
}
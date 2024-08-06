import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_tiles.freezed.dart';

part 'user_tiles.g.dart';

@freezed
class UserTiles with _$UserTiles {
  const factory UserTiles({
    @Default('tileId') String tileId,
    @Default('name') String name,
    @Default(0) int age,
    @Default('gender') String gender,
    @Default('악습관없음') String mainHabit,
    @Default([]) List<String> habits,
    @Default(0) int likeCount,
  }) = _UserTiles;

  factory UserTiles.fromJson(Map<String, Object?> json) =>
      _$UserTilesFromJson(json);
}

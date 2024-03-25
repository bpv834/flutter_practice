import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../domain/model/board_info.dart';

part 'board_state.freezed.dart';

part 'board_state.g.dart';

@freezed
class BoardState with _$BoardState {
  const factory BoardState({
    @Default([])List<BoardInfo> boardList,
    @Default(false) bool isLoading,
  }) = _BoardState;

  factory BoardState.fromJson(Map<String, Object?> json) => _$BoardStateFromJson(json);
}
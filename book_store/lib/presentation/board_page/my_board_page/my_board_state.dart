import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../domain/model/board_info.dart';

part 'my_board_state.freezed.dart';

part 'my_board_state.g.dart';

@freezed
class MyBoardState with _$MyBoardState {
  const factory MyBoardState({
    @Default('내가 쓴 게시글') String barName,
    @Default([])List<BoardInfo> boardList,
    @Default(false) bool isLoading,
  }) = _MyBoardState;

  factory MyBoardState.fromJson(Map<String, Object?> json) => _$MyBoardStateFromJson(json);
}
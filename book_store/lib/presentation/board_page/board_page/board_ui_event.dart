import 'package:book_store/domain/model/board_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'board_ui_event.freezed.dart';

@freezed
sealed class BoardUiEvent<T> with _$BoardUiEvent<T> {
  const factory BoardUiEvent.searchBoard(String query, int userId) = SearchBoard;
  const factory BoardUiEvent.clickTile(int boardId ,int userId) = ClickTile;
  const factory BoardUiEvent.deleteBoardById(int boardId,int userId) = DeleteBoardById;


}
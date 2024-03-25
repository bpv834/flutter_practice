import 'package:book_store/domain/repository/board_repository.dart';
import 'package:book_store/presentation/board_page/my_board_page/my_board_state.dart';
import 'package:flutter/material.dart';

import '../../../domain/model/board_info.dart';
class MyBoardViewModel with ChangeNotifier{
  final BoardRepository boardRepository;
  MyBoardViewModel({required this.boardRepository});

  var state = const MyBoardState();

  void setState(value){
    state=value;
    notifyListeners();
  }

  Future searchMyBoardList(String query) async {
    List<BoardInfo> boardList = state.boardList;
    List<BoardInfo> searchedBoards = boardList
        .where((board) =>
    board.boardTitle!.contains(query) ||
        board.boardContent!.contains(query))
        .toList();
    state = state.copyWith(boardList: searchedBoards);
    notifyListeners();
  }

}
import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/data/data_source/delete_api/delete_board.dart';
import 'package:book_store/domain/model/board_detail_info.dart';
import 'package:book_store/domain/model/board_info.dart';
import 'package:book_store/domain/model/reply_info.dart';
import 'package:book_store/presentation/board_page/board_detail_page/board_detail_screen.dart';
import 'package:book_store/presentation/board_page/board_detail_page/board_detail_view_model.dart';
import 'package:book_store/presentation/board_page/board_page/board_ui_event.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../domain/repository/board_repository.dart';
import 'board_state.dart';

class BoardViewModel with ChangeNotifier {
  final BoardRepository boardRepository;
  var _state = const BoardState();
  bool? _isLike;

  void setIsLike(value){
    _isLike = value;
    print('setIsLike');
    notifyListeners();
  }

  bool get isLike => _isLike??false;

  BoardViewModel({required this.boardRepository});

  get state => _state;

  Future getBoardList(int userId) async {
    List<BoardInfo> boards = await boardRepository.getBoardList(userId);
    print('boards: $boards');
    _state = _state.copyWith(boardList: boards);
    print('상태변경완료');
    notifyListeners();
  }

  Future _searchBoardList(String query, int userId) async {
    List<BoardInfo> boardList = await boardRepository.getBoardList(userId);
    List<BoardInfo> searchedBoards = boardList
        .where((board) =>
            board.boardTitle!.contains(query) ||
            board.boardContent!.contains(query))
        .toList();
    _state = _state.copyWith(boardList: searchedBoards);
    notifyListeners();
  }

  Future _deleteBoard(int boardId, int userId) async {
    DeleteBoard deleteBoard = DeleteBoard();
    await deleteBoard.deleteBoard(boardId);
    List<BoardInfo> boardList = await boardRepository.getBoardList(userId);
    _state = _state.copyWith(boardList: boardList);
    notifyListeners();
  }

  Future<BoardDetailInfo> getBoardById(int boardId, int userId) async {
    BoardDetailInfo detailBoard =
        await boardRepository.getBoard(boardId, userId);
    return detailBoard;
  }

  void onEvent(BoardUiEvent event, {required BuildContext? context}) {
    event.when(
      searchBoard: (query, userId) {
        _searchBoardList(query, userId);
      },
      clickTile: (boardId, userId) async {
        final boardDetailViewModel = context!.read<BoardDetailViewModel>();
        BoardDetailInfo detailBoard = await getBoardById(boardId, userId);
        List<ReplyInfo> replyList =
            await boardRepository.getBoardReply(boardId);
        boardDetailViewModel.replyList = replyList;
        notifyListeners();
        bool? isEnter = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BoardDetailScreen(currentBoard: detailBoard),
          ),
        );
        if (isEnter!) {
          print('isEnter@@@');
          List<BoardInfo> updateBoard = await boardRepository.getBoardList(userId);
          print('updateBoard');
          _state = _state.copyWith(boardList: updateBoard);
          notifyListeners();
        }
      },
      deleteBoardById: (int boardId, int userId) {
        _deleteBoard(boardId, userId);
      },
    );
  }
}

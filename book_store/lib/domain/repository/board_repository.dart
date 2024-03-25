import 'package:book_store/domain/model/best_board_info.dart';
import 'package:book_store/domain/model/board_detail_info.dart';
import 'package:book_store/domain/model/board_info.dart';
import 'package:book_store/domain/model/reply_info.dart';

abstract class BoardRepository{
  Future<List<BoardInfo>> getBoardList(int userId);
  Future<List<BoardInfo>> getInterestBoardList(int userId);
  Future<BoardDetailInfo> getBoard(int boardId ,int userId);
  Future<List<ReplyInfo>> getBoardReply(int boarId);
  Future<List<BestBoardInfo>> getBestBoardList();
}
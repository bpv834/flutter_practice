import 'dart:async';

import 'package:book_store/domain/model/heart_info.dart';
import 'package:book_store/domain/repository/user_repository.dart';
import 'package:book_store/presentation/board_page/board_detail_page/board_detail_ui_event.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../data/data_source/post_api/save_reply.dart';
import '../../../data/data_source/post_api/shot_like.dart';
import '../../../domain/model/reply_info.dart';
import '../../../domain/model/user_info.dart';
import '../../../domain/repository/board_repository.dart';

class BoardDetailViewModel with ChangeNotifier {
  final UserRepository userRepository;
  final BoardRepository boardRepository;

  BoardDetailViewModel({required this.userRepository, required this.boardRepository});

  bool get isReplyLoading => _isReplyLoading;

  setIsLoading(bool value) {
    _isReplyLoading = value;
    notifyListeners();
  }

  bool _isLiked = false;
  List<ReplyInfo> replyList = [];
  bool _isReplyLoading=false;

  bool get isLiked => _isLiked;

  Future<UserInfo> getUser(int id) async {
    UserInfo user = await userRepository.getUser(id);
    return user;
  }

  void setIsLiked(bool value) {
    _isLiked = value;
    notifyListeners();
  }

  void onEvent(BoardDetailUiEvent event) {
    event.when(
      likeTap: (heartDto) => _changeLike(heartDto),
      writeReply: (reply, boardId, userId, content) async{
        SaveReply saveReply = SaveReply();
        ReplyInfo replyInfo =
            ReplyInfo(replyContent: content, boardId: boardId, userId: userId);
        await saveReply.saveReply(replyInfo);
        _isReplyLoading=true;
        replyList.clear();
        replyList.addAll(await boardRepository.getBoardReply(boardId));
        _isReplyLoading=false;
        notifyListeners();
      },
    );
  }

  String getFormattedDateAndTime() {
    DateTime now = DateTime.now();
    return DateFormat('dd.MM.yy HH:mm').format(now);
  }

  _changeLike(HeartInfo heartInfo) async {
    ShotLike shotLike = ShotLike();
   bool? isLike =  await shotLike.shotLike(heartInfo);
    _isLiked = isLike!;
    print('_isLiked 값 : $_isLiked');
    notifyListeners();
  }
}

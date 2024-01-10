import 'dart:async';

import 'package:book_store/presentation/board_page/board_detail_page/board_detail_ui_event.dart';
import 'package:flutter/material.dart';

class BoardDetailViewModel with ChangeNotifier {
  bool _isLiked = true;

  bool get isLiked => _isLiked;

  //한번 리슨을 하면 다시 리슨이 불가능하기 때문에 .broadcast생성자를 사용하면 여러번 구독을 할 수 있는 재리슨이 가능한 형태가 됨
  final _eventController = StreamController<BoardDetailUiEvent>.broadcast();

  Stream<BoardDetailUiEvent> get eventStream => _eventController.stream;

  set setIsLiked(bool value) {
    _isLiked = value;
    notifyListeners();
  }

  void onEvent(BoardDetailUiEvent event) {
    event.when(likeTap: _changeLike);
  }

  _changeLike(bool value) {
    _isLiked = !value;
    notifyListeners();
  }
}

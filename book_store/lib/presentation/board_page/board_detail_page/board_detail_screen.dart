import 'package:book_store/domain/model/board_detail_info.dart';
import 'package:book_store/domain/model/user_info.dart';
import 'package:book_store/presentation/board_page/board_detail_page/board_detail_ui_event.dart';
import 'package:book_store/presentation/board_page/board_detail_page/board_detail_view_model.dart';
import 'package:book_store/presentation/board_page/board_detail_page/components/profile_widget.dart';
import 'package:book_store/presentation/board_page/board_detail_page/components/reply_tile.dart';
import 'package:book_store/presentation/board_page/board_page/board_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/customer_info_view_model.dart';
import '../../../domain/model/reply_info.dart';

class BoardDetailScreen extends StatefulWidget {
  const BoardDetailScreen({
    super.key,
    required this.currentBoard,

  });

  final BoardDetailInfo currentBoard;


  @override
  State<BoardDetailScreen> createState() => _BoardDetailScreenState();
}

class _BoardDetailScreenState extends State<BoardDetailScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<BoardDetailViewModel>();
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, true);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('게시판'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  //프로필 사진, 닉, 날짜
                  ProfileWidget(
                      writerImage: widget.currentBoard.writerProfileImage??'', currentBoard: widget.currentBoard),
                  //게시판 내용 텍스트
                  Container(
                    height: customerInfoViewModel.screenHeight / 3,
                    alignment: Alignment.topLeft, // 컨테이너 왼쪽 정렬
                    child: SingleChildScrollView(
                      child: Text(
                        '${widget.currentBoard.boardContent}',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
              // 답글 목록
              viewModel.replyList.isEmpty && viewModel.isReplyLoading
                  ? Container()
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: viewModel.replyList.length,
                      itemBuilder: (context, index) {
                        return ReplyTile(
                          replyInfo: viewModel.replyList[index],
                          replyWriterId: viewModel.replyList[index].userId,
                        );
                      },
                    ),
              SizedBox(height: customerInfoViewModel.screenHeight / 12),
            ],
          ),
        ),
        bottomSheet: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: '텍스트를 입력하세요.',
                  // 힌트 텍스트
                  contentPadding: EdgeInsets.all(12.0),
                  // 텍스트 입력 필드 내부의 여백 설정
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                ReplyInfo replyInfo = ReplyInfo(
                    replyContent: _controller.text,
                    boardId: widget.currentBoard.boardId!,
                    userId: customerInfoViewModel.token);
                viewModel.onEvent(
                  BoardDetailUiEvent.writeReply(
                    replyInfo: replyInfo,
                    boardId: widget.currentBoard.boardId!,
                    userId: customerInfoViewModel.token,
                    content: _controller.text,
                  ),
                );
                _controller.text='';
                FocusScope.of(context).unfocus();
              },
              icon: const Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}

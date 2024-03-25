import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/board_detail_info.dart';
import 'package:book_store/domain/model/board_info.dart';
import 'package:book_store/presentation/board_page/board_page/board_ui_event.dart';
import 'package:book_store/presentation/board_page/board_page/board_view_model.dart';
import 'package:book_store/presentation/board_page/board_page/components/tile_menu_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BoardTile extends StatefulWidget {
  const BoardTile({super.key, required this.board});
  final BoardInfo board;

  @override
  State<BoardTile> createState() => _BoardTileState();
}

class _BoardTileState extends State<BoardTile> {
  late Future<BoardDetailInfo?> _detailBoard;

  @override
  void initState() {
    super.initState();
    final viewModel = context.read<BoardViewModel>();
    _detailBoard = viewModel.getBoardById(
        widget.board.boardId!, context.read<CustomerInfoViewModel>().token);
  }
  //보드가 변할 때마다 상세 정보를 새로 가져오게 되므로 _detailBoard가 적절하게 업데이트됩니다
  @override
  void didUpdateWidget(BoardTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.board != widget.board) {
      //이전 보드와 현재 보드가 다르면 _detailBoard를 다시 초기화 해준다.
      _fetchDetailBoard();
    }
  }

  void _fetchDetailBoard() {
    final viewModel = context.read<BoardViewModel>();
    _detailBoard = viewModel.getBoardById(
      widget.board.boardId!,
      context.read<CustomerInfoViewModel>().token,
    );
  }



  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BoardDetailInfo?>(
        future: _detailBoard,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator(); // or any other loading indicator
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final boardDetail = snapshot.data;
            if (boardDetail == null) {
              return const Text('User information not found.');
            }
            return _tile(context, boardDetail);
          }
        });
  }

  Widget _tile(BuildContext context, BoardDetailInfo detailInfo) {
    final customerInfoViewModel= context.read<CustomerInfoViewModel>();
    final viewModel = context.read<BoardViewModel>();
    return InkWell(
      onTap: () {
        viewModel.onEvent(
            BoardUiEvent.clickTile(
                widget.board.boardId!, customerInfoViewModel.token),
            context: context);
      },
      child: Stack(
        children: [
          //이미지,제목,내용
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.black,
                )),
            child: Row(
              children: [
                //이미지 컨테이너
                widget.board.boardImage != '' && widget.board.boardImage != null
                    ? SizedBox(
                        width: customerInfoViewModel.screenWidth / 4,
                        // 정사각형의 가로 길이
                        height: customerInfoViewModel.screenHeight / 7,
                        // 정사각형의 세로 길이
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl: '${widget.board.boardImage}',
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Container(),
                            fit: BoxFit.cover, // Adjust the fit as needed
                          ),
                        ),
                      )
                    : const SizedBox(),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.board.boardTitle!,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: customerInfoViewModel.screenHeight / 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            widget.board.boardContent!,
                            style: TextStyle(
                              fontSize: customerInfoViewModel.screenHeight / 35,
                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //좋아요버튼
          Positioned(
            bottom: 0,
            right: 0,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    // Implement like functionality here
                  },
                  child: detailInfo.isLike
                      ?  const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 24.0,
                        )
                      :  const Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 24.0,
                        ),
                ),
                const SizedBox(width: 4),
                Text(
                  '${widget.board.likeCount}', // Replace with actual like count
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          detailInfo.userId == customerInfoViewModel.token
              ? TileMenuButton(
                  boardId: widget.board.boardId!,
                  title: widget.board.boardTitle,
                  content: widget.board.boardContent,
                  imagePath: widget.board.boardImage,
                  likeCount: widget.board.likeCount,
                  replyCount: widget.board.replyCount,
                )
              : Container()
        ],
      ),
    );
  }
}

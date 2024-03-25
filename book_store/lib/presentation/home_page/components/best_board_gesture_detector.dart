import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/board_detail_info.dart';
import 'package:book_store/domain/model/board_info.dart';
import 'package:book_store/presentation/board_page/board_detail_page/board_detail_screen.dart';
import 'package:book_store/presentation/home_page/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BestBoardGestureDetector extends StatelessWidget {
  const BestBoardGestureDetector(
      {super.key, required this.index, required this.boardId});

  final int boardId;
  final int index;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final customerViewModel = context.read<CustomerInfoViewModel>();
    return GestureDetector(
      onTap: () async {
        BoardDetailInfo clickedDetailBoard = await viewModel.boardRepository
            .getBoard(boardId, customerViewModel.token);
        bool? isEnter =await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  BoardDetailScreen(currentBoard: clickedDetailBoard)),
        );
        if(isEnter!){
          viewModel.getBestBoardList();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey), // 테두리 추가
          borderRadius: BorderRadius.circular(10), // 둥근 테두리 추가
        ),
        padding: const EdgeInsets.all(10),
        // 안쪽 여백 추가
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              viewModel.bestBoardList[index].title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              viewModel.bestBoardList[index].content,
              maxLines: 2, // 최대 2줄까지 표시
              overflow: TextOverflow.ellipsis, // 넘칠 경우 생략 부호 표시
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.thumb_up),
                Text(
                  '${viewModel.bestBoardList[index].likeCount}',
                ),
                const SizedBox(width: 20),
                const Icon(Icons.comment),
                Text(
                  '${viewModel.bestBoardList[index].replyCount}',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

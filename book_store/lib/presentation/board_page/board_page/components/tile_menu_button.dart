import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/board_page/board_page/board_ui_event.dart';
import 'package:book_store/presentation/board_page/board_page/board_view_model.dart';
import 'package:book_store/presentation/board_page/board_write_page/board_write_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../board_modify_page/board_modify_screen.dart';

class TileMenuButton extends StatelessWidget {
  const TileMenuButton({
    super.key,
    required this.boardId,
    this.title,
    this.content,
    this.imagePath,
    this.likeCount,
    this.replyCount,
  });

  final int boardId;
  final String? title;
  final String? content;
  final String? imagePath;
  final int? likeCount;
  final int? replyCount;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<BoardViewModel>();
    final customerViewModel = context.watch<CustomerInfoViewModel>();
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: PopupMenuButton<String>(
          onSelected: (String result) {
            // Handle menu item selection
            if (result == 'edit') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BoardModifyScreen(
                    boardId: boardId,
                    title: title,
                    content: content,
                    imagePath: imagePath,
                    likeCount: likeCount,
                    replyCount: replyCount,
                  ),
                ),
              );
              // Implement edit functionality
            } else if (result == 'delete') {
              viewModel.onEvent(
                  BoardUiEvent.deleteBoardById(
                      boardId, customerViewModel.token),
                  context: context);
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'edit',
              child: Text('글 수정'),
            ),
            const PopupMenuItem<String>(
              value: 'delete',
              child: Text('글 삭제'),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Colors.black),
          ),
          child: const Icon(Icons.more_vert),
        ),
      ),
    );
  }
}

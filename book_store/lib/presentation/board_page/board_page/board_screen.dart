import 'package:book_store/presentation/board_page/board_page/board_ui_event.dart';
import 'package:book_store/presentation/board_page/board_page/board_view_model.dart';
import 'package:book_store/presentation/board_page/board_page/components/board_tile.dart';
import 'package:book_store/presentation/board_page/board_write_page/board_write_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/customer_info_view_model.dart';
import '../../nav_page/bottom_bar.dart';
import 'board_state.dart';

class BoardScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  BoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final boardViewModel = context.watch<BoardViewModel>();
    final BoardState state = boardViewModel.state;
    final customViewModel = context.read<CustomerInfoViewModel>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BoardWriteScreen()),
                );
              },
              icon: const Icon(Icons.edit))
        ],
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          '게시판',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // 테두리 색상 설정
                      borderRadius: BorderRadius.circular(8.0), // 테두리 둥글기 설정
                    ),
                    child: TextField(
                      onChanged: (query) {
                        boardViewModel.onEvent(
                            BoardUiEvent.searchBoard(
                                query, customViewModel.token),
                            context: null);
                      },
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: '글 제목, 내용',
                        // 힌트 텍스트
                        contentPadding: EdgeInsets.all(12.0),
                        // 텍스트 입력 필드 내부의 여백 설정
                        border: InputBorder.none, // 기본 테두리 제거
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: state.boardList.length,
                itemBuilder: (BuildContext context, int index) {
                  return BoardTile(board: state.boardList[index]);
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

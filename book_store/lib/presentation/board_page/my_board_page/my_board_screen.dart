import 'package:book_store/presentation/board_page/board_detail_page/board_detail_screen.dart';
import 'package:book_store/presentation/board_page/board_page/board_view_model.dart';
import 'package:book_store/presentation/board_page/board_write_page/board_write_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/customer_info_view_model.dart';
import '../../../domain/model/board_info.dart';
import '../../home_page/home_view_model.dart';
import '../../nav_page/bottom_bar.dart';
import '../../nav_page/nav_view_model.dart';
import '../board_page/components/board_tile.dart';
import 'my_board_state.dart';
import 'my_board_view_model.dart';

class MyBoardScreen extends StatefulWidget {
  const MyBoardScreen({super.key});

  @override
  State<MyBoardScreen> createState() => _MyBoardScreenState();
}

class _MyBoardScreenState extends State<MyBoardScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _init(context);
  }

  _init(BuildContext context) async {
    final viewModel = context.read<MyBoardViewModel>();
    final state = viewModel.state;
    print('state: $state');
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MyBoardViewModel>();
    final MyBoardState state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          state.barName,
          style: const TextStyle(
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
                        viewModel.searchMyBoardList(query);
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
          state.isLoading != true
              ? Expanded(
                  child: ListView.builder(
                    itemCount: state.boardList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return BoardTile(board: state.boardList[index]);
                    },
                  ),
                )
              : Container(),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

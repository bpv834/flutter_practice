import 'dart:io';

import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/board_page/board_modify_page/board_modify_view_model.dart';
import 'package:book_store/presentation/board_page/board_page/board_view_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class BoardModifyScreen extends StatefulWidget {
  const BoardModifyScreen(
      {super.key,
      required this.boardId,
      this.title,
      this.content,
      this.imagePath,
      this.likeCount,
      this.replyCount});

  final int boardId;
  final String? title;
  final String? content;
  final String? imagePath;
  final int? likeCount;
  final int? replyCount;

  @override
  State<BoardModifyScreen> createState() => _BoardModifyScreenState();
}

class _BoardModifyScreenState extends State<BoardModifyScreen> {
  late TextEditingController _titleController = TextEditingController();
  late TextEditingController _contentController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    print(widget.title);
    print(widget.content);
    super.initState();
    _titleController = TextEditingController(text: widget.title);
    _contentController = TextEditingController(text: widget.content);
  }

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.watch<CustomerInfoViewModel>();
    final viewModel = context.watch<BoardModifyViewModel>();
    final boardViewModel = context.watch<BoardViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '글쓰기',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: customerInfoViewModel.screenHeight / 25),
        ),
        actions: [
          TextButton(
            onPressed: () async {
              await viewModel.modifyBoard(
                  context,
                  widget.boardId,
                  _titleController.text,
                  _contentController.text,
                  widget.imagePath ?? '',
                  widget.likeCount ?? 0,
                  widget.replyCount ?? 0);
              await boardViewModel.getBoardList(customerInfoViewModel.token);
              viewModel.setImage(XFile(''));
              Navigator.pop(context);
            },
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: customerInfoViewModel.screenHeight / 25),
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {
            viewModel.setImage(XFile(''));
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //제목 컨테이너
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0), // 테두리 둥글기 설정
              ),
              child: TextField(
                maxLines: 1,
                controller: _titleController,
                decoration: const InputDecoration(
                  hintText: '글 제목, 내용',
                  // 힌트 텍스트
                  contentPadding: EdgeInsets.all(12.0),
                  // 텍스트 입력 필드 내부의 여백 설정
                ),
              ),
            ),
            //내용 컨테이너
            SingleChildScrollView(
              child: Container(
                height: customerInfoViewModel.screenHeight / 1.5,
                decoration: const BoxDecoration(),
                child: TextField(
                  maxLines: null, // null로 설정하면 여러 줄 입력 가능
                  controller: _contentController,
                  decoration: const InputDecoration(
                    hintText: '내용을 입력하세요',
                    // 힌트 텍스트
                    contentPadding: EdgeInsets.all(12.0),
                    // 텍스트 입력 필드 내부의 여백 설정
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            //사진 컨테이너
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: customerInfoViewModel.screenWidth / 4,
                      // 정사각형의 가로 길이
                      height: customerInfoViewModel.screenHeight / 6,
                      // 정사각형의 세로 길이
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('${widget.imagePath}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    /*Positioned(
                      bottom: -15, // 아이콘을 아래로 이동
                      right: -15, // 아이콘을 오른쪽으로 이동
                      child: IconButton(
                        onPressed: () {
                          viewModel.setImage(XFile(''));
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ),*/
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      /*bottomSheet: Container(
        color: Colors.grey,
        height: customerInfoViewModel.screenHeight / 10,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                viewModel.getImage(ImageSource.gallery);
              },
              icon: const Icon(Icons.camera),
            ),
          ],
        ),
      ),*/
    );
  }
}

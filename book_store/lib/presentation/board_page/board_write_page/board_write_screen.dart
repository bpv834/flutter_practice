import 'dart:io';

import 'package:book_store/presentation/board_page/board_write_page/board_write_view_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../../core/customer_info_view_model.dart';
import '../board_page/board_view_model.dart';

class BoardWriteScreen extends StatefulWidget {
  const BoardWriteScreen({
    super.key,
    this.boardId,
  });

  final int? boardId;

  @override
  State<BoardWriteScreen> createState() => _BoardWriteScreenState();
}

class _BoardWriteScreenState extends State<BoardWriteScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    final viewModel = context.watch<BoardWriteViewModel>();
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
              await viewModel.saveBoard(
                  context, _contentController.text, _titleController.text);
              await boardViewModel
                  .getBoardList(customerInfoViewModel.token);
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
                height: customerInfoViewModel.screenHeight / 1.88,
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
             viewModel.image.path.isNotEmpty
                ? Row(
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
                                image:
                                    FileImage(File(viewModel.image.path)),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -15, // 아이콘을 아래로 이동
                            right: -15, // 아이콘을 오른쪽으로 이동
                            child: IconButton(
                              onPressed: () {
                                XFile? nullImage;
                                viewModel.setImage(nullImage);
                              },
                              icon: const Icon(Icons.close),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
      bottomSheet: Container(
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
      ),
    );
  }
}

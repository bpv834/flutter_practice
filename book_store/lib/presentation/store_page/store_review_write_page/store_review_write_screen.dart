import 'dart:io';

import 'package:book_store/presentation/store_page/store_review_page/store_review_view_model.dart';
import 'package:book_store/presentation/store_page/store_review_write_page/store_review_write_view_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../../core/customer_info_view_model.dart';

class StoreReviewWriteScreen extends StatefulWidget {
  const StoreReviewWriteScreen({super.key, required this.storeId});
  final int storeId;

  @override
  State<StoreReviewWriteScreen> createState() => _StoreReviewWriteScreenState();
}

class _StoreReviewWriteScreenState extends State<StoreReviewWriteScreen> {
  final TextEditingController _contentController = TextEditingController();
  @override
  void dispose() {
    _contentController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    final viewModel= context.watch<StoreReviewWriteViewModel>();
    final storeReviewViewModel = context.watch<StoreReviewViewModel>();
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
            onPressed: () async{
              await viewModel.saveReview(context, _contentController.text, viewModel.image.path, widget.storeId);
              await storeReviewViewModel.getReviewList(widget.storeId);
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
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //내용 컨테이너
            SingleChildScrollView(
              child: Container(
                height: customerInfoViewModel.screenHeight / 1.64,
                decoration: const BoxDecoration(
                ),
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
            viewModel.image.path !=('') ?Row(
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
                          image: FileImage(File(viewModel.image.path)),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -15, // 아이콘을 아래로 이동
                      right: -15, // 아이콘을 오른쪽으로 이동
                      child: IconButton(
                        onPressed: () {
                          viewModel.setImage(XFile(''));
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ],
                ),
              ],
            ) : Container(),
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

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/customer_info_view_model.dart';
import '../../home_page/home_view_model.dart';
import '../../nav_page/nav_view_model.dart';
class StoreReviewWriteScreen extends StatefulWidget {
  const StoreReviewWriteScreen({super.key});

  @override
  State<StoreReviewWriteScreen> createState() => _StoreReviewWriteScreenState();
}

class _StoreReviewWriteScreenState extends State<StoreReviewWriteScreen> {
  TextEditingController _reviewController = TextEditingController();

  @override
  void dispose() {
    _reviewController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    final homeViewModel = context.read<HomeViewModel>();
    final navViewModel = context.read<NavViewModel>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '리뷰쓰기',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: customerInfoViewModel.screenHeight / 25),
        ),
        actions: [
          TextButton(
            onPressed: () {},
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
          icon: Icon(Icons.close),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //제목 컨테이너
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8.0), // 테두리 둥글기 설정
              ),
              child: TextField(
                maxLines: null,
                controller: _reviewController,
                decoration: InputDecoration(
                  hintText: '후기를 입력해 주세요',
                  // 힌트 텍스트
                  contentPadding: EdgeInsets.all(12.0),
                  // 텍스트 입력 필드 내부의 여백 설정
                ),
              ),
            ),
            //사진 컨테이너
            Container(
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: customerInfoViewModel.screenWidth / 1.5,
                        // 정사각형의 가로 길이
                        height: customerInfoViewModel.screenHeight / 4,
                        // 정사각형의 세로 길이
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey, // 테두리 색상 설정
                            width: 1.0, // 테두리 두께 설정
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://e1.pngegg.com/pngimages/487/453/png-clipart-iu-thumbnail.png')
                            // 이미지 파일의 경로
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -15, // 아이콘을 아래로 이동
                        right: -15, // 아이콘을 오른쪽으로 이동
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.close),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.grey,
        height: customerInfoViewModel.screenHeight / 10,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera),
            ),
          ],
        ),
      ),
    );
  }
}

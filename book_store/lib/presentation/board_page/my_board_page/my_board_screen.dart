import 'package:book_store/presentation/board_page/board_detail_page/board_detail_screen.dart';
import 'package:book_store/presentation/board_page/board_page/board_view_model.dart';
import 'package:book_store/presentation/board_page/board_write_page/board_write_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/customer_info_view_model.dart';
import '../../home_page/home_view_model.dart';
import '../../nav_page/nav_view_model.dart';
import 'my_board_view_model.dart';

class MyBoardScreen extends StatelessWidget {
  MyBoardScreen({super.key});

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    final homeViewModel = context.read<HomeViewModel>();
    final navViewModel = context.read<NavViewModel>();
    final myBoardViewModel=context.read<MyBoardViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Text(
          myBoardViewModel.barName,
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
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: '글 제목, 내용',
                        // 힌트 텍스트
                        contentPadding: EdgeInsets.all(12.0),
                        // 텍스트 입력 필드 내부의 여백 설정
                        border: InputBorder.none, // 기본 테두리 제거
                      ),
                    ),
                  ),
                ),
                TextButton(onPressed: () {}, child: Text('검색'))
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  SingleChildScrollView(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoardDetailScreen()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: Row(
                          children: [
                            Container(
                              width: customerInfoViewModel.screenWidth / 2,
                              // 정사각형의 가로 길이
                              height: customerInfoViewModel.screenHeight / 6,
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
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  Text(
                                    '게시판 제목',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize:
                                      customerInfoViewModel.screenHeight /
                                          25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '게시판 내용',
                                    style: TextStyle(
                                      fontSize:
                                      customerInfoViewModel.screenHeight /
                                          35,
                                    ),
                                    maxLines: 1,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: '게시판',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: '지도',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '나의 정보',
          ),
        ],
        currentIndex: homeViewModel.currentPage,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          // 탭할 때마다 페이지를 전환하도록 설정
          homeViewModel.setCurrentPage = index;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => navViewModel.getPageAtIndex(index),
            ),
          );
        },
      ),
    );
  }
}

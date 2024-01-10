import 'package:book_store/presentation/board_page/board_page/board_view_model.dart';
import 'package:book_store/presentation/board_page/board_page/board_screen.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/customer_info_view_model.dart';
import '../board_page/my_board_page/my_board_screen.dart';
import '../board_page/my_board_page/my_board_view_model.dart';
import '../home_page/home_view_model.dart';
import '../nav_page/nav_view_model.dart';
import '../store_page/store_view_page/store_view_model.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    final homeViewModel = context.read<HomeViewModel>();
    final navViewModel = context.read<NavViewModel>();
    final storeViewModel=context.read<StoreViewModel>();
    final myBoardViewModel=context.read<MyBoardViewModel>();

    TextEditingController _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          '마이페이지',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(4.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        width: customerInfoViewModel.screenWidth / 5,
                        // 정사각형의 가로 길이
                        height: customerInfoViewModel.screenHeight / 10,
                        // 정사각형의 세로 길이
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey, // 테두리 색상 설정
                            width: 1.0, // 테두리 두께 설정
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://e1.pngegg.com/pngimages/487/453/png-clipart-iu-thumbnail.png')
                              // 이미지 파일의 경로
                              ),
                        ),
                      ),
                      SizedBox(width: customerInfoViewModel.screenWidth / 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              storeViewModel.barName='북마크';
                              storeViewModel.regionName='북마크 서점';
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => StoreViewScreen()),
                              );
                            },
                            icon: Icon(Icons.bookmark),
                            iconSize: customerInfoViewModel.screenWidth / 7,
                          ),
                          SizedBox(
                              width: customerInfoViewModel.screenWidth / 25),
                          IconButton(
                            onPressed: () {
                              myBoardViewModel.barName='내가 쓴 게시글';
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyBoardScreen()),
                              );
                            },
                            icon: Icon(Icons.my_library_books),
                            iconSize: customerInfoViewModel.screenWidth / 7,
                          ),
                          SizedBox(
                              width: customerInfoViewModel.screenWidth / 25),
                          IconButton(
                            onPressed: () {
                              myBoardViewModel.barName='내가 관심 있는 글';
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyBoardScreen()),
                              );
                            },
                            icon: Icon(Icons.local_activity),
                            iconSize: customerInfoViewModel.screenWidth / 7,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: '변경할 닉네임',
                              border: OutlineInputBorder(),
                            ),
                            controller: _controller,
                          ),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
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

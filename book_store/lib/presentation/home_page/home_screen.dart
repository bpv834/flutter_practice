import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/home_page/home_view_model.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../nav_page/nav_view_model.dart';
import '../store_page/store_view_page/store_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final homeViewModel = context.read<HomeViewModel>();
    final customViewModel = context.read<CustomerInfoViewModel>();
    final navViewModel = context.read<NavViewModel>();
    final storeViewModel = context.read<StoreViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(children: [
              Row(
                children: [
                  Text(
                    '실시간 인기글',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('인기글1'),
                  Text('인기글2'),
                  SizedBox(height: customViewModel.screenHeight / 10),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '내 주변 서점',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  IconButton(
                    onPressed: () {
                      storeViewModel.barName='내 주변 서점';
                      storeViewModel.regionName='';
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoreViewScreen()),
                      );
                    },
                    icon: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                     /* backgroundImage:
                          NetworkImage(customViewModel.profileImageUrl),*/
                    ),
                    SizedBox(width: 5),
                    Text(
                      '주변서점이름',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('나와의 거리')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                     /* backgroundImage:
                          NetworkImage(customViewModel.profileImageUrl),*/
                    ),
                    SizedBox(width: 5),
                    Text(
                      '주변서점이름',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('나와의 거리')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                    /*  backgroundImage:
                          NetworkImage(customViewModel.profileImageUrl),*/
                    ),
                    SizedBox(width: 5),
                    Text(
                      '주변서점이름',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('나와의 거리')
                  ],
                ),
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: customViewModel.screenHeight / 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        '지역별 서점',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    height: customViewModel.screenHeight / 3,
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    storeViewModel.barName='지역별 서점';
                                    storeViewModel.regionName='모든 지역';
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StoreViewScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Center(child: Text('전체보기')),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    storeViewModel.regionName='서울/경기/인천';
                                    storeViewModel.barName='지역별 서점';
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StoreViewScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Center(child: Text('서울/경기/인천')),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    storeViewModel.regionName='강원';
                                    storeViewModel.barName='지역별 서점';
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StoreViewScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Center(child: Text('강원')),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    storeViewModel.regionName='충청/대전';
                                    storeViewModel.barName='지역별 서점';
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StoreViewScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Center(child: Text('충청/대전')),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    storeViewModel.regionName='경북/대구';
                                    storeViewModel.barName='지역별 서점';
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StoreViewScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Center(child: Text('경북/대구')),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    storeViewModel.regionName='전라/광주';
                                    storeViewModel.barName='지역별 서점';
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StoreViewScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Center(child: Text('전라/광주')),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    storeViewModel.regionName='부산/울산/경남';
                                    storeViewModel.barName='지역별 서점';
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StoreViewScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Center(child: Text('부산/울산/경남')),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    storeViewModel.regionName='제주';
                                    storeViewModel.barName='지역별 서점';
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StoreViewScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Center(child: Text('제주')),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
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

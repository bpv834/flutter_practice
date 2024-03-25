import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home_page/home_view_model.dart';
import 'nav_view_model.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final homeViewModel = context.read<HomeViewModel>();
    final navViewModel = context.read<NavViewModel>();
    return BottomNavigationBar(
      items: const [
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
    );
  }
}

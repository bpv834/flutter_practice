import 'package:book_store/presentation/board_page/board_page/board_view_model.dart';
import 'package:book_store/presentation/nav_page/nav_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/customer_info_view_model.dart';
import '../board_page/board_page/board_screen.dart';
import '../home_page/home_screen.dart';
import '../home_page/home_view_model.dart';
import '../map_page/map_screen.dart';
import '../my_page/my_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    final homeViewModel = context.watch<HomeViewModel>();
    final navViewModel = context.watch<NavViewModel>();
    final boardViewModel = context.watch<BoardViewModel>();
    return Scaffold(
      body: navViewModel.getPageAtIndex(homeViewModel.currentPage),
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
        onTap: (int index) {
          print('시시발발');
          // Update the current page when a navigation item is tapped
          if(index==1) print('@@@');
        },
      ),

    );
  }
}
